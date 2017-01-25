$(document).on('turbolinks:load', function() {
    var market_name;
    market_name = $('#market-name').html();
    // console.log(market_name);
    $('#market-state').change(function() {
        var market_state, options, escaped_state;
        market_state = $('#market-state :selected').text();
        if (market_state !='') {
            escaped_state = market_state.replace(/([ #;&,.+*~\':"!^$[\]()=>|\/@])/g, '\\$1');
            options = $(market_name).filter("optgroup[label=" + escaped_state + "]").prepend("<option selected></option>").html();
            return $('#market-name').html(options);
        } else {
            confirm("Please select a state!");
        }
    });
});

$(document).on('turbolinks:load', function() {
    var market_name;
    market_name = $('#market-name').html();
    var market_state, options, escaped_state;
    market_state = $('#market-state :selected').text();
        if (market_state !='') {
            escaped_state = market_state.replace(/([ #;&,.+*~\':"!^$[\]()=>|\/@])/g, '\\$1');
            options = $(market_name).filter("optgroup[label=" + escaped_state + "]").prepend("<option selected></option>").html();
            return $('#market-name').html(options);
        }
});