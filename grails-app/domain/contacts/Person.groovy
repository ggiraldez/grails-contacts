package contacts

class Person {

    String firstName
    String lastName
    String email
    String phone
    Date birthday

    static constraints = {
        firstName nullable: false, blank: false, maxSize: 30 
        lastName  nullable: false, blank: false, maxSize: 30
        email     nullable: false, blank: false, unique: true, email: true
        phone     nullable: true, maxSize: 20
        birthday  nullable: true, validator: { it < new Date() }
    }

    String toString() {
        "<Person: ${firstName} ${lastName}>"
    }

    static def JsonMarshaller(Person p) {
        def result = [:]
        "id version firstName lastName email phone".split(/\s+/).each { key ->
            result[key] = p[key]
        }
        return result
    }
}

