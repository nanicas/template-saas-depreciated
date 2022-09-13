var MODALITY_CREATE = function () {

    var state;

    function load() {}

    return {load};
};

window.onload = function () {
    MODALITY_FORM.load();
    MODALITY_CREATE().load();
}