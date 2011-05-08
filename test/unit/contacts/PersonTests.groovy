package contacts

import grails.test.*

class PersonTests extends GrailsUnitTestCase {

    def validAttrs = [ firstName: 'John', lastName: 'Doe', email: 'user@example.com' ]

    protected void setUp() {
        super.setUp()
        mockForConstraintsTests(Person)
    }

    protected void tearDown() {
        super.tearDown()
    }

    void testValidationFailsWithInvalidAttributes() {
        def person = new Person()
        assertFalse person.validate()
    }

    void testValidationFailsWithBlankAttributes() {
        def person = new Person(firstName: '', lastName: '', email: '')
        assertFalse person.validate()
    }

    void testValidationPassesWithCorrectAttributes() {
        def person = new Person(validAttrs)
        assertTrue person.validate()
    }

    void testEmailUniqueness() {
        def p1, p2
        p1 = new Person(firstName: 'Joe', lastName: 'Doe', email: 'user@example.com')
        p2 = new Person(firstName: 'Foo', lastName: 'Bar', email: 'user@example.com')

        mockForConstraintsTests(Person, [p1, p2])
        assertFalse p2.validate()
    }

    void testInvalidEmail() {
        def person = new Person(validAttrs)
        person.email = 'foo_at_bar.com'
        assertFalse person.validate()
    }

    void testNameFieldsSize() {
        def person

        person = new Person(validAttrs)
        person.firstName = 'a' * 31
        assertFalse person.validate()

        person = new Person(validAttrs)
        person.lastName = 'a' * 31
        assertFalse person.validate()
    }
    
    void testPhoneFieldSize() {
        def person = new Person(validAttrs)
        person.phone = '9' * 21
        assertFalse person.validate()
    }

    void testBirthdayMustBeBeforeToday() {
        def person = new Person(validAttrs)
        person.birthday = new Date() + 1
        assertFalse person.validate()
    }
}


