<!DOCTYPE html>
<html>
    <head>
        <title><g:layoutTitle default="Contacts Manager" /></title>
        <blueprint:resources plugins="buttons, fancy-type"/>
        <link rel="stylesheet" href="${resource(dir:'css',file:'main.css')}" />
        <link rel="shortcut icon" href="${resource(dir:'images',file:'favicon.ico')}" type="image/x-icon" />
        <script>
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
        </script>
        <script src="${resource(dir: 'js/dojo-release-1.6.0-src/dojo', file: 'dojo.js')}"></script>
        <g:layoutHead />
    </head>
    <body>
        <div id="frame">
            <div id="container">
                <header class="span-24">
                    <img id="logo" width="64" height="64"
                         src="${resource(dir:'images', file:'rolodex64.png')}"
                         alt="Logo"/>
                    <h1>Contacts Manager</h1>
                </header>
                <g:layoutBody />
            </div>
        </div>
    </body>
</html>
