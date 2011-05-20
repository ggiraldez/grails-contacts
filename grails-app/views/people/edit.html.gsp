<!DOCTYPE html>
<html>
  <head>
  <title>Edit contact</title>
  <meta name="layout" content="bare"/>
</head>
<body>
  <h1>Edit contact</h1>

  <g:render template="/shared/error_messages" bean="${person}" var="object"/>

  <g:form action="update" id="${person.id}" method="put">
    <g:render template="form" bean="${person}" var="person"/>

    <div class="actions">
      <g:submitButton name="update" value="Update"/>
      <g:link action="show" id="${person.id}">Back</g:link>
    </div>
  </g:form>

</body>
</html>

