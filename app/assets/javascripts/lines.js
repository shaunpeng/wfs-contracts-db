$(document).on('turbolinks:load', function() {
    var product_shorthtml = $('#prod-name-shortlist').html();
    var product_longhtml = $('#prod-name-longlist').html();
    var terminal_html = $('#terminal-operator').html();
    var index1_html = $('#line_index_1').html(),
    index2_html = $('#line_index_2').html(),
    index3_html = $('#line_index_3').html();
    
    $('#prod-category-short').change(function() {
        filter_product(product_shorthtml,product_longhtml,"short");
    });
    
    $('#prod-category-long').change(function() {
        filter_product(product_shorthtml,product_longhtml,"long");
    });
    
    $('#formula-source').change(function() {
        switch_indexopis();
        filter_index(index1_html,index2_html,index3_html);
        if ($('#formula-source :selected').text() == '') {
            confirm("Please select a Formula Type/Source!");
        }
    });
    
    
    $('#terminal-city').change(function() { // trigger
        filter_terminal(terminal_html);
        if ($('#terminal-city :selected').text() == '') {
            confirm("Please select a Terminal City!");
        }
    });
    
    filter_terminal(terminal_html);

    filter_index(index1_html,index2_html,index3_html);
    switch_indexopis();
    switch_indexopis_show();
    
    checkboxClick(document.getElementById('shortlist-checkbox'),product_shorthtml,product_longhtml);

});

function filter_product(product_shorthtml,product_longhtml,shortlong) {
    var product_category, escaped_category, options_short, options_long;
    product_category = $('#prod-category-' + shortlong + ' :selected').text();
    if (product_category !='') {
        escaped_category = product_category.replace(/([ #;&,.+*~\':"!^$[\]()=>|\/@])/g, '\\$1');
        //confirm(product_shorthtml);
        options_short = $(product_shorthtml).filter("optgroup[label=" + escaped_category + "]").prepend("<option selected></option>").html();
        options_long = $(product_longhtml).filter("optgroup[label=" + escaped_category + "]").prepend("<option selected></option>").html();
        //confirm(options_short);
        $('#prod-name-shortlist').html(options_short);
        $('#prod-name-longlist').html(options_long);
    } else {
        $('#prod-name-shortlist').html(product_shorthtml);
        $('#prod-name-longlist').html(product_longhtml);
    }
};

function checkboxClick(cb,product_shorthtml,product_longhtml) {
    if (cb.checked) {
      //confirm("checked");
        document.getElementById('prod-name-longlist').setAttribute("disabled", "disabled");
        document.getElementById('prod-name-shortlist').removeAttribute("disabled");
        $('#prod-name-shortlist').show();
        $('#prod-name-longlist').hide();
        document.getElementById('prod-category-long').setAttribute("disabled", "disabled");
        document.getElementById('prod-category-short').removeAttribute("disabled");
        $('#prod-category-short').show();
        $('#prod-category-long').hide();
        filter_product(product_shorthtml,product_longhtml,"short");
    } else {
      //confirm("unchecked");
        document.getElementById('prod-name-shortlist').setAttribute("disabled", "disabled");
        document.getElementById('prod-name-longlist').removeAttribute("disabled");
        $('#prod-name-longlist').show();
        $('#prod-name-shortlist').hide();
        document.getElementById('prod-category-short').setAttribute("disabled", "disabled");
        document.getElementById('prod-category-long').removeAttribute("disabled");
        $('#prod-category-long').show();
        $('#prod-category-short').hide();
        filter_product(product_shorthtml,product_longhtml,"long");
    }
}

function switch_indexopis() {
    var formula_source = $('#formula-source :selected').text();
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

function filter_index(index1_html, index2_html, index3_html) {
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
}

function filter_terminal(terminal_html) {
     var terminal_city, escaped_city, options_terminal;
        terminal_city = $('#terminal-city :selected').text();
        if (terminal_city !='') {
            escaped_city  = terminal_city.replace(/([ #;&,.+*~\':"!^$[\]()=>|\/@])/g, '\\$1');
            options_terminal = $(terminal_html).filter("optgroup[label=" + escaped_city + "]").prepend("<option selected></option>").html();
            $('#terminal-operator').html(options_terminal);
        }
}