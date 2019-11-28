package practica_grails_aula

import grails.gorm.transactions.Transactional

@Transactional
class SurveyService {

    def serviceMethod() {

    }

    def save(Survey survey){
        survey.save(flush: true, failOnError: true)
    }
}
