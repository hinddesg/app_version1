import 'package:flutter/material.dart';
import 'package:professional_ecommerce/features/authentication/screens/onboarding/widgets/onboarding_dot_navigation.dart';
import 'package:professional_ecommerce/features/authentication/screens/onboarding/widgets/onboarding_nex_button.dart';
import 'package:professional_ecommerce/features/authentication/screens/onboarding/widgets/onboarding_page.dart';
import 'package:professional_ecommerce/features/authentication/screens/onboarding/widgets/onboarding_skip.dart';
import 'package:professional_ecommerce/utils/constants/image_strings.dart';
import 'package:professional_ecommerce/utils/constants/text_strings.dart';
import 'package:get/get.dart';
import '../../controllers_onboarding/onboarding_controller.dart';


class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(OnBoardingController());

    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: controller.pageController,
            onPageChanged: controller.updatePageIndicator,
            children:  const [
              OnBoardingPage(
                image: CustomImages.onBoardingImage1,
                title: CustomTexts.onBoardingTitle1,
                subTitle: CustomTexts.onBoardingSubTitle1,
              ),
              OnBoardingPage(
                image: CustomImages.onBoardingImage2,
                title: CustomTexts.onBoardingTitle2,
                subTitle: CustomTexts.onBoardingSubTitle2,
              ),
              OnBoardingPage(
                image: CustomImages.onBoardingImage3,
                title: CustomTexts.onBoardingTitle3,
                subTitle: CustomTexts.onBoardingSubTitle3,
              ),
            ],
          ),

       /// Skip Button
        const OnBoardingSkip(),

      /// OnBoarding Dot Navigation
        const OnBoardingDotNavigation(),

    /// Circle Button
         const OnBoardingNexButton(),
        ],
      ),
    );
  }
}










