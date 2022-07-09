import 'package:flutter/widgets.dart';
import 'package:shopping/models/cart-item.model.dart';

class CartBloc extends ChangeNotifier {
  double total = 0;
  var cart = new List<CartItemModel>();

  get() {
    return cart;
  }

  add(CartItemModel item) {
    cart.add(item);
    calculateTotal();
  }

  calculateTotal() {
    total = 0;
    cart.forEach((x) {
      total += (x.price * x.quantity);
    });
    notifyListeners();
  }

  remove(CartItemModel item) {
    cart.removeWhere((x) => x.id == item.id);
    calculateTotal();
  }

  //Verificando Se o Item Já Está No Carrinho
  itemInCart(CartItemModel item) {
    var result = false;
    cart.forEach((x) {
      if (item.id == x.id) result = true;
    });
    return result;
  }

  //Aumenta A Quantidade De Itens No Carrinho
  //O máximo permitido são 10 itens.
  increase(CartItemModel item) {
    if (item.quantity < 10) {
      item.quantity++;
      calculateTotal();
    }
  }
}
