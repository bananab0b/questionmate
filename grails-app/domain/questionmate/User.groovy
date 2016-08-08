package questionmate

class User {
        UUID id
        String login
        String email
        String password

    static hasMany = [surveys: Survey]

    static constraints = {
        login size: 5..15, blank: false, unique: true
        password size: 5..15, blank: false, password:true
        email email: true, blank: false

    }

    static mapping = {
        id column: User_ID
        id generator: 'uuid'
    }
}
