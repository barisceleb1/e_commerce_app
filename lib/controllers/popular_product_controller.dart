import 'dart:ui';

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
    print("Click ${_quantity}");
  }else{
    _quantity= checkQuantity(_quantity-1);
  }
  update();
}

int checkQuantity(int quantity){
  if(quantity <0){
    Get.snackbar("Product count", "You can't reduce more",duration: Duration(seconds: 1),backgroundColor:AppColors.tealColor );
    return 0;
  }else if(quantity>20){
    Get.snackbar("Product count", "You can't add more",duration: Duration(seconds: 1));
    return 20;
  }else {
    return quantity;
  }
  }

  void initProduct(){
  _quantity=0;
  _inCartItems=0;
  }
}

