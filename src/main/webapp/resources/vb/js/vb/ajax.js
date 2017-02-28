function notyError(event, jqXHR, options, jsExc) {
    var errorInfo = $.parseJSON(jqXHR.responseText);
    noty({
        text: '<h2 class="noty-header">Ошибка</h2><h3 class="noty-cause">' + errorInfo.cause + '</h3><p class="noty-content">' + errorInfo.details.join('<br>') + '</p>',
        layout: 'top',
        theme: 'relax', // or defaultTheme
        type: 'error', // success, error, warning, information, notification

        dismissQueue: true, // [boolean] If you want to use queue feature set this true
        force: false, // [boolean] adds notification to the beginning of queue when set to true
        maxVisible: 5, // [integer] you can set max visible notification count for dismissQueue true option,

        template: '<div class="noty-message"><span class="noty_text"></span><div class="noty_close"></div></div>',

        timeout: 5000, // [integer|boolean] delay for closing event in milliseconds. Set false for sticky notifications
        progressBar: true, // [boolean] - displays a progress bar

        animation: {
            open: {height: 'toggle'}, // or Animate.css class names like: 'animated bounceInLeft'
            close: {height: 'toggle'}, // or Animate.css class names like: 'animated bounceOutLeft'
            easing: 'swing',
            speed: 500 // opening & closing animation speed
        },
        closeWith: ['button'], // ['click', 'button', 'hover', 'backdrop'] // backdrop click will close all notifications

        modal: true, // [boolean] if true adds an overlay
        killer: false, // [boolean] if true closes all notifications and shows itself

        callback: {
            onShow: function() {},
            afterShow: function() {},
            onClose: function() {},
            afterClose: function() {},
            onCloseClick: function() {}
        },

        buttons: false // [boolean|array] an array of buttons, for creating confirmation dialogs.
    });
}

// ---------------------------------------------------------------------------------------------------------------------

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

// ---------------------------------------------------------------------------------------------------------------------

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

// ---------------------------------------------------------------------------------------------------------------------

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

// ---------------------------------------------------------------------------------------------------------------------

/*
 * Страница "Рейтинг авторов"
 */
// Кнопка "Показать" на странице "Рейтинг авторов" у фильтра
var ratingItems = [];
function prepareRatingItems(submitBtn, container) {
    var form = submitBtn.closest('.rating-filter-form');
    ratingItems = [];
    form.find('.rating-filter-subform').each(function () {
        var subcategories = [];
        $(this).find('[name="subcategories"]').each(function () {
            if ($(this).is(':checked')) {
                subcategories.push($(this).val());
            }
        });
        if (subcategories.length > 0) {
            ratingItems.push({
                category: $(this).find('[name="category"]').val(),
                subcategories: subcategories
            });
        }
    });
    container.next('.show-more').show();
}

var filterAuthorsAjaxUrl = 'rest/filter-authors/';
function filterAuthors(offset, container) {
    $.ajax({
        url: filterAuthorsAjaxUrl + '?offset=' + offset,
        type: 'POST',
        data: JSON.stringify(ratingItems),
        success: function (ratingCategoryFilterItem) {
            var html = "";
            if (offset > 0) {
                html += container.html();
            }

            var authorItems = ratingCategoryFilterItem.authorItems;
            $(authorItems).each(function (index) {
                var authorItem = this;

                var authorPosition = ++offset;
                var authorId = authorItem.authorId;
                var authorRatingNumber = authorItem.authorRatingNumber;
                var authorPhotoUrl = authorItem.authorPhotoUrl;
                var authorName = authorItem.authorName;
                var authorDescription = authorItem.authorDescription;
                var authorBooksCount = authorItem.authorBooksCount;
                var authorBookReviewsCount = authorItem.authorBookReviewsCount;

                var authorGenres = "";
                var authorGenresLastIndex = authorItem.authorGenres.length - 1;
                $(authorItem.authorGenres).each(function (index) {
                    authorGenres += genreLink.split(':authorGenre').join(this);
                    if (index < authorGenresLastIndex) {
                        authorGenres += ', ';
                    }
                });

                var tmp = authorBlockTemplate
                            .split(':authorPosition').join(authorPosition)
                            .split(':authorId').join(authorId)
                            .split(':authorRatingNumber').join(authorRatingNumber)
                            .split(':authorPhotoUrl').join(authorPhotoUrl)
                            .split(':authorName').join(authorName)
                            .split(':authorDescription').join(authorDescription)
                            .split(':authorBooksCount').join(authorBooksCount)
                            .split(':authorBookReviewsCount').join(authorBookReviewsCount)
                            .split(':authorGenres').join(authorGenres);
                // Нужно обязательно разэкранировать все html теги
                tmp = new DOMParser().parseFromString(tmp, "text/html").documentElement.textContent;

                html += tmp;
            });
            container.html(html);
            container.attr('data-next', offset); // data('next' и prop('data-next' не работают

            var hasMore = ratingCategoryFilterItem.hasMore;
            if (!hasMore) {
                container.next('.show-more').hide();
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
    $(document).ajaxError(function (event, jqXHR, options, jsExc) {
        notyError(event, jqXHR, options, jsExc);
    });

    // -----------------------------------------------------------------------------------------------------------------

    /*
     * Страница "Рейтинг авторов"
     */
    var ratingAuthorsContainer = $('.rating-authors');
    // Кнопка "Показать" на странице "Рейтинг авторов" у фильтра
    $('.rating-filter-form-btn.rating-filter-form-submit-btn').click(function () {
        prepareRatingItems($(this), ratingAuthorsContainer);
        filterAuthors(0, ratingAuthorsContainer);
    });
    // Кнопка "Показать еще" на странице "Рейтинг авторов"
    $('main.author-rating .show-more .btn').click(function () {
        var offset = parseInt(ratingAuthorsContainer.attr('data-next')); // data('next' и prop('data-next' не работают
        filterAuthors(offset, ratingAuthorsContainer);
    });

    // -----------------------------------------------------------------------------------------------------------------

    // Кнопка "В корзину"
    $('.cart-btn').click(function () {
        if (!$(this).is('.clickable')) {
            return;
        }

        putToCart($(this), $(this).data('bookType'), $(this).data('bookId'));
    });

    // -----------------------------------------------------------------------------------------------------------------

    // Сделать лайк книги
    $('.likes > .like').click(function () {
        if (!$(this).is('.clickable')) {
            return;
        }

        likeBook($(this), $(this).data('bookType'), $(this).data('bookId'));
    });

    // -----------------------------------------------------------------------------------------------------------------

    // Сделать дизлайк книги
    $('.likes > .dislike').click(function () {
        if (!$(this).is('.clickable')) {
            return;
        }

        dislikeBook($(this), $(this).data('bookType'), $(this).data('bookId'));
    });
});