import 'package:bloc/bloc.dart';
import 'package:bloc_test_example/model/product.dart';
import 'package:equatable/equatable.dart';

part 'product_event.dart';
part 'product_state.dart';

class ProductBloc extends Bloc<ProductEvent, ProductState> {
  ProductBloc() : super(ProductInitial()) {
    on<ProductEvent>((event, emit) {
      if (event is AddProduct) {
        if (state is ProductInitial) {
          emit(ProductLoaded([event.product]));
        } else {
          ProductLoaded((state as ProductLoaded).products + [event.product]);
        }
      } else if (event is RemoveProduct) {
        if (state is ProductInitial) {
          emit(state);
        } else {
          emit(ProductLoaded((state as ProductLoaded)
              .products
              .where((item) => item != event.product)
              .toList()));
        }
      }
    });
  }
}
