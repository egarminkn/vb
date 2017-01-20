function correctAuthorCountEnding() {
    var summary = $('.summary');
    var count = parseInt(summary.find('.count').html());
    summary.find('.count-before-ending').html(count === 1 ? 'ет' : 'ют');
    summary.find('.count-after-ending').html(getCorrectEnding(count, '', 'а', 'ов'));
}

/**
 * После загрузки страницы
 */
$(function () {
    correctAuthorCountEnding();

    // TODO Добавить обработчик подгрузки авторов при параметризации условий фильтрации, который будет вызывать функцию correctAuthorCountEnding()
});