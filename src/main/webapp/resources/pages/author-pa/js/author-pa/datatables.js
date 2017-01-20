$(function () {
    // Плагин dataTables скорректирован, поэтому теперь ему можно передать классы ниже
    $.extend($.fn.DataTable.ext.classes, {
        skewInner: "skew-inner",
        skewOuter: "skew-outer"
    });

    $('.table').DataTable({
        pagingType: "full_numbers",
        language: {
            "url": "json/vb/dataTables.ru.json"
        },
        lengthMenu: [ 5, 10, 15 ],
        drawCallback: function () {
            var paginateButtons = $(this).nextAll('.dataTables_paginate').find('.paginate_button');
            if (paginateButtons.size() > 5) {
                paginateButtons.show();
            } else {
                paginateButtons.hide();
            }
        }
    });
});