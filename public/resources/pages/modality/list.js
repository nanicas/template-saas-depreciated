var MODALITY_LIST = function () {

    var state = {};

    function load() { }

    return {load};
};

window.onload = function () {
    LIST_CRUD.load();
    MODALITY_LIST().load();
}