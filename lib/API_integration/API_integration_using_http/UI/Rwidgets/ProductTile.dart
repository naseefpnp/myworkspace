import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:myworkspace/API_integration/API_integration_using_http/model/ProductModel.dart';

class ProductTile extends StatelessWidget {
  final ProductModel ProductT;
  ProductTile (this.ProductT);

  @override
  Widget build(BuildContext context) {
    return Card(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 89,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(5)),
              ),
              child: CachedNetworkImage(
                imageUrl: ProductT.image!,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(height: 10,),
            Text(ProductT.title!,style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,),
            maxLines: 2,),
            SizedBox(height: 5,),
            Text('${ProductT.price}\$',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,))
          ],
      ),
    );
  }
}
