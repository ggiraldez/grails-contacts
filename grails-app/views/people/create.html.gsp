<!DOCTYPE html>
<html>
  <head>
  <title>New contact</title>
  <meta name="layout" content="bare"/>
</head>
<body>
  <h1>New contact</h1>

  <g:render template="/shared/error_messages" bean="${person}" var="object"/>

  <g:form action="save">
    <g:render template="form" bean="${person}" var="person"/>

    <div class="actions">
      <g:submitButton name="create" value="Create"/>
      <g:link action="index">Back to list</g:link>
    </div>
  </g:form>

</body>
</html>

