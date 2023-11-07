import 'package:dee_store/features/authentication/screens/onboarding/widgets/onboarding_page.dart';
import 'package:dee_store/features/authentication/screens/onboarding/widgets/onboarding_skip.dart';
import 'package:dee_store/utils/constants/colors.dart';
import 'package:dee_store/utils/constants/image_strings.dart';
import 'package:dee_store/utils/constants/sizes.dart';
import 'package:dee_store/utils/constants/text_strings.dart';
import 'package:dee_store/utils/device/device_utility.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Horizontal scrollable Pages
          PageView(
            children: const [
              OnBoardingPage(
                image: TImages.onBoardingImage1,
                title: TTexts.onBoardingTitle1,
                subtitle: TTexts.onBoardingSubTitle1,
                 ),

                 OnBoardingPage(
                image: TImages.onBoardingImage2,
                title: TTexts.onBoardingTitle2,
                subtitle: TTexts.onBoardingSubTitle2,
                 ),
                
                OnBoardingPage(
                image: TImages.onBoardingImage3,
                title: TTexts.onBoardingTitle3,
                subtitle: TTexts.onBoardingSubTitle3,
                 )

            ],
          ),

          // skip button
          const OnBoardingSkip(),

          // dot navigation smooth page indicator
          Positioned(
            bottom: TDeviceUtils.getBottomNavigationBarHeight()+25,
            left: TSizes.defaultSpace,

            child: SmoothPageIndicator(
              controller: PageController(), 
              count: 3,
              effect: const ExpandingDotsEffect(activeDotColor: TColors.dark, dotHeight: 6),
              )
)
        ],
      ),
    );
  }
}


