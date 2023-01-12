
import 'package:e_commerce_app/pages/food/popular_food_detail.dart';
import 'package:e_commerce_app/pages/food/recommended_food_detail.dart';
import 'package:e_commerce_app/pages/home/main_food_page.dart';
import 'package:get/get.dart';

class RouteHelper{
static const String initial = "/";
static const String popularFood= "/popular-food";
static const String recommendedFood= "/recommended-food";
static String getPopularFood()=>'$popularFood';
static String getInitial()=>'$initial';
static String getRecommendedFood()=>'$recommendedFood';
static List<GetPage> routes = [

  GetPage(name: "/", page: ()=>MainFoodPage()),
  GetPage(name: popularFood, page: ()=>PopularFoodDetail(),transition: Transition.fadeIn),
  GetPage(name: recommendedFood, page: ()=>RecommendedFoodDetail(),transition: Transition.fadeIn),

];

}