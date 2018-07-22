$(function () {

    // Delete product from cart
    $(document).on('click', '.remove', function (e) {
        e.preventDefault();
        var id = $(this).parents('.delete_wish').find('.wish_id_delete').val();
        deleteWish(id);
    });

    function deleteWish(id) {
        $.ajax({
            url: "destroyWish",
            data: { id: id },
        }).done(function (result) {
            $('.woocommerce').html(result);
        });
    }


});


