package practica_grails_aula

class BootStrap {

    def init = { servletContext ->
        def user = User.findOrSaveWhere(username: 'admin', password: 'admin')
        def role = Role.findOrSaveWhere(authority: 'ROLE_ADMIN')

        UserRole.findOrSaveWhere(user: user, role: role)
    }
    def destroy = {
    }
}
