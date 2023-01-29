import 'dart:ui';

import 'package:e_commerce_app/controllers/cart_controller.dart';
import 'package:e_commerce_app/data/repository/populer_product_repo.dart';
import 'package:e_commerce_app/models/products_model.dart';
import 'package:e_commerce_app/utils/app_constants.dart';
import 'package:e_commerce_app/utils/color.dart';
import 'package:get/get.dart';

class PopularProductController extends GetxController{
final PopularProductRepo popularProductRepo;
PopularProductController({required this.popularProductRepo});

List<dynamic> _popularProductList= [];
List<dynamic> get popularProductList => _popularProductList;
late CartController _cart;

bool _isLoaded = false;
bool get isLoaded => _isLoaded;

int _quantity=0;
int _inCartItems =0;
int get quantity => _quantity;
int get inCartItems =>_inCartItems+_quantity;

Future<void> getPopularProductList()async{
Response response = await popularProductRepo.getPopularProductList();




if(response.statusCode == 200){
  print("got products");
  _popularProductList=[];
  _popularProductList.addAll(Product.fromJson(response.body).products);
  print(_popularProductList);
  _isLoaded= true;
  update();
}else{

}

}

void setQuantity(bool isIncrement){
  if(isIncrement){
    _quantity=checkQuantity(_quantity+1);
    print("+Click ${_quantity}");
  }else{
    _quantity= checkQuantity(_quantity-1);
    print("-Click ${_quantity}");
  }
  update();
}

int checkQuantity(int quantity) {
  if((_inCartItems+quantity) <0){
    Get.snackbar("Product count", "You can't reduce more",duration: Duration(seconds: 1),backgroundColor:AppColors.tealColor );
    return 0;
  }
  if(_inCartItems>0){
    _quantity = _inCartItems;
    return quantity;
  }
  else if((_inCartItems+quantity)>20){
    Get.snackbar("Product count", "You can't add more",duration: Duration(seconds: 1),
    backgroundColor: AppColors.tealColor);
    return 20;
  }else {
    return quantity;
  }
  }

  void initProduct(ProductModel product, CartController cart){
  _quantity=0;
  _inCartItems=0;
  _cart = cart;
  var exist= false;
  exist= _cart.existInCart(product);
  print("exist or not "+exist.toString());

  if(exist){
    _inCartItems=_cart.getQuantity(product);
  }
  print("the quantity in the cart is"+_inCartItems.toString());
  }

  void addItem(ProductModel product){

    _cart.addItem(product, _quantity);
    _quantity=0;
    _inCartItems=_cart.getQuantity(product);

    _cart.items.forEach((key,value){
print("The id is"+value.id.toString()+"The quantity is"+value.quantity.toString());
    });
update();
  }

  int get totalItems{
  return _cart.totalItems;


  }

}

