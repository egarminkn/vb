var putToCartAjaxUrl = 'rest/put-to-cart/';

function putToCart(btn, type, id) {
    var purchaseItem = {
        type: type,
        id: id
    };

    var jqXHR = $.ajax({
        url: putToCartAjaxUrl,
        type: 'POST',
        data: JSON.stringify(purchaseItem),
        success: function (cartCount) {
            $('.header-1 > .cart .count').html(cartCount);
            btn.find('.text').html('Уже в корзине');
            btn.removeClass('clickable');
        }
    });
}

$(function () {
    var token = $("meta[name='_csrf']").prop("content");
    var header = $("meta[name='_csrf_header']").prop("content");
    $(document).ajaxSend(function(e, xhr, options) {
        xhr.setRequestHeader(header, token);
        xhr.setRequestHeader('Content-Type', 'application/json;charset=UTF-8');
    });

    $('.cart-btn').click(function () {
        if (!$(this).is('.clickable')) {
            return;
        }

        putToCart($(this), $(this).data('bookType'), $(this).data('bookId'));
    });
});