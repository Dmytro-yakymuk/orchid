'use strict';
$(function () {
  var actionAddToCart = $('.js-action-add-cart');
  var cart = $('.js-widget-shop-cart');
  var itemWishList = $('.js-notify-add-wish-list');

  ((cart.find('.counter').text()) > 0) && cart.addClass('items-added');

  actionAddToCart.each(function () {
    $(this).on('click', function (e) {
      var productName = $(this).closest('.product').find('.product-name').text();
      e.preventDefault();

      var id = $(this).find('.cart_id').val();
      var name = $(this).find('.cart_name').val();
      var price = $(this).find('.cart_price').val();

      updateCart(id, name, price, productName);

      $(this).addClass('is-added');
      setTimeout(function () {
        actionAddToCart.removeClass('is-added');
      }, 1000);
    });
  });


  itemWishList.on("click", function (e) {
    e.preventDefault();

    var id = $(this).parents('.item-wish-list').find('.wish_id').val();
    var name = $(this).parents('.item-wish-list').find('.wish_name').val();
    var price = $(this).parents('.item-wish-list').find('.wish_price').val();

    $(this).addClass('active');
    var productName = $(this).closest('.product').find('.product-name').text();

    storeWish(id, name, price, productName);
    setTimeout(function () {
      itemWishList.removeClass('active');
    }, 1000);

  });

  function updateCart(id, name, price, productName) {
    // show counter if this is the first item added to the cart
    $.ajax({
      url: "updateCart",
      data: { id: id, name: name, price: price },
    }).done(function (result) {
      if (result == 'yes') {

        (!cart.hasClass('items-added')) && cart.addClass('items-added');
        var cartItems = cart.find('.counter'),
          text = parseInt(cartItems.text()) + 1;
        cartItems.text(text);
        notifyAddToCart(productName);
        //alert(result + '///' + id + name + price);

      } else {
        //alert(result + '///' + id + name + price);
        checkedCart(productName);
      }
    });
  };

  function storeWish(id, name, price, productName) {
    // show counter if this is the first item added to the cart
    $.ajax({
      url: "storeWish",
      data: { id: id, name: name, price: price },
    }).done(function (result) {
      if (result == 'yes') {


        addToWishList(productName);
        //alert(result + '///' + id + name + price);

      } else {
        //alert(result + '///' + id + name + price);
        removeFromWishList(productName);
      }
    });
  };

  function notifyAddToCart(productName) {
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

  function checkedCart(productName) {
    $.notify({
      title: productName,
      icon: 'lnr lnr-cart',
      message: "is has cart"
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

  function addToWishList(productName) {
    $.notify({
      title: productName,
      icon: 'lnr lnr-heart',
      message: "is added to wish list"
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
        z_index: 1031
      });
  };

  function removeFromWishList(productName) {
    $.notify({
      title: productName,
      icon: 'lnr lnr-heart',
      message: "is removed from wish list"
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