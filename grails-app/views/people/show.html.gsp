<!DOCTYPE html>
<html>
  <head>
  <title>Contact</title>
  <meta name="layout" content="bare"/>
</head>
<body>
  <h1>Contact</h1>

  <g:render template="person" bean="${person}" var="person"/>

  <div class="actions">
    <g:link action="edit" id="${person.id}">Edit</g:link>
    <g:link id="${person.id}" rel="nofollow" data-method="delete" data-confirm="Are you sure?">Delete</g:link>
    <g:link action="index">Back to list</g:link>
  </div>

</body>
</html>


