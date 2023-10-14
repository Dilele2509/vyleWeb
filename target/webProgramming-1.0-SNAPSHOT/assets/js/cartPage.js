$('.minus-cart-btn, .plus-cart-btn').on('click', function(e) {
    e.preventDefault();

    var $button = $(this);
    var $form = $button.closest('form');
    var $input = $form.find('input[name="quantity"]');
    var value = parseInt($input.val());

    if ($button.hasClass('plus-cart-btn')) {
        // Increment quantity
        if (value < 100) {
            value = value + 1;
        } else {
            value = 100;
        }
    } else {
        // Decrement quantity
        if (value > 1) {
            value = value - 1;
        } else {
            value = 0;
        }
    }

    // Update the input value
    $input.val(value);

    // Submit the form
    $form.submit();
});


/* $('.del-product-btn').on('click', function(e) {
    e.preventDefault();

    // Get the parent cart item
    var $cartItem = $(this).closest('.cart-item');

    // Remove the entire cart item from the DOM
    $cartItem.remove();
}); */
