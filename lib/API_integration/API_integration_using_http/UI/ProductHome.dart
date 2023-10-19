import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myworkspace/API_integration/API_integration_using_http/controller/productController.dart';

import 'Rwidgets/ProductTile.dart';

class ProductHome extends StatelessWidget {
  final productController product = Get.put(productController());


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("home"),),
    body: SizedBox(
      child: Obx(() {
        if(product.isLoading.value){
          return CircularProgressIndicator();
        }else{
          return GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
              itemBuilder: (context,index){
            return ProductTile(product.ProductList[index]);
              });
        }
      }),
    ),
    );
  }
}
void main(){
  runApp(GetMaterialApp(home: ProductHome(),));
}