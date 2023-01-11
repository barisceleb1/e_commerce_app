import 'package:e_commerce_app/data/repository/populer_product_repo.dart';
import 'package:e_commerce_app/models/products_model.dart';
import 'package:get/get.dart';

class RecommendedProductController extends GetxController{
  final RecommendedProductController recommendedProductRepo;
  PopularProductController({required this.recommendedProductRepo});

  List<dynamic> _recommendedProductList= [];
  List<dynamic> get recommendedProductList => _recommendedProductList;

  bool _isLoaded = false;
  bool get isLoaded => _isLoaded;

  Future<void> getRecommendProductList()async{
    Response response = await recommendProductRepo.getRecommendedProductList();

    if(response.statusCode == 200){
      print("got products");
      _recommendedProductList=[];
      _recommendedProductList.addAll(Product.fromJson(response.body).products);
      print(_popularProductList);
      _isLoaded= true;
      update();
    }else{

    }

  }
}