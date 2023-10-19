import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myworkspace/API_integration/API_integration_using_dio/controller/dataController.dart';

class Detailsdata extends StatelessWidget {
  int index;

  Detailsdata({required this.index});
  Datacontroller controller = Get.find<Datacontroller>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("details"),),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(controller.datas[index].id.toString(),style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
            SizedBox(height: 40,),
            Text(controller.datas[index].title!,style: TextStyle(fontSize: 20,fontStyle: FontStyle.italic)),
            SizedBox(height: 40,),
            Text(controller.datas[index].body!,style: TextStyle(fontSize: 15,fontWeight: FontWeight.normal))

          ],
        ),
      ),
    );
  }
}
