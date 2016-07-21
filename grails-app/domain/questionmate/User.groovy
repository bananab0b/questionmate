package questionmate

class User {
        String login
        String email
        String password

    static constraints = {
        login size: 5..15, blank: false, unique: true
        password size: 5..15, blank: false, password:true
        email email: true, blank: false

    }
}
