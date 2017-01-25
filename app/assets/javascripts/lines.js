$(document).on('turbolinks:load', function() {
  var product;
  product = $('#prod-name').html();
  $('#prod-category').change(function() {
    var product_category, options, escaped_category;
    product_category = $('#prod-category :selected').text();
    if (product_category !='') {
        escaped_category = product_category.replace(/([ #;&,.+*~\':"!^$[\]()=>|\/@])/g, '\\$1');
        options = $(product).filter("optgroup[label=" + escaped_category + "]").prepend("<option selected></option>").html();
        return $('#prod-name').html(options);
    } else {
      confirm("Please select a product category!");
    }
  });
});

$(document).on('turbolinks:load', function() {
  var product;
  product = $('#prod-name').html();
  var product_category, options, escaped_category;
  product_category = $('#prod-category :selected').text();
  if (product_category !='') {
      escaped_category = product_category.replace(/([ #;&,.+*~\':"!^$[\]()=>|\/@])/g, '\\$1');
      options = $(product).filter("optgroup[label=" + escaped_category + "]").prepend("<option selected></option>").html();
      return $('#prod-name').html(options);
  }
});