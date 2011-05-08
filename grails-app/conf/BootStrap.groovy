import grails.util.Environment
import grails.converters.JSON

import contacts.*


class BootStrap {

    def fixtureLoader

    def init = { servletContext ->

        //
        // Fixtures loading
        //
        switch (Environment.current) {
            case Environment.DEVELOPMENT:
            case Environment.TEST:
                fixtureLoader.load('persons')
                break
            case Environment.PRODUCTION:
                break
        }

        //
        // Marshallers registration
        //
        JSON.registerObjectMarshaller(Person, Person.&JsonMarshaller)
    }

    def destroy = {
    }

}

