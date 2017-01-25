$(document).on('turbolinks:load', function() {
    var product_shorthtml = $('#prod-name-shortlist').html();
    var product_longhtml = $('#prod-name-longlist').html();

    $('#prod-category').change(function() { // trigger
        var product_category, escaped_category, options_short, options_long;
        product_category = $('#prod-category :selected').text();
        if (product_category !='') {
            escaped_category = product_category.replace(/([ #;&,.+*~\':"!^$[\]()=>|\/@])/g, '\\$1');
            options_short = $(product_shorthtml).filter("optgroup[label=" + escaped_category + "]").prepend("<option selected></option>").html();
            options_long = $(product_longhtml).filter("optgroup[label=" + escaped_category + "]").prepend("<option selected></option>").html();
            $('#prod-name-shortlist').html(options_short);
            $('#prod-name-longlist').html(options_long);
        } else {
            confirm("Please select a product category!");
        }
    });
    
    var product_category, escaped_category;
    product_category = $('#prod-category :selected').text();
    if (product_category !='') {
        escaped_category = product_category.replace(/([ #;&,.+*~\':"!^$[\]()=>|\/@])/g, '\\$1');
        var options_short = $(product_shorthtml).filter("optgroup[label=" + escaped_category + "]").prepend("<option selected></option>").html();
        var options_long = $(product_longhtml).filter("optgroup[label=" + escaped_category + "]").prepend("<option selected></option>").html();
        $('#prod-name-shortlist').html(options_short);
        $('#prod-name-longlist').html(options_long);
    }
    
    // if (document.getElementById('shortlist-checkbox').checked) {
        document.getElementById('prod-name-longlist').setAttribute("disabled", "disabled");
        document.getElementById('prod-name-shortlist').removeAttribute("disabled");
        $('#prod-name-shortlist').show();
        $('#prod-name-longlist').hide();
    // } else {
    //   //confirm("unchecked");
    //     document.getElementById('prod-name-shortlist').setAttribute("disabled", "disabled");
    //     document.getElementById('prod-name-longlist').removeAttribute("disabled");
    //     $('#prod-name-longlist').show();
    //     $('#prod-name-shortlist').hide();
    // }
    
});

function handleClick(cb) {
    if (cb.checked) {
      //confirm("checked");
        document.getElementById('prod-name-longlist').setAttribute("disabled", "disabled");
        document.getElementById('prod-name-shortlist').removeAttribute("disabled");
        $('#prod-name-shortlist').show();
        $('#prod-name-longlist').hide();
    } else {
      //confirm("unchecked");
        document.getElementById('prod-name-shortlist').setAttribute("disabled", "disabled");
        document.getElementById('prod-name-longlist').removeAttribute("disabled");
        $('#prod-name-longlist').show();
        $('#prod-name-shortlist').hide();
    }
}