dojo.ready(function() {

  dojo.query('table.contacts tbody tr').connect('onclick', function(evt) {
    var link = dojo.attr(this, 'data-link');
    if (link) {
      document.location.href = link;
    }
  });

});

