var resizer = function() {
    // Просматриваем все баннеры, которые не должны вылезать за пределы своей колонки
    $(bannerColumnCompliance).each(function () {
        var column = $(this.columnSelector);
        if (column.length > 0) {
            var banner = column.find(this.bannerSelector);
            if (banner.length > 0) {
                if (banner.outerWidth() > column.outerWidth()) {
                    // Если баннер вылезает за пределы своей колонки, то скрываем его
                    banner.hide();
                } else {
                    // Если баннер умещается в пределах своей колонки, то отображаем его
                    banner.show();
                }
            }
        }
    });
};

$(document).ready(resizer); // после загрузки страницы
$(window).resize(resizer); // после изменения размера окна