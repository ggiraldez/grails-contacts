package contacts

import grails.converters.JSON

class PeopleController {

    static allowedMethods = [
        index: 'GET', create: 'GET', save: 'POST',
        show: 'GET', edit: 'GET', update: 'PUT', destroy: 'DELETE'
    ]

    def index = { 
        def people = Person.list()
        render people as JSON
    }

    def create = {
        render "create"
    }

    def save = {
        render "save"
    }

    def show = {
        render "show ${params.id}"
    }

    def edit = {
        render "edit ${params.id}"
    }
    
    def update = {
        render "update ${params.id}"
    }
    
    def destroy = {
        render "destroy ${params.id}"
    }
    
}

