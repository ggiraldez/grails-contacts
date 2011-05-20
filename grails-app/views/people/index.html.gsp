<!DOCTYPE html>
<html>
  <head>
  <title>Contacts list</title>
  <meta name="layout" content="bare"/>
</head>
<body>
  <h1>Contacts</h1>

  <table class="contacts">
    <thead>
      <th>First name</th>
      <th>Last name</th>
      <th>Email</th>
      <th>Phone</th>
    </thead>
    <tbody>
    <g:each in="${people}" var="person">
      <tr>
        <td>${person.firstName}</td>
        <td>${person.lastName}</td>
        <td><g:link action="show" id="${person.id}">${person.email}</g:link></td>
        <td>${person.phone}</td>
      </tr>
    </g:each>
    </tbody>
  </table>

  <div class="actions">
    <g:link action="create">New contact</g:link>
  </div>
</body>
</html>

