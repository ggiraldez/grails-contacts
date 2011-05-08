import grails.test.*

class UrlMappingTests extends GrailsUrlMappingsTestCase {

    static mappings = UrlMappings

    void testPersonsRestMapping() {
        assertForwardUrlMapping '/people', controller: 'people', action: 'index'
        assertForwardUrlMapping '/people/new', controller: 'people', action: 'create'

        // these cannot be tested due to a bug in GrailsUrlMappingsTestCase
        // nevertheless, they work as expected -- GRAILS-3608
        //assertForwardUrlMapping '/people/1', controller: 'people', action: 'show'
        //assertForwardUrlMapping '/people/1/edit', controller: 'people', action: 'edit'
    }

}


