var resizer = function() {
    // Просматриваем все баннеры, которые не должны вылезать за пределы своей колонки
    $(bannerColumnCompliance).each(function () {
        var banner = this.banner;
        var column = this.column;
        if (banner.outerWidth() > column.outerWidth()) {
            // Если баннер вылезает за пределы своей колонки, то скрываем его
            banner.hide();
        } else {
            // Если баннер умещается в пределах своей колонки, то отображаем его
            banner.show();
        }
    });
};

$(document).ready(resizer); // после загрузки страницы
$(window).resize(resizer); // после изменения размера окна