$(document).on('turbolinks:load', function() {
  
    $('#upload-btn').click(function() {
      $('#real_file').click();
    });
  
});

$(document).on('turbolinks:load', function() {

    $('#real_file').change(function() {
  
    var action = $('#file-upload-form').attr("action"), //Getting Form Action URL
    method = $('#file-upload-form').attr("method"), //Getting Form Submit Method (Post/Get)
    formData = new FormData($('#file-upload-form')[0]);
    confirm(action);

        $.ajax({
              url: action,  //Server script to process data
              type: method,
              xhr: function() {  // Custom XMLHttpRequest
                  var myXhr = $.ajaxSettings.xhr();
                  if(myXhr.upload){ // Check if upload property exists
                      myXhr.upload.addEventListener('progress',{}, false); // For handling the progress of the upload
                  }
                  return myXhr;
              },
              //Ajax events
              beforeSend: function() {
                show_spinner();
                $('#file-upload-result').hide();
                $('#file-upload-error').hide();
                document.getElementById("download-btn").setAttribute("disabled", "disabled") ;
                document.getElementById("upload-btn").setAttribute("disabled", "disabled") ;
              },
              success: function() {
                hide_spinner();
                $('#file-upload-result').show();
                $('#file-upload-error').hide();
                document.getElementById("document-name").value = document.getElementById("real_file").value.replace('C:\\fakepath\\','');
                document.getElementById("download-btn").setAttribute("disabled", "disabled") ;
                if (action != "/cfiles" ) {
                  $("#upload-btn").removeAttr('disabled') ;
                }
              },
              error: function() {
                hide_spinner();
                $('#file-upload-result').hide();
                $('#file-upload-error').show();
              },
              data: formData,
              //Options to tell jQuery not to process data or worry about content-type.
              cache: false,
              contentType: false,
              processData: false
          });
  
    });
});