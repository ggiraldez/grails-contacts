class UrlMappings {

	static mappings = {
        "/people"(controller: 'people') { action = [ GET: 'index', POST: 'save' ] }
        "/people/new"(controller: 'people', action: 'create')
        "/people/$id"(controller: 'people') { 
            action = [ GET: 'show', PUT: 'update', DELETE: 'destroy' ] 
        }
        "/people/$id/edit"(controller: 'people', action: 'edit')

		"/"(controller: 'pages', action: 'home')
		"500"(view:'/error')
	}
}
