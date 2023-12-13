import 'package:demo/models/ProductModel.dart';
import 'package:demo/repositories/ProductRepository.dart';

class ProductProvider {
  final ProductRepository _productRepository;
  ProductProvider(this._productRepository);

  Future<List<ProductModel>> getDiscountProducts() async {
    var products = await _productRepository.getDiscountedProducts();
    return products.map((product) => ProductModel.fromJson(product)).toList();
  }

  Future<ProductModel> getProductById(int productId) async {
    var product = await _productRepository.getProductId(productId);

    return ProductModel.fromJson(product);
  }
}
