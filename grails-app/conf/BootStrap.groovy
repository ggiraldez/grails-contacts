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
        JSON.registerObjectMarshaller(Person) { p ->
            def result = [:]
            ['id', 'version', 'firstName', 'lastName', 'email', 'phone'].each { key ->
                result[key] = p[key]
            }
            return result
        }
    }

    def destroy = {
    }

}

