import 'package:dee_store/features/authentication/screens/login/login.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class OnBoardingController extends GetxController {
  static OnBoardingController get instance => Get.find();


  // variables
  final pageController = PageController();
  int currentPageIndex = 0;


  // update current index when page scroll
  void updatePageIndicator(index){
    currentPageIndex = index;
  }

  // jump to specific dot selected page
  void dotNavigationClick(index){
    currentPageIndex = index;
    pageController.jumpTo(index);
  }

  // jump to next page
  void nextPage(){

    if(currentPageIndex == 2){
      // go to login
      Get.offAll(const LoginScreen());
    } else {
      int page = currentPageIndex + 1;
      pageController.jumpToPage(page);
    }

  }

  // jump to latest page
  void skipPage(){
    currentPageIndex = 2;
    pageController.jumpToPage(2);
  }

}