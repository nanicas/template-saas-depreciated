var MODALITY_SHOW = function () {

    var state;

    function load() {}

    return {load};
};

window.onload = function () {
    MODALITY_FORM.load();
    MODALITY_SHOW().load();
}