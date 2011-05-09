dojo.provide('contacts.service');

contacts.service = (function() {
    var url = dojoConfig.services.contacts;

    var service = {
        loadContacts: loadContacts,
    };

    return service;

    function loadContacts() {
        return dojo.xhrGet({
            url: url,
            handleAs: 'json',
        }).then(function(data) {
            return data;
        }, function(err) {
            alert('Error retrieving list!');
        });
    }

}());

