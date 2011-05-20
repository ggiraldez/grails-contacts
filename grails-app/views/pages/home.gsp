<!DOCTYPE html>
<html>
    <head>
    	<title>Contact Manager | Home</title>
        <meta name="layout" content="main"/>
        <script>
        dojo.require('contacts.app');
        dojo.ready(function() {
            contacts.app.init();
        });
        </script>
    </head>
    <body>
        <h1 class="span-24">Contact List</h1>

        <table id="contacts-list" class="span-24">
        	<thead>
                <th>First name</th>
                <th>Last name</th>
                <th>Email</th>
                <th>Phone</th>
            </thead>
            <tbody></tbody>
        </table>
    </body>
</html>

