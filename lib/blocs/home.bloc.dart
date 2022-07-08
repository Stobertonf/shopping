import 'package:flutter/widgets.dart';
import '../models/product-list-item.model.dart';
import '../repositories/product.repository.dart';
import '../models/category-list-item.model.dart';
import '../repositories/category.repository.dart';

class HomeBloc extends ChangeNotifier {
  final categoryRepository = new CategoryRepository();
  final productRepository = new ProductRepository();

  String selectedCategory =
      'todos'; //Local onde mostra que a categoria está selecionanda ou não.
  List<ProductListItemModel> products;
  List<CategoryListItemModel> categories;

  HomeBloc() {
    getCategories();
    getProducts();
  }

  getCategories() {
    categoryRepository.getAll().then((data) {
      this.categories = data;
      notifyListeners();
    });
  }

  getProducts() {
    productRepository.getAll().then((data) {
      this.products = data;
      notifyListeners();
    });
  }

  getProductsByCategory() {
    productRepository.getByCategory(selectedCategory).then((data) {
      this.products = data;
      notifyListeners();
    });
  }

  changeCategory(tag) {
    selectedCategory = tag;
    products = null;
    getProductsByCategory();
    notifyListeners();
  }
}
