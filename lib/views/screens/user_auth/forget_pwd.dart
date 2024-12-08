import 'package:ecommerce_app/custom_widget/elevated_button.dart';
import 'package:ecommerce_app/custom_widget/forget_custom.dart';
import 'package:ecommerce_app/custom_widget/text_field_widget.dart';
import 'package:ecommerce_app/custom_widget/top_header_widget.dart';
import 'package:ecommerce_app/helpers/app_colors.dart';
import 'package:ecommerce_app/helpers/app_images_path.dart';
import 'package:ecommerce_app/provider/auth_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
class ForgetPwd extends StatelessWidget {
  const ForgetPwd({super.key});

  @override
  Widget build(BuildContext context) {
    AppImagesPath appImagesPath = AppImagesPath();
    TextEditingController emailController = TextEditingController();
    GlobalKey<FormState> registerFormKey = GlobalKey<FormState>();
    return Scaffold(
      backgroundColor:AppColors.whiteColor,
      appBar: AppBar(
        backgroundColor: AppColors.whiteColor,
        leading: Image(image: AssetImage(appImagesPath.backArrowIcon)),
      ),
      body: Form(
        key: registerFormKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

          const  Padding(
              padding:  EdgeInsets.all(20.0),
              child: TopHeaderWidget(text: 'Forgot Password',),
            ),
         const    SizedBox(height: 70,),
          const   Padding(
              padding: EdgeInsets.only(left: 20,right: 20),
              child: ForgetCustom(text: 'Please enter your valid email address. You will receive a link to create a new password via Email',),
            ),
         SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.only(left: 5),
              child: Consumer<AuthProvider>(
                builder: (child, authEmail, ctx) {
                  return TextFieldWidget(
                    controller: emailController,
                    labelText: 'Email',
                    validator: (eVal) {
                      if (eVal == null || eVal.isEmpty || !authEmail.isEmailValid) {
                        return "Please enter a valid email address";
                      }
                      return null;
                    },
                    onChanged: (val) {
                      authEmail
                          .setEmail(val); // Validate email as user types
                    },
                    suffixIcon: authEmail.isEmailValid
                        ? Container(
                      width: 20,
                      height: 20,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(
                              appImagesPath.outlineTickIcons),
                        ),
                      ),
                    )
                        :  Container(
                      width: 20,
                      height: 20,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(
                              appImagesPath.xIcons),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
            SizedBox(height: 30,),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: ElevatedBtn(
                text: 'Send ',
                onPressed: () {
                  if (registerFormKey.currentState!.validate()) {}
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
