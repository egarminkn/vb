/*
 * Переменные, которые отвечают за скрытие значков вопросика и корзинки
 * у ссылок Задать вопрос и Корзина, соответственно, в хедере страницы
 */
var body;
var bodyMinWidth;
var divAsk;
var divCart;
// <<<

var sliderInterval = 5;
var sliderButtonTurnOn = 0;
var slidesCount = 4;
var sliderButton1;
var sliderButton2;
var sliderButton3;
var sliderButton4;

/**
 ** Вспомогательные методы
 **/
/**
 *  Метод получения корректного окончания слова
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

function getRealSizeOfElement(element, property) {
    var propertyStr = window.getComputedStyle(element, null).getPropertyValue(property);
    property = propertyStr.substring(0, propertyStr.lastIndexOf("px")) * 1; // умножение на 1, чтобы получить число, а не строку
    return property;
}

function addCSSRule(selector, rules) {
    var sheet = document.styleSheets[0];
	if ("addRule" in sheet) {
		sheet.addRule(selector, rules);
	} else if ("insertRule" in sheet) { // для Firefox (не будет работать для псевдоэлементов ::before и ::after)
        sheet.insertRule(selector + "{" + rules + "}");
	}
}
// <<<

/*
 *  Инициализация
 */
function init() {
    var browserDetect = navigator.userAgent.toLowerCase();
    if (browserDetect.indexOf("trident") > -1) {
        divLogoV = document.querySelector("span.logo-v");   
        divLogoV.classList.add('ie');
    }
    
    sliderButton1 = document.getElementById("slider-button-1");
    sliderButton2 = document.getElementById("slider-button-2");
    sliderButton3 = document.getElementById("slider-button-3");
    sliderButton4 = document.getElementById("slider-button-4");
        
    /*
     * Блок инициализации переменных, которые отвечают за скрытие значков вопросика и корзинки
     * у ссылок Задать вопрос и Корзина, соответственно, в хедере страницы
     */
    body = document.querySelector("body");
    bodyMinWidth = getRealSizeOfElement(body, "min-width");
    divAsk = document.querySelector("div.ask");
    divCart = document.querySelector("div.cart");
    // <<<
    
    checkBodySize(null);
}
// <<<

/*
 *  При изменении размера окна
 */
function checkBodySize(event) {
    /*
     *  При малых размерах окна убираем значки вопроса и корзинки в верхней части хедера
     */
    if (body.clientWidth < 1.5 * bodyMinWidth) {
        divAsk.classList.add('hidden');
        divCart.classList.add('hidden');
    } else {
        divAsk.classList.remove('hidden');
        divCart.classList.remove('hidden');
    }
    // <<<    
}

window.onresize = checkBodySize; // действие по событию изменения размера окна
// <<<

/**
 * Коррекция положения баблов-подсказок в зависимости от размера окна
 */
function getDistanceBetweenBubbleAndRightWindowEdge(elementLeftOffset, bubbleLeft, bubbleWidth) {
    return $(window).width() - (elementLeftOffset + bubbleLeft + bubbleWidth - $(document).scrollLeft());
}

function correctBubblePosition(element) {
    var bubble = element.find('.bubble');

    /* установка номинальной ширины бабла перед тем, как начать его позиционировать */
    bubble.outerWidth(bubble.css('max-width'));

    var bubbleBefore = bubble.find('.before');
    var bubbleLeft = parseFloat(bubble.css('left'));
    var bubbleBeforeLeft = parseFloat(bubbleBefore.css('left'));
    var distanceBetweenBubbleAndRightWindowEdge = getDistanceBetweenBubbleAndRightWindowEdge(element.offset().left, bubbleLeft, bubble.outerWidth());

    var bubbleNewLeft = bubbleLeft + distanceBetweenBubbleAndRightWindowEdge;
    var bubbleBeforeNewLeft = bubbleBeforeLeft - distanceBetweenBubbleAndRightWindowEdge;

    var bubbleBeforeLeftMin = 15.5;
    var bubbleBeforeLeftMax = bubble.outerWidth() - bubbleBeforeLeftMin;

    var correct = 0;
    /* это блок проверки гарантирует, что бабл и его хвостик-ромбик не разлетятся в стороны друг от друга */
    if (bubbleBeforeNewLeft < bubbleBeforeLeftMin) {
        /* здесь делаем так, чтобы бабл от своего хвостика-ромбика не улетел вправо */
        correct = bubbleBeforeLeftMin - bubbleBeforeNewLeft;
    } else if (bubbleBeforeNewLeft > bubbleBeforeLeftMax) {
        /* здесь делаем так, чтобы бабл от своего хвостика-ромбика не улетел влево */
        correct = bubbleBeforeLeftMax - bubbleBeforeNewLeft;
    }
    bubbleNewLeft -= correct;
    bubbleBeforeNewLeft += correct;

    /* это блок проверки гарантирует, что бабл не улетит за правый борт окна браузера */
    if (getDistanceBetweenBubbleAndRightWindowEdge(element.offset().left, bubbleNewLeft, bubble.outerWidth()) < 0) {
        var correct = -getDistanceBetweenBubbleAndRightWindowEdge(element.offset().left, bubbleNewLeft, bubble.outerWidth());
        bubbleNewLeft -= correct;
        bubbleBeforeNewLeft += correct;
    }

    /* это блок проверки гарантирует, что бабл не улетит за левый борт окна браузера */
    if (element.offset().left + bubbleNewLeft - $(document).scrollLeft() < 0) {
        var correct = element.offset().left + bubbleNewLeft - $(document).scrollLeft();
        bubbleNewLeft -= correct;
        bubbleBeforeNewLeft += correct;
    }

    bubble.css('left', bubbleNewLeft + "px");
    bubbleBefore.css('left', bubbleBeforeNewLeft + "px");

    /* коррекция ширины бабла */
    if (bubble.outerWidth() > $(window).width()) {
        bubble.outerWidth($(window).width());
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
     * После загрузки страницы:
     * Установка правильных окончаний у слов "книг" в каждом элементе "Обложка и размещенная под ней сводная информация о книге и ее авторе"
     */
    correctBookCountEnding();

    /*
     * Позиционирование всплывающих подсказок
     */
    $('.hint').hover(function () { // on('mouseover',
        correctBubblePosition($(this));
    });

    $('.book-with-cover-and-summary > .book-summary > .book-title-and-author').on('mouseover', function () { // hover
        correctBubblePosition($(this));
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

        var accordion = $(this).closest('.buttons').prevAll('.payment-modes').find('.payment-modes-accordion');

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