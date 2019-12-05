package practica_grails_aula

class BootStrap {

    def init = { servletContext ->
        def user = User.findOrSaveWhere(username: 'admin', password: 'admin')
        def role = Role.findOrSaveWhere(authority: 'ROLE_ADMIN')
        def roleOne = Role.findOrSaveWhere(authority: 'ROLE_USER')

        def userOne = User.findOrSaveWhere(username: 'user', password: 'user')

        UserRole.findOrSaveWhere(user: user, role: role)
        UserRole.findOrSaveWhere(user: userOne, role: roleOne)
    }
    def destroy = {
    }
}
