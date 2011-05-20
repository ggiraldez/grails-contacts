<div class="person">
  <h2>${person.firstName} ${person.lastName}</h2>
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


