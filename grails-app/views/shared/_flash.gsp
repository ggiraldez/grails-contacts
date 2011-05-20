<g:each in="['error', 'alert', 'notice', 'info', 'success']" var="type">
  <g:if test="${flash[type]}">
    <div class="${type}">${flash[type]}</div>
  </g:if>
</g:each>


