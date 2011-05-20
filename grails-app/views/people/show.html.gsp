<!DOCTYPE html>
<html>
  <head>
  <title>Contact</title>
  <meta name="layout" content="bare"/>
</head>
<body>
  <h1>Contact</h1>

  <div class="person">
    <p>
      <span>First Name:</span> <b>${person.firstName}</b>
    </p>
    <p>
      <span>Last Name:</span> <b>${person.lastName}</b>
    </p>
    <p>
      <span>Email:</span> <b>${person.email}</b>
    </p>
    <p>
      <span>Phone Number:</span> <b>${person.phone}</b>
    </p>
    <p>
      <span>Birthday:</span> <b><g:formatDate date="${person.birthday}" formatName="birthday.date.format"/></b>
    </p>
  </div>

  <div class="actions">
    <g:link action="edit" id="${person.id}">Edit</g:link>
    <g:link id="${person.id}" rel="nofollow" data-method="delete" data-confirm="Are you sure?">Delete</g:link>
    <g:link action="index">Back to list</g:link>
  </div>

</body>
</html>


