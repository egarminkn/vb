var TOTAL_COUNT_QUOTES = null; // Общее количество цитат. Определяется при загрузке страницы

/**
 * Вычисление очередного порядкового номера цитаты
 * @param currentQuoteIndex - порядковый номер текущей цитаты
 * @param isIncrement - инкремент или декремент порядкового номера
 */
function getNextQuoteIndex(currentQuoteIndex, isIncrement) {
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

    var sliderButtons = $('input[type="radio"].slider-button');

    $('.quotes-slider > .arrow-btn.left-arrow-btn').click(function () {
        currentQuoteIndex = sliderButtons.index(sliderButtons.filter(':checked'));
        var nextQuoteIndex = getNextQuoteIndex(currentQuoteIndex, false);
        $(sliderButtons[nextQuoteIndex]).trigger('click');
    });

    $('.quotes-slider > .arrow-btn.right-arrow-btn').click(function () {
        currentQuoteIndex = sliderButtons.index(sliderButtons.filter(':checked'));
        var nextQuoteIndex = getNextQuoteIndex(currentQuoteIndex, true);
        $(sliderButtons[nextQuoteIndex]).trigger('click');
    });
});