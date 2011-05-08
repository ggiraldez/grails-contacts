<!DOCTYPE html>
<html>
    <head>
        <title><g:layoutTitle default="Contacts Manager" /></title>
        <blueprint:resources />
        <link rel="stylesheet" href="${resource(dir:'css',file:'main.css')}" />
        <link rel="shortcut icon" href="${resource(dir:'images',file:'favicon.ico')}" type="image/x-icon" />
        <g:javascript library="dojo" />
        <g:layoutHead />
    </head>
    <body>
        <div id="container">
            <header>
                <img id="logo" src="${resource(dir:'images', file:'rolodex64.png')}" alt="Logo"/>
                <h1>Contacts Manager</h1>
            </header>
            <div id="content">
                <g:layoutBody />
            </div>
        </div>
    </body>
</html>
