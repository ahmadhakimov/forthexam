class Product {
  String _name;
  double _price;
  Product(this._name, this._price);
  String get name => _name;
  set name(String name) {
    _name = name;
  }
  double get price => _price;
  set price(double price) {
    if (price > 0) {
      _price = price;
    } else {
      print('Invalid price. Price must be greater than zero.');
    }
  }

  void dp() {
    print(' Name: $_name');
    print(' Price: \$$_price');
  }
}

List<Product> fp(List<Product> products, bool Function(Product) condition) {
  List<Product> filteredProducts = [];
  for (var product in products) {
    if (condition(product)) {
      filteredProducts.add(product);
    }
  }
  return filteredProducts;
}

void main() {
  var product1 = Product('car', 1500);
  var product2 = Product('motor', 800);
  var product3 = Product('byke', 600);

  product1.dp();
  product2.dp();
  product3.dp();

  List<Product> productList = [product1, product2, product3];
  List<Product> expensiveProducts = fp(productList, (product) => product.price > 700);

  print('\nResult after the Products is (Price > 700):');
  for (var product in expensiveProducts) {
    product.dp();
  }
}