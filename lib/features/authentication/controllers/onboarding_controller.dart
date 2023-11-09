import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class OnBoardingController extends GetxController {
  static OnBoardingController get instance => Get.find();


  // variables
  final pageController = PageController();
  Rx<int> currentPageIndex = 0.obs;


  // update current index when page scroll
  void updatePageIndicator(index){
    currentPageIndex = index;
  }

  // jump to specific dot selected page
  void dotNavigationClick(index){
    currentPageIndex.value = index;
    pageController.jumpTo(index);
  }

  // jump to next page
  void nextPage(){

    if(currentPageIndex.value == 2){
      // go to login
    } else {
      int page = currentPageIndex.value + 1;
      pageController.jumpToPage(page);
    }

  }

  // jump to latest page
  void skipPage(){
    currentPageIndex.value = 2;
    pageController.jumpToPage(2);
  }

}