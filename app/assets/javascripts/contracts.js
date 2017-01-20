$(function() {
  var terminal_city;
  terminal_city = $('#terminal-city').html();
  // console.log(terminal_city);
  $('#terminal-state').change(function() {
    var terminal_state, options, escaped_state;
    terminal_state = $('#terminal-state :selected').text();
    escaped_state = terminal_state.replace(/([ #;&,.+*~\':"!^$[\]()=>|\/@])/g, '\\$1');
    options = $(terminal_city).filter("optgroup[label=" + escaped_state + "]").prepend("<option selected></option>").html();
    return $('#terminal-city').html(options);
  });
  
});

$("document").ready(function() {
  var terminal_city;
  terminal_city = $('#terminal-city').html();
    var terminal_state, options, escaped_state;
    terminal_state = $('#terminal-state :selected').text();
    escaped_state = terminal_state.replace(/([ #;&,.+*~\':"!^$[\]()=>|\/@])/g, '\\$1');
    options = $(terminal_city).filter("optgroup[label=" + escaped_state + "]").prepend("<option selected></option>").html();
    return $('#terminal-city').html(options);
});