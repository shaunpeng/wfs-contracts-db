//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require bootstrap-sprockets
//= require moment
//= require_tree .

var hide_spinner = function(){
  $('#spinner').hide();
}
var show_spinner = function(){
  $('#spinner').show();
}

var switch_indexopis_show = function() {
    var formula_source = document.getElementById('formula-source').value;
    if (formula_source == 'OPIS') {
        $('.opis-fields').show();
        $('.index-fields').hide();
        $('.rackposted-fields').hide();
    } else if (formula_source == 'Rack Posted' ) {
        $('.opis-fields').hide();
        $('.index-fields').hide();
        $('.rackposted-fields').show();
    } else if (formula_source != '' ) {
        $('.opis-fields').hide();
        $('.index-fields').show();
        $('.rackposted-fields').hide();
    } else {
        $('.opis-fields').show();
        $('.index-fields').show();
        $('.rackposted-fields').show();
    }
}