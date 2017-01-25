$(document).on('turbolinks:load', function() {
  var terminal_city;
  terminal_city = $('#market-name').html();
  // console.log(terminal_city);
  $('#market-state').change(function() {
    var terminal_state, options, escaped_state;
    terminal_state = $('#market-state :selected').text();
    escaped_state = terminal_state.replace(/([ #;&,.+*~\':"!^$[\]()=>|\/@])/g, '\\$1');
    options = $(terminal_city).filter("optgroup[label=" + escaped_state + "]").prepend("<option selected></option>").html();
    return $('#market-name').html(options);
  });
  
});

$(document).on('turbolinks:load', function() {
  var terminal_city;
  terminal_city = $('#market-name').html();
    var terminal_state, options, escaped_state;
    terminal_state = $('#market-state :selected').text();
    escaped_state = terminal_state.replace(/([ #;&,.+*~\':"!^$[\]()=>|\/@])/g, '\\$1');
    options = $(terminal_city).filter("optgroup[label=" + escaped_state + "]").prepend("<option selected></option>").html();
    return $('#market-name').html(options);
});