import 'package:animated_toggle_switch/animated_toggle_switch.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:new_movie_app/core/helpers/app_image_assets.dart';
import 'package:new_movie_app/core/routes/app_routes_name.dart';
import 'package:new_movie_app/core/theming/colors_manager.dart';
import 'package:new_movie_app/core/widgets/custom_button.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsManager.black,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Spacer(),
              Center(child: Image.asset(AssetsManager.logo)),
              SizedBox(height: MediaQuery.of(context).size.height * 0.01),
              //first text field
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  onTapOutside: (event) {
                    FocusManager.instance.primaryFocus!.unfocus();
                  },
                  style: TextStyle(
                      color: ColorsManager.white, fontWeight: FontWeight.w400),
                  decoration: InputDecoration(
                      filled: true,
                      fillColor: ColorsManager.mutedBlack,
                      hintText: "Email",
                      hintStyle: TextStyle(
                          color: ColorsManager.white,
                          fontSize: 16,
                          fontWeight: FontWeight.w400),
                      enabledBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: ColorsManager.mutedBlack),
                          borderRadius: BorderRadius.circular(15)),
                      border: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: ColorsManager.mutedBlack),
                          borderRadius: BorderRadius.circular(15)),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: ColorsManager.gold),
                          borderRadius: BorderRadius.circular(15)),
                      disabledBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: ColorsManager.mutedBlack),
                          borderRadius: BorderRadius.circular(15)),
                      prefixIcon: ImageIcon(
                        AssetImage(AssetsManager.email),
                        color: ColorsManager.white,
                      )),
                ),
              ),
              //second tex tfield
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  onTapOutside: (event) {
                    FocusManager.instance.primaryFocus!.unfocus();
                  },
                  style: TextStyle(
                      color: ColorsManager.white, fontWeight: FontWeight.w400),
                  decoration: InputDecoration(
                      filled: true,
                      fillColor: ColorsManager.mutedBlack,
                      hintText: "Password",
                      hintStyle: TextStyle(
                          color: ColorsManager.white,
                          fontSize: 16,
                          fontWeight: FontWeight.w400),
                      enabledBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: ColorsManager.mutedBlack),
                          borderRadius: BorderRadius.circular(15)),
                      border: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: ColorsManager.mutedBlack),
                          borderRadius: BorderRadius.circular(15)),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: ColorsManager.gold),
                          borderRadius: BorderRadius.circular(15)),
                      disabledBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: ColorsManager.mutedBlack),
                          borderRadius: BorderRadius.circular(15)),
                      prefixIcon: ImageIcon(
                        AssetImage(AssetsManager.lock),
                        color: ColorsManager.white,
                      )),
                ),
              ),
              //forget password text
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.pushReplacementNamed(
                            context, AppRoutesName.reset);
                      },
                      child: Text("Forget Password ?",
                          style: TextStyle(
                            fontSize: 16,
                            color: ColorsManager.gold,
                            fontWeight: FontWeight.w700,
                            decoration: TextDecoration.underline,
                            decorationColor: ColorsManager.gold,
                            fontFamily: GoogleFonts.roboto().fontFamily,
                          )),
                    ),
                  ],
                ),
              ),
              //login button
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: CustomButton(
                  isloading: false,
                  onPressed: () {
                    Navigator.pushReplacementNamed(
                        context, AppRoutesName.userHomeView);
                  },
                  text: "Login",
                ),
              ),
              //Don’t Have Account ? Create One
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Center(
                  child: Text.rich(
                      style: TextStyle(
                          color: ColorsManager.white,
                          fontWeight: FontWeight.w400,
                          fontSize: 14,
                          fontFamily: GoogleFonts.roboto().fontFamily),
                      TextSpan(
                        style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 14,
                            fontFamily: GoogleFonts.roboto().fontFamily),
                        text: "Don’t Have Account ? ",
                        children: [
                          TextSpan(
                              style: TextStyle(
                                  color: ColorsManager.gold,
                                  fontWeight: FontWeight.w900,
                                  fontSize: 14,
                                  fontFamily: GoogleFonts.roboto().fontFamily),
                              text: "Create One",
                              recognizer: TapGestureRecognizer()
                                ..onTap = () {
                                  Navigator.pushReplacementNamed(
                                      context, AppRoutesName.signUp);
                                })
                        ],
                      )),
                ),
              ),
              //or text
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width * 0.32,
                      height: MediaQuery.of(context).size.height * 0.002,
                      color: ColorsManager.gold,
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.05,
                    ),
                    Text("Or",
                        style: TextStyle(
                            color: ColorsManager.gold,
                            fontWeight: FontWeight.w400,
                            fontSize: 15,
                            fontFamily: GoogleFonts.roboto().fontFamily)),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.05,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width * 0.32,
                      height: MediaQuery.of(context).size.height * 0.002,
                      color: ColorsManager.gold,
                    ),
                  ],
                ),
              ),
              //login with google
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: InkWell(
                  onTap: () {},
                  child: Center(
                    child: Container(
                      width: MediaQuery.of(context).size.width * 0.96,
                      height: MediaQuery.of(context).size.height * 0.06,
                      decoration: BoxDecoration(
                        color: ColorsManager.gold,
                        borderRadius: BorderRadius.circular(16),
                        border: Border.all(color: ColorsManager.gold),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(AssetsManager.google),
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.04,
                          ),
                          Text("Login with google",
                              style: TextStyle(
                                  color: ColorsManager.mutedBlack,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 16,
                                  fontFamily: GoogleFonts.roboto().fontFamily)),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              //language switch
              Center(
                child: AnimatedToggleSwitch<String>.rolling(
                  height: 36,
                  indicatorSize: Size(42, 36),
                  style: ToggleStyle(
                    backgroundColor:
                        Colors.transparent, // Background when not selected
                    borderRadius: BorderRadius.circular(20),
                    borderColor: ColorsManager.gold,
                    indicatorColor: ColorsManager.gold,
                  ),
                  current: "en",
                  values: const ["en", "ar"],
                  iconList: [
                    Image.asset(AssetsManager.en, width: 24, height: 24),
                    Image.asset(AssetsManager.ar, width: 24, height: 24),
                  ],
                ),
              ),
              Spacer(
                flex: 3,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
