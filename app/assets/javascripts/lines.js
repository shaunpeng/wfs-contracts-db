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
            confirm("Please select a Product Category!");
        }
    });
    
    var terminal_html = $('#terminal-operator').html();
    $('#terminal-city').change(function() { // trigger
        var terminal_city, escaped_city, options_terminal;
        terminal_city = $('#terminal-city :selected').text();
        if (terminal_city !='') {
            escaped_city  = terminal_city.replace(/([ #;&,.+*~\':"!^$[\]()=>|\/@])/g, '\\$1');
            options_terminal = $(terminal_html).filter("optgroup[label=" + escaped_city + "]").prepend("<option selected></option>").html();
            $('#terminal-operator').html(options_terminal);
        } else {
            confirm("Please select a Terminal City!");
        }
    });
    
    var index1_html = $('#line_index_1').html(),
    index2_html = $('#line_index_2').html(),
    index3_html = $('#line_index_3').html();
    $('#formula-source').change(function() {
        var formula_source, escaped_source, options_index1, options_index2, options_index3;
        formula_source = $('#formula-source :selected').text();
        if (formula_source !='') {
            escaped_source  = formula_source.replace(/([ #;&,.+*~\':"!^$[\]()=>|\/@])/g, '\\$1');
            options_index1 = $(index1_html).filter("optgroup[label=" + escaped_source + "]").prepend("<option selected></option>").html();
            options_index2 = $(index2_html).filter("optgroup[label=" + escaped_source + "]").prepend("<option selected></option>").html();
            options_index3 = $(index3_html).filter("optgroup[label=" + escaped_source + "]").prepend("<option selected></option>").html();
            $('#line_index_1').html(options_index1);
            $('#line_index_2').html(options_index2);
            $('#line_index_3').html(options_index3);
        } else {
            confirm("Please select a formula type/source!");
        }
    });
    
    var terminal_city, escaped_city, options_terminal;
    terminal_city = $('#terminal-city :selected').text();
    if (terminal_city !='') {
        escaped_city  = terminal_city.replace(/([ #;&,.+*~\':"!^$[\]()=>|\/@])/g, '\\$1');
        options_terminal = $(terminal_html).filter("optgroup[label=" + escaped_city + "]").prepend("<option selected></option>").html();
        $('#terminal-operator').html(options_terminal);
    }

    var formula_source, escaped_source, options_index1, options_index2, options_index3;
    formula_source = $('#formula-source :selected').text();
    if (formula_source !='') {
        escaped_source  = formula_source.replace(/([ #;&,.+*~\':"!^$[\]()=>|\/@])/g, '\\$1');
        options_index1 = $(index1_html).filter("optgroup[label=" + escaped_source + "]").prepend("<option selected></option>").html();
        options_index2 = $(index2_html).filter("optgroup[label=" + escaped_source + "]").prepend("<option selected></option>").html();
        options_index3 = $(index3_html).filter("optgroup[label=" + escaped_source + "]").prepend("<option selected></option>").html();
        $('#line_index_1').html(options_index1);
        $('#line_index_2').html(options_index2);
        $('#line_index_3').html(options_index3);
    }
    
    var product_category, escaped_category;
    product_category = $('#prod-category :selected').text();
    if (product_category !='') {
        escaped_category = product_category.replace(/([ #;&,.+*~\':"!^$[\]()=>|\/@])/g, '\\$1');
        var options_short = $(product_shorthtml).filter("optgroup[label=" + escaped_category + "]").prepend("<option selected></option>").html();
        var options_long = $(product_longhtml).filter("optgroup[label=" + escaped_category + "]").prepend("<option selected></option>").html();
        $('#prod-name-shortlist').html(options_short);
        $('#prod-name-longlist').html(options_long);
    }
    
    
    document.getElementById('prod-name-longlist').setAttribute("disabled", "disabled");
    document.getElementById('prod-name-shortlist').removeAttribute("disabled");
    $('#prod-name-shortlist').show();
    $('#prod-name-longlist').hide();
    

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