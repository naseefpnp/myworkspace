import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:myworkspace/API_integration/API_integration_using_dio/controller/dataController.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';
import 'package:top_snackbar_flutter/custom_snack_bar.dart';
import 'package:top_snackbar_flutter/top_snack_bar.dart';

import 'DetailsData.dart';

class Datahome extends StatelessWidget {
  Datacontroller controller = Get.put(Datacontroller());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Home"),
          centerTitle: true,
        ),
        body: Obx(() =>
            SizedBox(
                height: double.infinity,
                width: double.infinity,
                child: controller.isNetConnected.value
                    ? (controller.isLoading.value
                    ? Center(child: CircularProgressIndicator())
                    : getData())
                    : noInternet(context))),
        floatingActionButton: Obx(() =>
        controller.isNetConnected.value
            ?  buildFAB():Container()),);
  }

  RefreshIndicator getData() {
    return RefreshIndicator(
        child: ScrollablePositionedList.builder(
          itemScrollController: controller.itemController,
            physics: BouncingScrollPhysics(),
            itemCount: controller.datas.length,
            itemBuilder: (context, index) {
              return InkWell(
                onTap: () => Get.to(Detailsdata(index: index)),
                child: Card(
                  child: ListTile(
                    leading: Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: Colors.blueAccent,
                      ),
                      child: Center(child: Text(controller.datas[index].id.toString())),
                    ),
                    title: Text(
                      controller.datas[index].title!,
                      style:
                      TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                    ),
                    subtitle: Text(controller.datas[index].body!,
                        style: TextStyle(
                            fontSize: 25, fontStyle: FontStyle.italic)),
                  ),
                ),
              );
            }),
        onRefresh: () {
          return controller.fetchData();
        });
  }

  Center noInternet(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            width: 100,
            height: 100,
            child: CircularProgressIndicator(),
          ),
          MaterialButton(color: Colors.blueAccent, onPressed: () async {
            if (await InternetConnectionChecker().hasConnection == true) {
              controller.fetchData();
            } else {
              showTopSnackBar(Overlay.of(context),
                  const CustomSnackBar.error(
                      message: "No Internet Connection Available, try again")
              );
            }
          })
        ],
      ),
    );
  }

  FloatingActionButton buildFAB() {
    return FloatingActionButton(onPressed: () {
      controller.isListDown.value ?
      controller.scrollToUp() :
      controller.scrollTODown();
    },
        child: FaIcon(controller.isListDown.value
        ? FontAwesomeIcons.arrowUp
        : FontAwesomeIcons.arrowDown
    ),);
  }
}

void main() {
  runApp(GetMaterialApp(
    home: Datahome(),
  ));
}
