dojo.require('dojox.NodeList.delegate');

dojo.ready(function() {

  dojo.query('body').delegate('a[data-method="delete"]', 'onclick', function(evt) {
    evt.preventDefault();
    var prompt = dojo.attr(this, 'data-confirm');
    if (prompt && confirm(prompt)) {
      var form = dojo.create('form', { method: 'post', action: this.href });
      dojo.create('input', { type: 'hidden', name: '_method', value: 'DELETE' }, form);
      dojo.style(form, 'display', 'none');
      dojo.place(form, dojo.body());
      form.submit();
    }
  });

});

