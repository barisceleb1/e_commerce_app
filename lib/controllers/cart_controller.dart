import 'package:e_commerce_app/data/repository/cart_repo.dart';
import 'package:e_commerce_app/models/cart_model.dart';
import 'package:e_commerce_app/models/products_model.dart';
import 'package:e_commerce_app/utils/color.dart';
import 'package:get/get.dart';

class CartController extends GetxController {
  final CartRepo cartRepo;
  CartController({required this.cartRepo});
Map<int , CartModel> _items= {};
Map<int, CartModel> get items=> _items;

void addItem(ProductModel product, int quantity){
  var totalQuantity=0;
  if(_items.containsKey(product.id!)){
    _items.update(product.id!, (value) {
      totalQuantity=value.quantity!+quantity;
      return CartModel(
        id:value.id,
        name:value.name,
        price:value.price,
        img:value.img,
        quantity:value.quantity!+quantity,
        isExist:true,
        time:DateTime.now().toString(),
        product: product,

      );
    });
    if(totalQuantity<=0){
      _items.remove(product.id);
    }

  }else{
if(quantity>0){
  _items.putIfAbsent(product.id!, () {
    print("adding item to the cart id"+product.id!.toString()+"quantity"+quantity.toString());
    return CartModel(
      id:product.id,
      name:product.name,
      price:product.price,
      img:product.img,
      quantity:quantity,
      isExist:true,
      time:DateTime.now().toString(),
      product: product,

    );
}


    );
  }else{
  Get.snackbar("Product count", "You should at least add an item in the cart!",duration: Duration(seconds: 1),
  backgroundColor: AppColors.mainColor);
  }
}
update();



}

bool existInCart(ProductModel product){
if(_items.containsKey(product.id)){
  return true;
}
return false;


}

int getQuantity(ProductModel product){
  var quantity=0;
  if(_items.containsKey(product.id)){
    _items.forEach((key, value) {
      if(key==product.id){
        quantity= value.quantity!;
      }
    });
  }
  return quantity;
}

int get totalItems{
var totalQuantity=0;
_items.forEach((key, value) {
  totalQuantity += value.quantity!;
 // totalQuantity =totalQuantity+value.quantity!;
});

return totalQuantity;

}

List<CartModel> get getItems{
return _items.entries.map((e){
  return e.value;
}).toList();

}
}