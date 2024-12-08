import 'package:ecommerce_app/custom_widget/elevated_button.dart';
import 'package:ecommerce_app/custom_widget/icon_widget.dart';
import 'package:ecommerce_app/custom_widget/social_account_widget.dart';
import 'package:ecommerce_app/custom_widget/top_header_widget.dart';
import 'package:ecommerce_app/helpers/app_colors.dart';
import 'package:ecommerce_app/helpers/app_images_path.dart';
import 'package:ecommerce_app/provider/auth_provider.dart';
import 'package:ecommerce_app/views/screens/user_auth/sign_in.dart';
import 'package:ecommerce_app/views/screens/visual_finder/visual_search.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ecommerce_app/custom_widget/text_field_widget.dart';
import 'package:provider/provider.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    AppImagesPath imagesPath = AppImagesPath();

    GlobalKey<FormState> registerFormKey = GlobalKey<FormState>();
    TextEditingController nameController = TextEditingController();
    TextEditingController emailController = TextEditingController();
    TextEditingController passwordController = TextEditingController();

    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: AppColors.whiteColor,
        leading: Image(image: AssetImage(imagesPath.backArrowIcon)),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 20),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 24),
                child: TopHeaderWidget(
                  text: 'Sign Up',
                ),
              ),
              const SizedBox(height: 50),
              Form(
                key: registerFormKey,
                child: Column(
                  children: [
                    // Name field
                    Consumer<AuthProvider>(
                      builder: (child, authValue, ctx) {
                        return TextFieldWidget(
                          controller: nameController,
                          labelText: 'Name',
                          keyboardType: TextInputType.name,
                          onChanged: (val) {
                            authValue.updateName(val);
                          },
                          validator: (val) {
                            if (val == null ||
                                val.isEmpty ||
                                !authValue.isNameValid) {
                              return "Please enter minimum 6 characters";
                            }
                            return null;
                          },
                          suffixIcon: authValue.isNameValid
                              ? Container(
                                  width: 20,
                                  height: 20,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image: AssetImage(
                                          imagesPath.outlineTickIcons),
                                    ),
                                  ),
                                )
                              : const SizedBox(),
                        );
                      },
                    ),
                    const SizedBox(height: 20),
                    // Email field
                    Consumer<AuthProvider>(
                      builder: (child, authEmail, ctx) {
                        return TextFieldWidget(
                          controller: emailController,
                          labelText: 'Email',
                          validator: (eVal) {
                            if (eVal == null ||
                                eVal.isEmpty ||
                                !authEmail.isEmailValid) {
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
                                          imagesPath.outlineTickIcons),
                                    ),
                                  ),
                                )
                              : const SizedBox(),
                        );
                      },
                    ),
                    const SizedBox(height: 20),
                    // Password field
                    Consumer<AuthProvider>(
                      builder: (child, authPassword, ctx) {
                        return TextFieldWidget(
                          controller: passwordController,
                          labelText: 'Password',
                          onChanged: (val) {
                            authPassword.setPassword(
                                val); // Validate password as user types
                          },
                          validator: (pVal) {
                            if (pVal == null ||
                                pVal.isEmpty ||
                                !authPassword.isPasswordValid) {
                              return "Password: 6 characters & atleast one special character";
                            }
                            return null;
                          },
                          suffixIcon: authPassword.isPasswordValid
                              ? Container(
                                  width: 20,
                                  height: 20,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image: AssetImage(
                                          imagesPath.outlineTickIcons),
                                    ),
                                  ),
                                )
                              : const SizedBox(),
                        );
                      },
                    ),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,

                      children: [

                        const Text(
                          "Already have an account?",
                          style: TextStyle(
                            color: AppColors.blackColor,
                          ),
                        ),
                        Transform.translate(
                          offset: const Offset(-20, 0), // Adjust value as needed
                          child: IconWidget(
                            image: imagesPath.rightArrowIcons,
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => SignIn(),
                                ),
                              );
                            },
                          ),
                        ),
                      ],
                    ),

                    const SizedBox(
                      height: 5,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: ElevatedBtn(
                        text: 'Sign Up',
                        onPressed: () {
                          if(registerFormKey.currentState!.validate()){
                            Navigator.push(context, MaterialPageRoute(
                                builder: (context)=>VisualSearch(),
                            ));
                          }
                        },
                      ),
                    ),
                    const SizedBox(
                      height: 100,
                    ),
                    const Center(
                        child: Text(
                      "Or sign up with social account",
                      style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w600,
                        fontFamily: "MetroPolis",
                        color: AppColors.blackColor,
                      ),
                    )),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                       mainAxisAlignment: MainAxisAlignment.center,
                       children: [
                         SocialMediaButton(
                           imagePath:imagesPath.facebookLogo,
                           onTap: () {  },
                         ),
                       const  SizedBox(width: 20,),
                         SocialMediaButton(
                           imagePath:imagesPath.googleLogo,
                           onTap: () {  },
                         ),
                       ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
