package contacts

import grails.converters.JSON

class PeopleController {

    static allowedMethods = [
        index: 'GET', create: 'GET', save: 'POST',
        show: 'GET', edit: 'GET', update: 'PUT', destroy: 'DELETE'
    ]

    def index = { 
        def people = Person.list()
        withFormat {
            html people: people
            json { render people as JSON }
        }
    }

    def create = {
        def person = new Person()
        withFormat {
            html person: person
        }
    }

    def save = {
        def person = new Person(params)
        if (person.save(flush: true)) {
            withFormat {
                html {
                    flash.success = 'Contact created!'
                    redirect action: 'index'
                }
            }
        } else {
            withFormat {
                html {
                    render view: 'create', model: [ person: person ]
                }
            }
        }
    }

    def show = {
        def person = Person.get(params.id)
        if (person) {
            withFormat {
                html {
                    def people = Person.list()
                    render view: 'index', model: [ people: people, person: person ]
                }
            }
        } else {
            render404()
        }
    }

    def edit = {
        def person = Person.get(params.id)
        if (person) {
            withFormat {
                html person: person
            }
        } else {
            render404()
        }
    }
    
    def update = {
        def person = Person.get(params.id)
        if (person) {
            bindData person, params
            if (person.save(flush: true)) {
                withFormat {
                    html {
                        flash.success = 'Contact updated!'
                        redirect action: 'show', id: person.id
                    }
                }
            } else {
                withFormat {
                    html {
                        render view: 'edit', model: [ person: person ]
                    }
                }
            }
        } else {
            render404()
        }
    }
    
    def destroy = {
        def person = Person.get(params.id)
        if (person) {
            person.delete(flush: true)
            withFormat {
                html {
                    flash.notice = 'Contact deleted'
                    redirect action: 'index'
                }
            }
        } else {
            render404()
        }
    }

    private render404() {
        withFormat {
            html {
                render status: 404, text: 'Contact not found'
            }
        }
    }
    
}

