/**
 * После загрузки страницы
 */
$(function () {
    var description = $('.description'); // блок с описанием автора
    var pHidden = description.find('.paragraph.hidden > p.text'); // описание автора, которое не видно, но которое используется для определения полной высоты текста описания
    var pVisible = description.find('.paragraph.visible > p.text'); // описание автора, которое отображается в окне браузера
    var fog = description.find('.paragraph.visible > .after'); // затуманенность текста описания автора
    var minHeight = pVisible.outerHeight(); // высота описания автора, с которого стартует страница (показываются первые 5 строк)
    var lineHeight = parseFloat(pVisible.css('line-height')); // высота одной строки описания

    var radios = description.find('input[type="radio"].expand-collapse-block');
    radios.click(function () { // обработка событий сворачивания-разворачивания блока описания автора
        switch ($(this).prop('id')) {
            case 'collapsed': // сворачиваем
                pVisible.animate({height: minHeight + 'px'}, 800);
                fog.show();
                break;
            case 'expanded': // разворачиваем
                var maxHeight = pHidden.outerHeight();
                pVisible.animate({height: maxHeight + 'px'}, 800);
                fog.hide();
                break;
        }
    });

    /**
     * Для коротких описаний автора пытаемся скрыть возможность сворачивания-разворачивания, как избыточную
     */
    function tryHideButtons() {
        var maxHeight = pHidden.outerHeight();
        if (maxHeight <= minHeight + 2 * lineHeight) { // короткое описание автора (до 7 строк включительно)
            description.find('label.expand-collapse-block').hide();
            description.find('div.expand-collapse-block').hide();
            fog.hide();
            pVisible.css('height', 'auto');
            pVisible.css('margin-bottom', '40px');
            return true;
        } else { // длинное описание автора
            description.find('label.expand-collapse-block').show();
            description.find('div.expand-collapse-block').show();
            pVisible.css('margin-bottom', 0);
            return false;
        }
    }

    tryHideButtons();

    $(window).resize(function () { // при изменении размера окна
        if (tryHideButtons()) { // для коротких описаний автора показываем его полностью, а кнопки сворачивания-разворачивания скрываем
            return;
        }

        // для длинных описаний автора показываем кнопки сворачивания-разворачивания и...
        if (radios.filter('#expanded').is(':checked')) { // в развернутом состоянии
            pVisible.outerHeight(pHidden.outerHeight()); // подгоняем высоту описания автора
        } else { // в свернутом состоянии
            fog.show(); // показываем затуманенность
            pVisible.css('height', '100px'); // и ограничиваем высоту описания автора
        }
    });
});