import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/state_manager.dart';

class Controller extends GetxController {
  RxList<String> images = [
    "https://www.izmirmekanrehberi.com/images/shabby-street-foods-bornova-1.jpg",
    "https://www.eatthis.com/wp-content/uploads/sites/4//media/images/ext/823156417/strawberries-fruit-veggies-youre-eating-wrong.jpg?quality=82&strip=all&w=1024",
    "https://ychef.files.bbci.co.uk/1376x774/p08hq2br.jpg",
    "https://www.izmirmekanrehberi.com/images/shabby-street-foods-bornova-1.jpg",
    "https://www.eatthis.com/wp-content/uploads/sites/4//media/images/ext/823156417/strawberries-fruit-veggies-youre-eating-wrong.jpg?quality=82&strip=all&w=1024",
    "https://ychef.files.bbci.co.uk/1376x774/p08hq2br.jpg",
    "https://www.izmirmekanrehberi.com/images/shabby-street-foods-bornova-1.jpg",
    "https://www.eatthis.com/wp-content/uploads/sites/4//media/images/ext/823156417/strawberries-fruit-veggies-youre-eating-wrong.jpg?quality=82&strip=all&w=1024",
    "https://ychef.files.bbci.co.uk/1376x774/p08hq2br.jpg",
    "https://www.izmirmekanrehberi.com/images/shabby-street-foods-bornova-1.jpg",
    "https://www.eatthis.com/wp-content/uploads/sites/4//media/images/ext/823156417/strawberries-fruit-veggies-youre-eating-wrong.jpg?quality=82&strip=all&w=1024",
    "https://ychef.files.bbci.co.uk/1376x774/p08hq2br.jpg",
  ].obs;
  PageController pageController = PageController(viewportFraction: 0.7);
  RxInt pageIndex = 0.obs;

  changePage({required int index}) {
    pageIndex.value = index;
    update();
  }

  nextPage() {
    pageController.nextPage(
        duration: Duration(milliseconds: 500), curve: Curves.easeInOut);
    update();
  }

  lastPage() {
    pageController.previousPage(
        duration: Duration(milliseconds: 500), curve: Curves.easeInOut);
    update();
  }
  
}
