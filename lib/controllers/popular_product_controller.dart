import 'package:e_commerce_app/data/repository/populer_product_repo.dart';
import 'package:e_commerce_app/models/products_model.dart';
import 'package:get/get.dart';

class PopularProductController extends GetxController{
final PopularProductRepo popularProductRepo;
PopularProductController({required this.popularProductRepo});

List<dynamic> _popularProductList= [];
List<dynamic> get popularProductList => _popularProductList;

bool _isLoaded = false;
bool get isLoaded => _isLoaded;

int _quantity=0;
int get quantity => _quantity;

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

    _quantity=_quantity+1;
    print("Tiklandi ${_quantity}");
  }else{
    _quantity= _quantity-1;
  }
  update();
}

}