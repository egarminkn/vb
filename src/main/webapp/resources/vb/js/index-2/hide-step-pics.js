/*
 *  Вкладки шагов
 */
var imgStep1;
var imgStep2;
var imgStep3;
var labelStep1;
var labelStep2;
var labelStep3;
var imgStep1Width;
var imgStep2Width;
var imgStep3Width;
var pStep1;
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

var hideStepPics = function () {
    /*
     *  Вкладки шагов
     */
    if (imgStep1 && imgStep2 && imgStep3 &&
            labelStep1 && labelStep2 && labelStep3 &&
                imgStep1Width && imgStep2Width && imgStep3Width &&
                    pStep1 && pStep2 && pStep3) {
        var imgStep1Right = getRealSizeOfElement(imgStep1, "left") + imgStep1Width + labelStep1.getBoundingClientRect().left;
        if (imgStep1Right > pStep1.getBoundingClientRect().left) {
            imgStep1.style.display = "none";
        } else {
            imgStep1.style.display = "block";
        }

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
    }
    // <<<
};

$(document).ready(function () {
    /*
     *  Вкладки шагов
     */
    imgStep1 = document.querySelector("div.help-slide-marks > label[for='help-slide-1'] > img");
    imgStep2 = document.querySelector("div.help-slide-marks > label[for='help-slide-2'] > img");
    imgStep3 = document.querySelector("div.help-slide-marks > label[for='help-slide-3'] > img");

    pStep1 = document.querySelector("div.help-slide-marks > label[for='help-slide-1'] > h2");
    pStep2 = document.querySelector("div.help-slide-marks > label[for='help-slide-2'] > h2");
    pStep3 = document.querySelector("div.help-slide-marks > label[for='help-slide-3'] > h2");

    if (imgStep1) {
        imgStep1Width = getRealSizeOfElement(imgStep1, "width");
    }
    if (imgStep2) {
        imgStep2Width = getRealSizeOfElement(imgStep2, "width");
    }
    if (imgStep3) {
        imgStep3Width = getRealSizeOfElement(imgStep3, "width");
    }

    labelStep1 = document.querySelector("div.help-slide-marks > label[for='help-slide-1']");
    labelStep2 = document.querySelector("div.help-slide-marks > label[for='help-slide-2']");
    labelStep3 = document.querySelector("div.help-slide-marks > label[for='help-slide-3']");
    // <<<

    hideStepPics();
});

$(window).resize(hideStepPics);