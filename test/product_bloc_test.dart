import 'package:bloc_test_example/bloc/product_bloc.dart';
import 'package:bloc_test_example/model/product.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:bloc_test/bloc_test.dart';

void main() {
  group('Product Bloc Test', () {
    blocTest('Initial Value', build: () => ProductBloc(), expect: () => []);

    blocTest('Add Product',
        build: () => ProductBloc(),
        act: (ProductBloc bloc) async {
          bloc.add(const AddProduct(Product('Apel', 2000)));
        },
        expect: () => [
              const ProductLoaded([Product('Apel', 2000)])
            ]);
    blocTest('Add 2 Products',
        build: () => ProductBloc(),
        act: (ProductBloc bloc) async {
          bloc
            ..add(AddProduct(Product('Apel', 2000)))
            ..add(AddProduct(Product('Durian', 5000)));
        },
        expect: () => [
              ProductLoaded([Product('Apel', 2000)]),
              ProductLoaded([Product('Apel', 2000), Product('Durian', 5000)]),
            ]);
  });
}
