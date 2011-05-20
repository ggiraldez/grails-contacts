<!DOCTYPE html>
<html>
  <head>
  <title>Contact</title>
  <meta name="layout" content="bare"/>
</head>
<body>
  <h1>Contact</h1>

  <div class="fields">
    <p>
      First Name: ${person.firstName}
    </p>
    <p>
      Last Name: ${person.lastName}
    </p>
    <p>
      Email: ${person.email}
    </p>
    <p>
      Phone Number: ${person.phone}
    </p>
    <p>
      Birthday: <g:formatDate date="${person.birthday}" formatName="birthday.date.format"/>
    </p>
  </div>

  <div class="actions">
    <g:link action="edit" id="${person.id}">Edit</g:link>
    <g:link id="${person.id}" rel="nofollow" data-method="delete" data-confirm="Are you sure?">Delete</g:link>
    <g:link action="index">Back to list</g:link>
  </div>

</body>
</html>


