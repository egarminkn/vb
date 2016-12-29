function getCorrectEnding(number, ending1, ending2, ending3) {
    number = number % 100;
    if (number > 10 && number < 20) {
        return ending3; // -ов
    } else {
        number = number % 10;
        if (number === 1) {
            return ending1; // -
        } else if (number > 1 && number < 5) {
            return ending2; // -a
        } else {
            return ending3; // -ов
        }
    }
}

$(function () {
    $('textarea').on('input', function () {
        var textareaSizeInfo = $(this).next('.textarea-appender').find('.textarea-size-info');
        var textareaLength = $(this).val().length;
        textareaSizeInfo.find('.size').html(textareaLength);
        textareaSizeInfo.find('.symbol-ending').html(getCorrectEnding(textareaLength, '', 'а', 'ов'));
        textareaSizeInfo.find('.using-ending').html(getCorrectEnding(textareaLength, '', 'о', 'о'));
    });
});