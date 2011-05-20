<table class="contacts">
  <thead>
    <th>First name</th>
    <th>Last name</th>
    <th>Email</th>
    <th>Phone</th>
  </thead>
  <tbody>
  <g:each in="${people}" var="person">
    <tr data-id="${person.id}" data-link="${createLink(action: 'show', id: person.id)}" class="${current == person.id ? 'current' : ''}">
      <td>${person.firstName}</td>
      <td>${person.lastName}</td>
      <td><g:link action="show" id="${person.id}">${person.email}</g:link></td>
      <td>${person.phone}</td>
    </tr>
  </g:each>
  </tbody>
</table>

