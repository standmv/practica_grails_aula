package practica_grails_aula

import grails.converters.JSON
import grails.plugin.springsecurity.annotation.Secured


class SurveyController {

    SurveyService surveyService
    def springSecurityService

    @Secured(['ROLE_ADMIN', 'ROLE_USER'])
    def index() { }

    @Secured(['ROLE_ADMIN', 'ROLE_USER'])
    def saveSurvey(Survey survey){
        def currentUser = (User) springSecurityService.getCurrentUser()
        surveyService.save(survey, currentUser)
        redirect(action: "surveyList")
    }

    @Secured(['ROLE_ADMIN', 'ROLE_USER'])
    def surveyList(){
        render Survey.getAll() as JSON
    }

    @Secured('ROLE_ADMIN')
    def surveyResults(){
        def surveyList = Survey.getAll()
        def questionOneAnswers = [1:0, 2:0, 3:0, 4:0, 5:0]
        def questionTwoAnswers = [1:0, 2:0, 3:0, 4:0, 5:0]
        def questionThreeAnswers = [1:0, 2:0, 3:0, 4:0, 5:0]
        surveyList.each {
            questionOneAnswers[it.answer_one] += 1
            questionTwoAnswers[it.answer_two] += 1
            questionThreeAnswers[it.answer_three] += 1
        }

        ['questionOneAnswers': questionOneAnswers, 'questionTwoAnswers' :questionTwoAnswers, 'questionThreeAnswers':questionThreeAnswers]
    }
}
