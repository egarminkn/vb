// Кнопка "В корзину"
var putToCartAjaxUrl = 'rest/put-to-cart/';
function putToCart(btn, type, id) {
    var purchaseItem = {
        type: type,
        id: id
    };

    $.ajax({
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

// Сделать лайк книги
var likeBookAjaxUrl = 'rest/like-book/';
function likeBook(link, type, id) {
    var likeItem = {
        type: type,
        id: id
    };

    $.ajax({
        url: likeBookAjaxUrl,
        type: 'PUT',
        data: JSON.stringify(likeItem),
        success: function (isOk) {
            if (isOk) {
                var likeLink = link;
                var dislikeLink = link.closest('.likes').find('.dislike');

                if (likeLink.is('.clicked')) {
                    likeLink.removeClass('clicked');
                    likeLink.html(parseInt(likeLink.html()) - 1);
                } else {
                    likeLink.addClass('clicked');
                    likeLink.html(parseInt(likeLink.html()) + 1);

                    if (dislikeLink.is('.clicked')) {
                        dislikeLink.removeClass('clicked');
                        dislikeLink.html(parseInt(dislikeLink.html()) - 1);
                    }
                }
            }
        }
    });
}

// Сделать дизлайк книги
var dislikeBookAjaxUrl = 'rest/dislike-book/';
function dislikeBook(link, type, id) {
    var dislikeItem = {
        type: type,
        id: id
    };

    $.ajax({
        url: dislikeBookAjaxUrl,
        type: 'PUT',
        data: JSON.stringify(dislikeItem),
        success: function (isOk) {
            if (isOk) {
                var dislikeLink = link;
                var likeLink = link.closest('.likes').find('.like');

                if (dislikeLink.is('.clicked')) {
                    dislikeLink.removeClass('clicked');
                    dislikeLink.html(parseInt(dislikeLink.html()) - 1);
                } else {
                    dislikeLink.addClass('clicked');
                    dislikeLink.html(parseInt(dislikeLink.html()) + 1);

                    if (likeLink.is('.clicked')) {
                        likeLink.removeClass('clicked');
                        likeLink.html(parseInt(likeLink.html()) - 1);
                    }
                }
            }
        }
    });
}

$(function () {
    // Общее по AJAX
    var token = $("meta[name='_csrf']").prop("content");
    var header = $("meta[name='_csrf_header']").prop("content");
    $(document).ajaxSend(function(e, xhr, options) {
        xhr.setRequestHeader(header, token);
        xhr.setRequestHeader('Content-Type', 'application/json;charset=UTF-8');
    });

    // Кнопка "В корзину"
    $('.cart-btn').click(function () {
        if (!$(this).is('.clickable')) {
            return;
        }

        putToCart($(this), $(this).data('bookType'), $(this).data('bookId'));
    });

    // Сделать лайк книги
    $('.likes > .like').click(function () {
        if (!$(this).is('.clickable')) {
            return;
        }

        likeBook($(this), $(this).data('bookType'), $(this).data('bookId'));
    });

    // Сделать дизлайк книги
    $('.likes > .dislike').click(function () {
        if (!$(this).is('.clickable')) {
            return;
        }

        dislikeBook($(this), $(this).data('bookType'), $(this).data('bookId'));
    });
});