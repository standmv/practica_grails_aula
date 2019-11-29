package practica_grails_aula

import grails.converters.JSON
import grails.plugin.springsecurity.annotation.Secured

@Secured('ROLE_ADMIN')
class SurveyController {

    SurveyService surveyService
    def springSecurityService


    def index() { }

    def saveSurvey(Survey survey){
        def currentUser = (User) springSecurityService.getCurrentUser()
        surveyService.save(survey, currentUser)
        redirect(action: "surveyList")
    }

    def surveyList(){
        render Survey.getAll() as JSON
    }
}
