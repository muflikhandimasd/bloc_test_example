part of 'product_bloc.dart';

abstract class ProductEvent extends Equatable {
  final Product product;
  final List<Product> listProduct;
  const ProductEvent(
      {this.product = const Product('', 0), this.listProduct = const []});
}

class AddProduct extends ProductEvent {
  const AddProduct(Product product) : super(product: product);
  @override
  List<Object?> get props => [product];
}

class AddListProduct extends ProductEvent {
  const AddListProduct(List<Product> listProduct)
      : super(listProduct: listProduct);
  @override
  List<Object?> get props => [listProduct];
}

class RemoveListProduct extends ProductEvent {
  const RemoveListProduct(List<Product> listProduct)
      : super(listProduct: listProduct);
  @override
  List<Object?> get props => [listProduct];
}

class RemoveProduct extends ProductEvent {
  const RemoveProduct(Product product) : super(product: product);
  @override
  List<Object?> get props => [product];
}
