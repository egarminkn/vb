function correctCountEnding() {
    /*
     * Окончания слов в самом верху страницы, где представлены общие результаты поиска
     */
    var searchResultsSummary = $('.search-results-summary > .summary');

    var totalCount = parseInt(searchResultsSummary.find('.total-count').html());
    searchResultsSummary.find('.total-count-ending').html(getCorrectEnding(totalCount, 'ие', 'ия', 'ий'));

    var ebooksCount = parseInt(searchResultsSummary.find('.ebooks-count').html());
    searchResultsSummary.find('.ebooks-count-ending-1').html(getCorrectEnding(ebooksCount, 'ая', 'ых', 'ых'));
    searchResultsSummary.find('.ebooks-count-ending-2').html(getCorrectEnding(ebooksCount, 'а', 'и', ''));

    var audiobooksCount = parseInt(searchResultsSummary.find('.audiobooks-count').html());
    searchResultsSummary.find('.audiobooks-count-ending').html(getCorrectEnding(audiobooksCount, 'а', 'и', ''));

    var authorsCount = parseInt(searchResultsSummary.find('.authors-count').html());
    searchResultsSummary.find('.authors-count-ending').html(getCorrectEnding(authorsCount, '', 'а', 'ов'));

    /*
     * Окончания слов по каждому отдельному блоку с результатами поиска (электронные книги, аудиокниги, авторы)
     */
    var ebooksSummary = $('.search-results.ebooks .summary');
    ebooksCount = parseInt(ebooksSummary.find('.count').html()); // в реале должно совпадать с тем значением, что получено выше
    ebooksSummary.find('.count-ending').html(getCorrectEnding(ebooksCount, 'ой', 'ых', 'ых'));

    var audiobooksSummary = $('.search-results.audiobooks .summary');
    audiobooksCount = parseInt(audiobooksSummary.find('.count').html()); // в реале должно совпадать с тем значением, что получено выше
    audiobooksSummary.find('.count-ending').html(getCorrectEnding(audiobooksCount, 'ой', 'ых', 'ых'));

    var authorsSummary = $('.search-results.authors .summary');
    authorsCount = parseInt(authorsSummary.find('.count').html()); // в реале должно совпадать с тем значением, что получено выше
    authorsSummary.find('.count-ending').html(getCorrectEnding(authorsCount, 'ого', 'ых', 'ых'));
}

/**
 * После загрузки страницы
 */
$(function () {
    correctCountEnding();

    // TODO Добавить обработчик получения с сервера результатов поиска, который будет вызывать функцию correctCountEnding()
});