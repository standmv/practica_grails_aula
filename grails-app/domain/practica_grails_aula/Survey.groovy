package practica_grails_aula

class Survey {

    Short answer_one
    Short answer_two
    Short answer_three
    String answer_four
    User filledBy

    static constraints = {
        filledBy nullable: true
    }
}
