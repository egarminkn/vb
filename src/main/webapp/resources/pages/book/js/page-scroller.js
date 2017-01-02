/**
 ** Группа радио-кнопок, указывающих на текущую главу
 **/
var chapterRadioGroup = $('#browse-book input[type="radio"][name="chapter"]');

/**
 ** Шапка модального окна "Полистать книгу" в колонке с текущей страницей
 **/
var pageNumberBlock = $('#browse-book .page-number');

var bookSizeBlock = pageNumberBlock.find('.book-size');
var currentPageNumberBlock = pageNumberBlock.find('input[name="page-number"]');

/**
 ** Текущая страница в модальном окне "Полистать книгу" (колонка с текущей страницей)
 **/
var pageСontentBlock = $('#browse-book .page-content');

/**
 ** Подвал модального окна "Полистать книгу" в колонке с текущей страницей
 **/
/*
 * Количество пролистанных старниц и окончания слов, связанных с этим числом
 */
var countPagesScrolledBlock = $('#browse-book .status .count');
var watchingEndingBlock = $('#browse-book .status .watching-ending'); // Слово - Просмотрен
var countEndingBlock = $('#browse-book .status .count-ending'); // Слово - страниц

/*
 * Максимальное количество страниц доступных для бесплатного просмотра и окончания слов, связанных с этим числом
 */
var maxCountBlock = $('#browse-book .status .max-count');
var maxCountEndingBlock = $('#browse-book .status .max-count-ending'); // Слово - доступн

/**
 ** Метод запроса очередной страницы с сервера
 **/
/*
 * Вначале страница еще не подгружена
 */
var currentPageNumber = null;
var currentPage = null;

/*
 * TODO убрать, т.к. эти данные нужны для заглушки запроса очередной страницы
 */
var countPagesScrolledTest = -1;
var pageBodyTest = ''; // TODO убрать

function requestPage(pageNumber, bookId, userId) {
    if (pageNumber != currentPageNumber) {
        // TODO Сделать реализацию запроса >>>
        countPagesScrolledTest++;
        pageBodyTest += 'Тестовая строка!<br>';

        var responsePage = {
            currentPageNumber: pageNumber,
            bookSize: 10,
            countPagesScrolled: countPagesScrolledTest,
            maxCountPagesForScrolling: 42,
            chapter: 'chapter-' + pageNumber,
            pageBody: '<p>' + pageBodyTest + '</p>'
        };
        // <<<

        currentPageNumber = responsePage.currentPageNumber;
        currentPage = responsePage;
        return responsePage;
    }
    return currentPage;
}

/**
 ** Обработка событий
 **/
function updatePage(page) {
    currentPageNumberBlock.val(page.currentPageNumber);
    bookSizeBlock.html(page.bookSize);
    pageСontentBlock.html(page.pageBody);

    var count = page.countPagesScrolled;
    countPagesScrolledBlock.html(count);

    var maxCount = page.maxCountPagesForScrolling;
    maxCountBlock.html(maxCount);

    chapterRadioGroup.prop('checked', false);
    $('#' + page.chapter).prop('checked', true);

    /*
     * Обработка окончаний слов в модальном окне "Полистать книгу"
     */
    watchingEndingBlock.html(getCorrectEnding(count, 'а', 'о', 'о'));
    countEndingBlock.html(getCorrectEnding(count, 'а', 'ы', ''));
    maxCountEndingBlock.html(getCorrectEnding(maxCount, 'ой', 'ых', 'ых'));
}

function correctPageNumber(pageNumber) {
    if (pageNumber < 0) {
        return 0;
    }
    if (pageNumber > bookSizeBlock.html()) {
        return bookSizeBlock.html();
    }
    return pageNumber;
}

/**
 ** Вспомогательные функции
 **/
function correctPageNumberAndUpdatePage(newPageNumber) {
    newPageNumber = correctPageNumber(newPageNumber);
    updatePage(requestPage(newPageNumber));
}

/**
 ** Событие загрузки страницы
 **/
$(function () {
    var startPageNumber = 0;
    startPageNumber = correctPageNumber(startPageNumber);
    updatePage(requestPage(startPageNumber)); // FIXME Добавить в этот вызов bookId и userId

    /*
     * Обработка выбора главы из оглавления
     */
    chapterRadioGroup.on('change', function () {
        var id = $(this).prop('id');
        var newPageNumber = parseInt($(this).nextAll('ul.level.level-1').find('label[for="' + id + '"]').find('.page').html());
        correctPageNumberAndUpdatePage(newPageNumber);
    });

    /*
     * Обработка нажатий кнопочек перемотки страниц и изменения содержимого поля ввода номера страницы
     */
    currentPageNumberBlock.on('change', function() {
        var newPageNumber = parseInt($(this).val());
        correctPageNumberAndUpdatePage(newPageNumber);
    });

    pageNumberBlock.find('.prev-page-btn').on('click', function () {
        var newPageNumber = parseInt(currentPageNumberBlock.val()) - 1;
        correctPageNumberAndUpdatePage(newPageNumber);
    });

    pageNumberBlock.find('.next-page-btn').on('click', function () {
        var newPageNumber = parseInt(currentPageNumberBlock.val()) + 1;
        correctPageNumberAndUpdatePage(newPageNumber);
    });
});