package contacts

import grails.test.*
import grails.converters.JSON


class PeopleControllerTests extends ControllerUnitTestCase {
    protected void setUp() {
        super.setUp()

        def p1 = new Person(firstName: 'John', lastName: 'Doe', 
                            email: 'johndoe@example.com')
        def p2 = new Person(firstName: 'José', lastName: 'Bondiola',
                            email: 'bondiola@example.com')

        mockDomain(Person, [p1, p2])
    }

    protected void tearDown() {
        super.tearDown()
    }

    void testIndexJson() {
        controller.request.format = 'json'
        //
        controller.index()
        //
        assertEquals 200, controller.response.status
        def list = JSON.parse(controller.response.contentAsString)
        assertEquals 2, list.size()
    }

}

