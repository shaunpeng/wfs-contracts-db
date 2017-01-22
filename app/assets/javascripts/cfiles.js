$(document).on('turbolinks:load', function() {
  
  $('#upload-btn').click(function() {
    $('#real_file').click();
  });
  
});

$(document).on('turbolinks:load', function() {

  $('#real_file').change(function() {
    this.form.submit();
  });
});