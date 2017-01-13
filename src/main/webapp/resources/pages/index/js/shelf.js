/**
 * Константы
 */
var COUNT_BOOKS_ON_SHELF = 5; // отображаемое количество книг на полке
var INIT_TOTAL_COUNT_BOOKS = 15; // начальное количество книг, подгруженное на любую полку

/**
 * Все полки на странице
 */
var shelves = [];

/**
 * После загрузки страницы
 */
$(document).ready(function() {
    $('.shelf').each(function (index) {
        shelves[index] = $(this);
        shelves[index].totalCountBooks = INIT_TOTAL_COUNT_BOOKS; // После подгрузки AJAX-ом новых книг это значение будет меняться
        shelves[index].find('.arrow.left-arrow').click(function () {
            shelfShift(index, true);
        });
        shelves[index].find('.arrow.right-arrow').click(function () {
            shelfShift(index, false);
        });
    });
});

/**
 * Обработчик событий сдвигов полки
 */
function shelfShift(shelfIndex, isLeftArrow) {
    var booksOuter = shelves[shelfIndex].find('.book-slider-outer');
    var booksInner = booksOuter.find('.book-slider-inner');

    var shelfWidth = booksOuter.width();
    var leftPx = parseInt(booksInner.css('left'));
    var leftPercent = 100 * leftPx / shelfWidth; // Расчет в процентах позволяет не беспокоиться о том, что юзер будет менять размеры окна браузера.
    if (leftPercent % 100 === 0) { // После включения transient, т.е. плавной промотки полки, пришлось поставить эту проверку на то, что предыдущая промотка завершена и можно снова нажимать на стрелочки.
        var countScreens = shelves[shelfIndex].totalCountBooks / COUNT_BOOKS_ON_SHELF;
        var countScreensOnTheLeft = Math.abs(leftPercent / 100);
        var countScreensOnTheRight = countScreens - countScreensOnTheLeft - 1;

        if (isLeftArrow) {
            if (countScreensOnTheLeft > 0) { // Стопер, чтобы нельзя было мотать полку сверх меры.
                booksInner.css('left', (leftPercent + 100) + "%");
                countScreensOnTheLeft--;
                countScreensOnTheRight++;
            }
        } else {
            if (countScreensOnTheRight > 0) { // Стопер, чтобы нельзя было мотать полку сверх меры.
                booksInner.css('left', (leftPercent - 100) + "%");
                countScreensOnTheRight--;
                countScreensOnTheLeft++;
            }
        }

        var rightArrow = shelves[shelfIndex].find('.arrow.right-arrow');
        if (countScreensOnTheRight == 0) {
            rightArrow.hide();
        } else {
            rightArrow.show()
        }

        var leftArrow = shelves[shelfIndex].find('.arrow.left-arrow');
        if (countScreensOnTheLeft == 0) {
            leftArrow.hide();
        } else {
            leftArrow.show();
        }
    }
}