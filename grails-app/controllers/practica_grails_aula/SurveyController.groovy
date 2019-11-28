package practica_grails_aula

import grails.converters.JSON
import grails.plugin.springsecurity.annotation.Secured

@Secured('ROLE_ADMIN')
class SurveyController {

    SurveyService surveyService

    def index() { }

    def saveSurvey(Survey survey){
        surveyService.save(survey)
        redirect(action: "surveyList")
    }

    def surveyList(){
        render Survey.getAll() as JSON
    }
}
