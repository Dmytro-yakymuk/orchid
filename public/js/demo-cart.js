$(function () {

  // Delete product from cart
  $(document).on('click', '.remove', function (e) {
    e.preventDefault();
    var id = $(this).parents('.delete_cart').find('.cart_id_delete').val();
    deleteCart(id);
  });

  function deleteCart(id) {
    $.ajax({
      url: "destroyCart",
      data: { id: id },
    }).done(function (result) {
      notifyDeleteCart()
      $('#cart-product').html(result);
    });
  }


  function notifyDeleteCart() {
    $.notify({
      title: 'Product',
      icon: 'lnr lnr-cart',
      message: "delete from cart"
    }, {
        type: 'danger',
        animate: {
          enter: 'animated fadeInUp',
          exit: 'animated fadeOut'
        },
        placement: {
          from: "bottom",
          align: "right"
        },
        offset: 20,
        spacing: 10,
        z_index: 1031,
      });
  };


  // Add coupon to cart
  $(document).on('click', '#coupon-add', function (e) {
    e.preventDefault();
    var value = $('.form-control').val();
    couponAdd(value);
  });

  function couponAdd(value) {
    $.ajax({
      url: "couponAdd",
      data: { coupon_code: value },
    }).done(function (result) {
      notifyAddCoupon(value);
      $('#cart-product').html(result);
    });
  }

  // Delete coupon from cart
  $(document).on('click', '#coupon-delete', function (e) {
    e.preventDefault();
    couponDelete();
  });

  function couponDelete() {
    $.ajax({
      url: "couponDelete"
    }).done(function (result) {
      $('#cart-product').html(result);
      notifyDeleteCoupon()
    });
  }


  function notifyAddCoupon(productName) {
    $.notify({
      title: productName,
      icon: 'lnr lnr-cart',
      message: "is added to card"
    }, {
        type: 'success',
        animate: {
          enter: 'animated fadeInUp',
          exit: 'animated fadeOut'
        },
        placement: {
          from: "bottom",
          align: "right"
        },
        offset: 20,
        spacing: 10,
        z_index: 1031,
      });
  };

  function notifyDeleteCoupon() {
    $.notify({
      title: 'Coupon',
      icon: 'lnr lnr-cart',
      message: "delete from cart"
    }, {
        type: 'danger',
        animate: {
          enter: 'animated fadeInUp',
          exit: 'animated fadeOut'
        },
        placement: {
          from: "bottom",
          align: "right"
        },
        offset: 20,
        spacing: 10,
        z_index: 1031,
      });
  };

});


