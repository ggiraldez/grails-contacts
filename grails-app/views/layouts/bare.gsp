<!DOCTYPE html>
<html>
  <head>
    <title><g:layoutTitle default="Contacts Manager" /></title>
    <blueprint:resources plugins="buttons, fancy-type"/>
    <link rel="stylesheet" href="${resource(dir:'css',file:'main.css')}" />
    <link rel="shortcut icon" href="${resource(dir:'images',file:'favicon.ico')}" type="image/x-icon" />
    <g:javascript>
      dojoConfig = {
        isDebug: true,
        parseOnLoad: true,
        modulePaths: {
          contacts: "../../contacts"
        },
        services: {
          contacts: "${createLink(controller: 'people')}",
        },
      };
    </g:javascript>
    <g:javascript src="dojo-release-1.6.0-src/dojo/dojo.js"/>
    <g:javascript src="ujs-helper.js"/>
    <g:layoutHead />
  </head>
  <body class="bare">
    <div id="frame">
      <div id="container">
        <div class="span-24">
          <g:render template="/shared/flash"/> 
        </div>
        <g:layoutBody />
      </div>
    </div>
  </body>
</html>

