import 'dart:io';

import 'package:get/get.dart';
import 'package:myworkspace/API_integration/API_integration_using_http/service/APIservice.dart';

class productController extends GetxController{
  var isLoading = true.obs;
  // obs = observable
  var ProductList = [].obs;

  @override
  void onInit() {
    getProducts();
    super.onInit();
    
  }

  void getProducts() async {
    try {
      isLoading(true);
      var products = await httpService.fetchProducts();
      if (products != null) {
        ProductList.value = products;
      }
    }catch(e){
      print(e);
    }finally{
      isLoading (false);
    }
  }
}