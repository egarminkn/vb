/*
 * Переменные, которые отвечают за скрытие значков вопросика и корзинки
 * у ссылок Задать вопрос и Корзина, соответственно, в хедере страницы
 */
var body;
var bodyMinWidth;
var divAsk;
var divCart;
// <<<

/*
 *  Вкладки шагов
 */
var imgStep2;
var imgStep3;
var labelStep2;
var labelStep3;
var imgStep2Width;
var imgStep3Width;
var pStep2;
var pStep3;
// <<<

/*
 *  Вспомогательные методы
 */
function getRealSizeOfElement(element, property) {
    var propertyStr = window.getComputedStyle(element, null).getPropertyValue(property);
    property = propertyStr.substring(0, propertyStr.lastIndexOf("px")) * 1; // умножение на 1, чтобы получить число, а не строку
    return property;
}
// <<<

/*
 *  Инициализация
 */
function init() {
    var browserDetect = navigator.userAgent.toLowerCase();
    if (browserDetect.indexOf("trident") > -1) {
        var divLogoV = document.querySelector("span.logo-v");
        divLogoV.classList.add('ie');
    }
    
    /*
     * Блок инициализации переменных, которые отвечают за скрытие значков вопросика и корзинки
     * у ссылок Задать вопрос и Корзина, соответственно, в хедере страницы
     */
    body = document.querySelector("body");
    bodyMinWidth = getRealSizeOfElement(body, "min-width");
    divAsk = document.querySelector("div.ask");
    divCart = document.querySelector("div.cart");
    // <<<
    
    /*
     *  Вкладки шагов
     */
    imgStep2 = document.querySelector("div.help-slide-marks > label[for='help-slide-2'] > img");
    imgStep3 = document.querySelector("div.help-slide-marks > label[for='help-slide-3'] > img");
    pStep2 = document.querySelector("div.help-slide-marks > label[for='help-slide-2'] > p");
    pStep3 = document.querySelector("div.help-slide-marks > label[for='help-slide-3'] > p");
    imgStep2Width = getRealSizeOfElement(imgStep2, "width");
    imgStep3Width = getRealSizeOfElement(imgStep3, "width");
    labelStep2 = document.querySelector("div.help-slide-marks > label[for='help-slide-2']");
    labelStep3 = document.querySelector("div.help-slide-marks > label[for='help-slide-3']");
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
    
    /*
     *  Вкладки шагов
     */
    var imgStep2Right = getRealSizeOfElement(imgStep2, "left") + imgStep2Width + labelStep2.getBoundingClientRect().left;
    if (imgStep2Right > pStep2.getBoundingClientRect().left) {
        imgStep2.style.display = "none";
    } else {
        imgStep2.style.display = "block";
    }
    var imgStep3Right = getRealSizeOfElement(imgStep3, "left") + imgStep3Width + labelStep3.getBoundingClientRect().left;
    if (imgStep3Right > pStep3.getBoundingClientRect().left) {
        imgStep3.style.display = "none";
    } else {
        imgStep3.style.display = "block";
    }
    // <<<
}

window.onresize = checkBodySize; // действие по событию изменения размера окна
// <<<