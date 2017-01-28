/**
 ** Вспомогательные методы
 **/
/**
 * Идентификация браузера - не IE ли это?
 */
function isIE() {
    var browserDetect = navigator.userAgent.toLowerCase();
    if (browserDetect.indexOf("trident") > -1) {
        return true;
    }
    return false;
}

/**
 * Метод получения корректного окончания слова
 * @param number - число
 * @param ending1 - окончание слова для числа заканчивающегося на 1, но не на 11
 * @param ending2 - окончание слова для чисел заканчивающихся на 2, 3 или 4, но не на 12, 13 или 14
 * @param ending3 - окончание слова для всех остальных чисел
 */
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
// <<<

/**
 ** Коррекция положения баблов-подсказок в зависимости от размера окна и доп.ограничителя вроде книжной полки (для книг на книжной полке).
 ** Если есть книжная полка, то ограничителями, в рамках которого должна показаться всплывающая подсказка, могут стать не границы окна, а границы книжной полки.
 ** Также возможна ситуация, когда одной границей является окно, а другой - край книжной полки.
 **/
/**
 * Определение положения границ отображения всплывающей подсказки
 * @param outer - DOM-книжная полка или, есди объект не на книжной полке, то outer === window
 */
function getOuterWindowStruct(outer) {
    var outerWindow = {};

    outerWindow.left = $(document).scrollLeft();
    if (outer != window && $(outer).offset().left > outerWindow.left) {
        outerWindow.left = $(outer).offset().left;
    }

    outerWindow.right = $(document).scrollLeft() + $(window).width();
    if (outer != window && $(outer).offset().left + $(outer).outerWidth() < outerWindow.right) {
        outerWindow.right = $(outer).offset().left + $(outer).outerWidth();
    }

    outerWindow.width = outerWindow.right - outerWindow.left;
    return outerWindow;
}

/**
 * Определение расстояния от всплывающей подсказки до границы отображения
 * @param outer - DOM-книжная полка или, есди объект не на книжной полке, то outer === window
 * @param element - объект jQuery, в котором находится бабл для всплытия
 * @param isToLeftEdge - до какой границы (левой или правой) нужно определить расстояние
 */
function getBubbleDistanceToOuterWindowEdge(outer, element, isToLeftEdge) {
    var bubble = element.find('.bubble');
    var outerWindow = getOuterWindowStruct(outer);

    if (isToLeftEdge) {
        return bubble.offset().left - outerWindow.left;
    } else {
        return outerWindow.right - (bubble.offset().left + bubble.outerWidth());
    }
}

/**
 * Коррекция положения баблов-подсказок
 * @param outer - DOM-книжная полка или, есди объект не на книжной полке, то outer === window
 * @param element - объект jQuery, в котором находится бабл для всплытия
 * @param event - объект с координатами курсора мыши
 */
function correctBubblePosition(outer, element, event) {
    /*
     * Позиционирование ромбика-указателя
     */
    var bubbleBefore1 = element.find('.bubble-before.bubble-before-1');
    var bubbleBefore1NewLeft = event.pageX - element.offset().left - 5;
    bubbleBefore1.css('left', bubbleBefore1NewLeft + "px");

    /*
     * Позиционирование прямоугольничка-заглушки под ромбиком-указателем
     */
    var bubbleBefore2 = element.find('.bubble-before.bubble-before-2');
    var bubbleBefore2NewLeft = event.pageX - element.offset().left - 8;
    bubbleBefore2.css('left', bubbleBefore2NewLeft + "px");

    /*
     * Позиционирование бабла
     */
    var bubble = element.find('.bubble');

    /* установка начальной ширины бабла */
    bubble.outerWidth(bubble.data('initWidth'));

    /* коррекция ширины бабла */
    var outerWindow = getOuterWindowStruct(outer);
    if (bubble.outerWidth() > outerWindow.width) {
        bubble.outerWidth(outerWindow.width);
    } else {
        if (outer != window) { // если есть свободное место для расширения бабла
            var bubbleBottom = bubble.offset().top + bubble.outerHeight();
            var step = 10; // в px
            while (bubbleBottom > $(outer).offset().top + $(outer).outerHeight()) { // и только если бабла по высоте не влезает на книжную полку
                var newBubbleWidth = bubble.outerWidth() + step;
                if (newBubbleWidth > outerWindow.width) {
                    break;
                }
                bubble.outerWidth(newBubbleWidth);
                bubbleBottom = bubble.offset().top + bubble.outerHeight();
            }
        }
    }

    /* установка начального положения бабла */
    var bubbleNewLeft = bubbleBefore2NewLeft - 15;
    bubble.css('left', bubbleNewLeft + "px");

    /* это блок проверки гарантирует, что бабл не улетит за правый борт окна браузера */
    var bubbleDistanceToRightOuterWindowEdge = getBubbleDistanceToOuterWindowEdge(outer, element, false);
    if (bubbleDistanceToRightOuterWindowEdge < 0) {
        bubbleNewLeft += bubbleDistanceToRightOuterWindowEdge;
        bubble.css('left', bubbleNewLeft + "px");
    }

    /* это блок проверки гарантирует, что бабл не улетит за левый борт окна браузера */
    var bubbleDistanceToLeftOuterWindowEdge = getBubbleDistanceToOuterWindowEdge(outer, element, true);
    if (bubbleDistanceToLeftOuterWindowEdge < 0) {
        bubbleNewLeft -= bubbleDistanceToLeftOuterWindowEdge;
        bubble.css('left', bubbleNewLeft + "px");
    }
}

/**
 * Установка правильных окончаний у слов "книг" в каждом элементе "Обложка и размещенная под ней сводная информация о книге и ее авторе"
 */
function correctBookCountEnding() {
    $('.book-with-cover-and-summary > .book-summary > .book-title-and-author .main > a.book-author > .book-count > span.text').each(function() {
        var count = parseInt($(this).find('.count').html());
        $(this).find('.count-ending').html(getCorrectEnding(count, 'а', 'и', ''));
    });
}

/**
 * После загрузки страницы
 */
$(function () {
    /*
     * Проверяем, не стартовала ли эта страница с якорем одного из модальных окон
     */
    if (typeof modalHashs !== 'undefined') {
        $(modalHashs).each(function () {
            if (window.location.hash === this.toString()) { // если да,
                $('body').css('overflow', 'hidden'); // то скрываем scroll-бары окна браузера
                return false; // и выходим из цикла
            }
        });
    }

    /*
     * Обработка открытий/закрытий модальных окон
     */
    $('.modal-btn').click(function () {
        // открытие - убираем scroll-бары окна браузера
        $('body').css('overflow', 'hidden');
    });
    $('.modal > .body .close-btn').click(function () {
        // закрытие - показываем scroll-бары окна браузера
        $('body').css('overflow', 'visible');
    });

    /*
     * После загрузки страницы:
     * Установка правильных окончаний у слов "книг" в каждом элементе "Обложка и размещенная под ней сводная информация о книге и ее авторе"
     */
    correctBookCountEnding();

    /*
     * Позиционирование всплывающих подсказок
     */
    $('.hint').hover(function (event) { // on('mouseenter',
        correctBubblePosition(window, $(this), event);
    });

    $('.book-with-cover-and-summary > .book-summary > .book-title-and-author').mouseenter(function (event) { // hover
        if ($(this).closest('.shelf').length) { // книга на книжной полке (из-за того, что книжная полка - overflow: hidden, важно учитывать не только размеры окна, но и книжную полку)
            correctBubblePosition($(this).closest('.book-slider-outer').get(), $(this), event);
        } else { // книга сама по себе
            correctBubblePosition(window, $(this), event);
        }
    });

    /*
     * Учет количества символов введнных в textarea
     */
    $('.textarea textarea').on('input', function () {
        var textareaInfo = $(this).closest('.textarea').find('.textarea-info');
        var textareaLength = $(this).val().length;
        textareaInfo.find('.size').html(textareaLength);
        textareaInfo.find('.symbol-ending').html(getCorrectEnding(textareaLength, '', 'а', 'ов'));
        textareaInfo.find('.using-ending').html(getCorrectEnding(textareaLength, '', 'о', 'о'));
    });

    /*
     * Денежный перевод
     */
    $('.payment-modes > .payment-modes-accordion').each(function () {
        var form = $(this).find('.yandex-money-card-mode > .card-info > form');
        if ($.creditly === undefined) {
            $.creditly = {};
        }
        $.creditly[$(this).prop('id')] = Creditly.initialize(
            '#' + form.find('.card-expired input').prop('id'),
            '#' + form.find('.card-num input').prop('id'),
            '#' + form.find('.card-cvc input').prop('id'),
            '#' + form.find('.card-num .card-type').prop('id'));
    });

    $('.payment-mode-btn').click(function(event) {
        event.preventDefault();

        var accordion = $(this).closest('.buttons').prevAll('.payment-modes:first').find('.payment-modes-accordion');

        var checked = accordion.find('input[type="radio"].radio-payment-mode:checked').val();
        if (checked === 'yandex-money-card-mode') {
            var errors = $.creditly[accordion.prop('id')].validate();
            if (errors) {
                // еще ни разу не нашел ошибок, полагаю, что валидация косячит
                console.log(errors);
                return;
            }
        }

        // Перед тем как сабмитить форму по событию клик кнопки будет идти проверка
        // required полей и прочая валидация по паттернам, если таковая имеется
        accordion.find('div.' + checked).find('form').find('[type="submit"]').trigger('click');
    });

    /* этот обработчик событий должен для "Группы-радиокнопок-аккордион", связанной с выбором платежной системы,
       исправить проблему с Firefox, который не хожет запускать анимацию "@keyframes overflow-visible" из vb.css */
    $('input[type="radio"].radio-payment-mode').change(function() {
        var groupName = $(this).prop('name');
        $('input[type="radio"][name="' + groupName + '"]').each(function () {
            var mode = $(this).val();
            var info = $(this).nextAll('div.' + mode).find('.info');
            info.css('overflow', 'hidden');
        });

        var mode = $(this).val();
        var info = $(this).nextAll('div.' + mode).find('.info');
        info.delay(800).queue(function (next) {
            $(this).css('overflow', 'visible');
            next();
        });
    });

    /*
     * Боковой баннер-фильтр "Выберите категорию"
     */
    $('ul.rating-filter > li.rating-filter-group > ul.radios > label > li.radio').on('click', function (event) {
        var radio = $(this).prev('input[type="radio"]');
        if (radio.is(':checked')) {
            radio.prop('checked', false);
            event.preventDefault();
        }
    });
});