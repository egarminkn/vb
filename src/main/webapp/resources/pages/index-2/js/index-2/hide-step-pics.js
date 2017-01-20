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

var resizer = function () {
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
};

$(document).ready(function () {
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

    resizer();
});

$(window).resize(resizer);