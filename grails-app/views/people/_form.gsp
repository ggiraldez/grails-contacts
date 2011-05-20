<p class="${hasErrors(bean: person, field: 'firstName', 'fieldError')}">
  <label for="firstName">First Name:</label>
  <g:textField name="firstName" value="${person.firstName}" class="title"/>
</p>
<p class="${hasErrors(bean: person, field: 'lastName', 'fieldError')}">
  <label for="lastName">Last Name:</label>
  <g:textField name="lastName" value="${person.lastName}" class="title"/>
</p>
<p class="${hasErrors(bean: person, field: 'email', 'fieldError')}">
  <label for="email">Email:</label>
  <g:textField name="email" value="${person.email}" class="text"/>
</p>
<p class="${hasErrors(bean: person, field: 'phone', 'fieldError')}">
  <label for="firstName">Phone Number:</label>
  <g:textField name="phone" value="${person.phone}" class="text"/>
</p>
<p class="${hasErrors(bean: person, field: 'birthday', 'fieldError')}">
  <label for="birthday">Birthday:</label>
  <g:datePicker name="birthday" value="${person.birthday}"
                noSelection="['': '']" class="text"
                years="${1900..(new Date().toCalendar().get(Calendar.YEAR))}"
                precision="day"/>
</p>

