$(function () {
    $('textarea').on('input', function () {
        var textareaSizeInfo = $(this).next('.textarea-appender').find('.textarea-size-info');
        var textareaLength = $(this).val().length;
        textareaSizeInfo.find('.size').html(textareaLength);
        textareaSizeInfo.find('.symbol-ending').html(getCorrectEnding(textareaLength, '', 'а', 'ов'));
        textareaSizeInfo.find('.using-ending').html(getCorrectEnding(textareaLength, '', 'о', 'о'));
    });
});