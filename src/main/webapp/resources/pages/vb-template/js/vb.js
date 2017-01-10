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
}
// <<<

/**
 * Коррекция положения баблов-подсказок в зависимости от размера документа
 */
function correctHintsPosition() {
    $('.hint').each(function () {
        var bubble = $(this).find('.bubble');
        var bubbleBefore = bubble.find('.before');
        var bubbleLeft = parseFloat(bubble.css('left'));
        var bubbleBeforeLeft = parseFloat(bubbleBefore.css('left'));
        var distanceBetweenBubbleAndRightDocumentEdge = $(document).width() - ($(this).offset().left + bubbleLeft + bubble.outerWidth());

        var bubbleNewLeft = bubbleLeft + distanceBetweenBubbleAndRightDocumentEdge;
        var bubbleBeforeNewLeft = bubbleBeforeLeft - distanceBetweenBubbleAndRightDocumentEdge;

        var bubbleBeforeLeftMin = 15.5;
        var bubbleBeforeLeftMax = bubble.outerWidth() - bubbleBeforeLeftMin;

        var correct = 0;
        if (bubbleBeforeNewLeft < bubbleBeforeLeftMin) {
            correct = bubbleBeforeLeftMin - bubbleBeforeNewLeft;
        } else if (bubbleBeforeNewLeft > bubbleBeforeLeftMax) {
            correct = bubbleBeforeLeftMax - bubbleBeforeNewLeft;
        }
        bubbleNewLeft -= correct;
        bubbleBeforeNewLeft += correct;

        correct = 0;
        if ($(this).offset().left + bubbleNewLeft < 0) {
            correct = $(this).offset().left + bubbleNewLeft;
        } else if ($(document).width() - ($(this).offset().left + bubbleNewLeft + bubble.outerWidth()) < 0) {
            correct = -($(document).width() - ($(this).offset().left + bubbleNewLeft + bubble.outerWidth()));
        }
        bubbleNewLeft -= correct;
        bubbleBeforeNewLeft += correct;

        bubble.css('left', bubbleNewLeft + "px");
        bubbleBefore.css('left', bubbleBeforeNewLeft + "px");
    });
}

/**
 * После загрузки страницы
 */
$(function () {
    /*
     * Позиционирование всплывающих подсказок
     */
    correctHintsPosition();

    $(window).on("resize", function () {
        correctHintsPosition();
    });

    /* для страницы shop-cart */
    $('input[type="radio"].buy-process.payment-goods').on("change", function () {
        if ($(this).is(':checked')) {
            correctHintsPosition();
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