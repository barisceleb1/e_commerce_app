import 'package:e_commerce_app/data/repository/cart_repo.dart';
import 'package:e_commerce_app/models/cart_model.dart';
import 'package:e_commerce_app/models/products_model.dart';
import 'package:get/get.dart';

class CartController extends GetxController {
  final CartRepo cartRepo;
  CartController({required this.cartRepo});
Map<int , CartModel> _items= {};

void addItem(ProductModel product, int quantity){
_items.putIfAbsent(product.id!, () => CartModel(
    id:product.id,
    name:product.name,
    price:product.price,
    img:product.img,
    quantity:quantity,
    isExist:true,
    time:DateTime.now().toString(),

));

}


}