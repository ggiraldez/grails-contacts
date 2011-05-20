dojo.ready(function() {

  dojo.query('table.contacts tbody tr').connect('onclick', function(evt) {
    var link = dojo.attr(this, 'data-link');
    if (link) {
      document.location.href = link;
    }
  });

  dojo.query('table.contacts tbody tr.current').forEach(function(tr) {
    var lens = dojo.create('div', { class: 'current' });
    var lensTr = dojo.clone(tr);
    dojo.place(lensTr, lens);

    var coords = dojo.position(tr);
    dojo.contentBox(lens, coords);
    dojo.style(lens, {
      top: (coords.y - 3) + 'px',
      left: (coords.x - 5) + 'px',
    });
    dojo.place(lens, dojo.body());

    var detail = dojo.byId('contact-detail');
    var lensPos = dojo.position(lens);
    var detailPos = dojo.position(detail);
    var gap = detailPos.y + detailPos.h - lensPos.y - lensPos.h;
    if (gap < 0) {
      dojo.style(detail, { top: -gap + 15 + 'px' });
    }

    var sizes = dojo.query('td', tr).map(function(td) { return dojo.contentBox(td) });
    dojo.query('td', lensTr).forEach(function(td, index) { dojo.contentBox(td, sizes[index]) });
  });

});

