$(document).on('turbolinks:load', function() {

    $('#upload-btn').change(function(e) {
        e.preventDefault();
        
        var action = $('#file-upload-form').attr("action"), //Getting Form Action URL
        method = $('#file-upload-form').attr("method"), //Getting Form Submit Method (Post/Get)
        formData = new FormData($('#file-upload-form')[0]);
        //confirm(action);
        
        if( document.getElementById("upload-btn").value !== '' ) {
            // for (var pair of formData.entries()) {
            // console.log(pair[0]+ ',' + pair[1]); 
            // }
            
            $.ajax({
                  url: action,  //Server script to process data
                  type: method,
                  data: formData,
                  cache: false,
                  contentType: false, //Options to tell jQuery not to process data or worry about content-type.
                  processData: false,
                  beforeSend: function() {
                    show_spinner();
                    $('#file-upload-result').hide();
                    $('#file-upload-error').hide();
                    document.getElementById("download-btn").removeAttribute("href");
                    document.getElementById("download-btn").setAttribute("disabled", "disabled");
                    document.getElementById("upload-btn").setAttribute("disabled", "disabled");
                    document.getElementById("upload-btn-span").setAttribute("disabled", "disabled");
                  },
                  success: function() {
                    hide_spinner();
                    $('#file-upload-result').show();
                    $('#file-upload-error').hide();
                    document.getElementById("document-name").value = document.getElementById("upload-btn").value.replace('C:\\fakepath\\','');
                    if (action != "/cfiles" ) {
                        document.getElementById("upload-btn").removeAttribute("disabled");
                        document.getElementById("upload-btn-span").removeAttribute("disabled");
                    }
                  },
                  error: function() {
                    hide_spinner();
                    $('#file-upload-result').hide();
                    $('#file-upload-error').show();
                  }
            });
        } else {
            confirm("Please choose a document!");
        }
    });
    return false;
});