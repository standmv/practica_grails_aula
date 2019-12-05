package practica_grails_aula

class Survey {

    int answer_one
    int answer_two
    int answer_three
    String answer_four
    User filledBy

    static constraints = {
        filledBy nullable: true
        answer_four nullable: true
    }
}
