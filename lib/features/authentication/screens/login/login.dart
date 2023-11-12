import 'package:dee_store/common/styles/spacing_styles.dart';
import 'package:dee_store/utils/constants/colors.dart';
import 'package:dee_store/utils/constants/image_strings.dart';
import 'package:dee_store/utils/constants/sizes.dart';
import 'package:dee_store/utils/constants/text_strings.dart';
import 'package:dee_store/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {

    final dark = THelperFunctions.isDarkMode(context);

    return Scaffold(
      body: SingleChildScrollView(
        child: Padding( 
          padding: TSpacingStyles.paddingWithAppBarHeight,
          child: Column(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // logo Title
                  Image(
                  height: 150,
                  image: AssetImage(dark ? TImages.lightAppLogo : TImages.darkAppLogo)
                  ),

                Text(TTexts.loginTitle, style: Theme.of(context).textTheme.headlineMedium,),

                const SizedBox(height: TSizes.sm,),

                Text(TTexts.loginSubTitle, style: Theme.of(context).textTheme.bodyMedium,)
                ],
              ),

              Form(
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: TSizes.spaceBtwSections),
                  child: Column(
                  children: [
                    TextFormField(
                      decoration: const InputDecoration(
                        prefixIcon: Icon(Iconsax.direct_right),
                        labelText: TTexts.email
                      ),
                    ),
                
                    const SizedBox(height: TSizes.spaceBtwInputFields,),
                
                    TextFormField(
                      decoration: const InputDecoration(
                        prefixIcon: Icon(Iconsax.password_check),
                        labelText: TTexts.password,
                        suffix: Icon(Iconsax.eye_slash)
                      ),
                    ),
                
                    const SizedBox(height: TSizes.spaceBtwInputFields,),
                
                    Row(
                      children: [
                        Row(
                          children: [
                            Checkbox(value: true, onChanged: (value){}),
                            const Text(TTexts.rememberMe)
                          ],
                        ),
                
                        // forgot password
                        TextButton(onPressed: (){}, child: const Text(TTexts.forgetPassword)),
                      ],
                    ),
                
                    const SizedBox(height: TSizes.spaceBtwSections,),
                
                    SizedBox(width: double.infinity, child: ElevatedButton(onPressed: (){}, child: const Text(TTexts.signIn), ),),
                    const SizedBox(height: TSizes.spaceBtwItems,),
                    SizedBox(width: double.infinity, child: OutlinedButton(onPressed: (){}, child: const Text(TTexts.createAccount),),)
                
                  ],
                              ),
                )
                ),


                // divider
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,

                  children: [
                    Flexible(child: Divider(color: dark ? TColors.darkGrey : TColors.grey, thickness: 0.5, indent: 60, endIndent: 5,)),
                    Text(TTexts.orSignInWith.capitalize!, style: Theme.of(context).textTheme.labelMedium,),
                    Flexible(child: Divider(color: dark ? TColors.darkGrey : TColors.grey, thickness: 0.5, indent: 60, endIndent: 5,)),
                  ],
                ),


                const SizedBox(height: TSizes.spaceBtwSections,),


                // factor
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: TColors.grey),
                        borderRadius: BorderRadius.circular(180)
                      ),
                      child: IconButton(
                        onPressed: (){},
                        icon: const Image(
                          width: TSizes.iconMd,
                          height: TSizes.iconMd,
                          image: AssetImage(TImages.google),
                        ),
                      )
                    ),

                    const SizedBox(width: TSizes.spaceBtwItems,),

                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: TColors.grey),
                        borderRadius: BorderRadius.circular(180)
                      ),
                      child: IconButton(
                        onPressed: (){},
                        icon: const Image(
                          width: TSizes.iconMd,
                          height: TSizes.iconMd,
                          image: AssetImage(TImages.facebook),
                        ),
                      )
                    ),
                  ],
                )

            ],
          ),
          ),
      ),
    );
  }
}