import 'package:flutter/material.dart';
import 'package:flutter_swiper_card/controller.dart';
import 'package:get/get.dart';

class Home extends StatelessWidget {
  Controller controller = Get.put(Controller());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: appbar(),
      body: Column(
        children: [swiper(), bottomWidgets()],
      ),
    );
  }

  SizedBox bottomWidgets() {
    return SizedBox(
      height: Get.height * 0.3,
      child: Center(
        child: Obx(
          () => Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            mainAxisSize: MainAxisSize.max,
            children: [
              TextButton(
                child: Icon(
                  Icons.keyboard_arrow_left,
                  size: 40,
                  color: Colors.grey[600],
                ),
                onPressed: () {
                  controller.lastPage();
                },
              ),
              cardIndex(),
              TextButton(
                child: Icon(
                  Icons.keyboard_arrow_right,
                  size: 40,
                  color: Colors.grey[800],
                ),
                onPressed: () {
                  controller.nextPage();
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  Text cardIndex() {
    return Text(
      '${controller.pageIndex.value + 1}',
      style: TextStyle(
          fontSize: 40,
          fontWeight: FontWeight.bold,
          color: Colors.red.shade800),
    );
  }

  SizedBox swiper() {
    return SizedBox(
      height: Get.height * 0.5,
      child: Obx(
        () => pageviewWidget(),
      ),
    );
  }

  PageView pageviewWidget() {
    return PageView.builder(
      controller: controller.pageController,
      itemCount: controller.images.length,
      onPageChanged: (i) {
        controller.changePage(index: i);
        controller.update();
      },
      padEnds: false,
      pageSnapping: true,
      itemBuilder: (context, index) {
        return Obx(
          () => animateCardWidget(index),
        );
      },
    );
  }

  AnimatedContainer animateCardWidget(int index) {
    return AnimatedContainer(
      padding: EdgeInsets.only(
        right: 10,
        left: 5,
        bottom: index == controller.pageIndex.value ? 0 : 15,
        top: index == controller.pageIndex.value ? 0 : 15,
      ),
      margin: EdgeInsets.only(left: 5),
      duration: const Duration(milliseconds: 500),
      child: imageWidget(index),
    );
  }

  ClipRRect imageWidget(int index) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(15),
      child: Image.network(
        controller.images[index],
        fit: BoxFit.cover,
      ),
    );
  }

  AppBar appbar() => AppBar(
        title: const Text(
          "Flutter Swiper Card",
          style: TextStyle(color: Colors.black45),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
      );
}
