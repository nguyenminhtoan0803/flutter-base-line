import 'package:demo/models/ProductModel.dart';
import 'package:demo/repositories/ProductRepository.dart';

class ProductProvider {
  final ProductRepository _productRepository;
  ProductProvider(this._productRepository);
  
}
