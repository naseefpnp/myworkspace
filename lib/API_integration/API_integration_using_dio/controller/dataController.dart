import 'package:flutter/animation.dart';
import 'package:get/get.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

import '../model/datamodel.dart';
import '../service/dioService.dart';

class Datacontroller extends GetxController {
  RxList<DataModel> datas = RxList(); // this list is observable
  RxBool isLoading = true.obs;
  RxBool isListDown = false.obs;
  RxBool isNetConnected = true.obs;

  var url = "https://jsonplaceholder.typicode.com/posts";
  var itemController = ItemScrollController();
  isInternetConnected() async {
    isNetConnected.value = await InternetConnectionChecker().hasConnection;
  }

// to get all the data's from the api
  fetchData() async {
    isInternetConnected();
    isLoading.value = true;
    var response = await Dioservice().getData(url);
    if (response.statusCode == 200) {
      response.data.forEach((element) {
        datas.add(DataModel.fromJson(element));
      });
      isLoading.value = false;
    }
  }

  // Scroll listview to down
  scrollTODown(){
    itemController.scrollTo(index: datas.length, duration: Duration(seconds: 2),
    curve: Curves.easeInOutQuart
    );
    isListDown.value = true;
  }
  // Scroll listview to up
  scrollToUp(){
    itemController.scrollTo(index: 0, duration: Duration(seconds: 2 ),
    curve: Curves.easeInOutQuart);
    isListDown.value = false;
  }

  @override
  void onInit() {
    fetchData();
    isInternetConnected();
    super.onInit();
  }

}
