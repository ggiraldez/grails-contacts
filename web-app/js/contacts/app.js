dojo.provide('contacts.app');

dojo.require('contacts.module');
dojo.require('dojo.string');


contacts.app = {

    init: function() {
        this.startup();
    },

    startup: function() {
        this.initUi();

        contacts.service.loadContacts().then(dojo.hitch(this, 'onContactsLoaded'));
    },

    initUi: function() {
    },

    onContactsLoaded: function(contacts) {
        var tbody = dojo.query('#contacts-list > tbody')[0];
        if (!tbody) {
            alert("Missing contacts list table");
            return;
        }
        var template = "<td>${firstName}</td><td>${lastName}</td>" + 
            "<td>${email}</td><td>${phone}</td>";
        dojo.forEach(contacts, function(contact) {
            var row = dojo.string.substitute(template, contact, function(data) {
                return data || '';
            });
            var tr = dojo.create('tr', { innerHTML: row });
            dojo.attr(tr, 'data-id', contact.id);
            dojo.place(tr, tbody, 'last');
        }, this);
    },

};

