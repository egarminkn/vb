// Массив соответствий того, какой баннер в пределах какой колонки должен находиться
if (bannerColumnCompliance === undefined) {
    var bannerColumnCompliance = [];
}
bannerColumnCompliance[bannerColumnCompliance.length] = {
    bannerSelector: '.spec',
    columnSelector: '.column-1.links'
};