var TOTAL_COUNT_QUOTES = null; // Общее количество цитат. Определяется при загрузке страницы

/**
 * Вычисление очередного порядкового номера цитаты
 * @param currentQuoteIndex - порядковый номер текущей цитаты
 * @param isIncrement - инкремент или декремент порядкового номера
 */
function getQuoteIndex(currentQuoteIndex, isIncrement) {
    if (isIncrement) {
        currentQuoteIndex++;
        if (currentQuoteIndex >= TOTAL_COUNT_QUOTES) {
            currentQuoteIndex = 0;
        }
    } else {
        currentQuoteIndex--;
        if (currentQuoteIndex < 0) {
            currentQuoteIndex = TOTAL_COUNT_QUOTES - 1;
        }
    }
    return currentQuoteIndex;
}

$(function () {
    TOTAL_COUNT_QUOTES = $('.quotes-slider > .quotes > .quote').length;

    var sliderButtons = $('.slider-buttons > .slider-button');
    var currentQuoteIndex = 0;

    $('.quotes-slider > .arrow-btn.left-arrow-btn').click(function () {
        currentQuoteIndex = getQuoteIndex(currentQuoteIndex, false);
        $(sliderButtons[currentQuoteIndex]).trigger('click');
    });

    $('.quotes-slider > .arrow-btn.right-arrow-btn').click(function () {
        currentQuoteIndex = getQuoteIndex(currentQuoteIndex, true);
        $(sliderButtons[currentQuoteIndex]).trigger('click');
    });
});