<!DOCTYPE html>
<html>
  <head>
  <title>Contacts list</title>
  <meta name="layout" content="bare"/>
  <g:javascript src="bare-people.js"/>
</head>
<body>
  <h1 class="span-24">Contacts</h1>

  <div id="contacts-list" class="${person ? 'span-16' : 'span-24'}">
    <g:render template="list" model="[ people: people, current: person?.id ]"/>
    <div class="actions">
      <g:link action="create">New contact</g:link>
    </div>
  </div>

  <g:if test="${person}">
    <div class="span-8"><div id="contact-detail">
      <div class="close-button">
        <g:link action="index"><img src="${resource(dir:'images', file:'close.png')}"/></g:link>
      </div>
      <g:render template="person" bean="${person}" var="person"/>
      <div class="actions">
        <g:link action="edit" id="${person.id}">Edit</g:link>
        <g:link id="${person.id}" rel="nofollow" data-method="delete" data-confirm="Are you sure?">Delete</g:link>
      </div></div>
    </div>
  </g:if>

</body>
</html>

