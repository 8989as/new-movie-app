import 'package:animated_toggle_switch/animated_toggle_switch.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:new_movie_app/core/helpers/app_image_assets.dart';
import 'package:new_movie_app/core/routes/app_routes_name.dart';
import 'package:new_movie_app/core/theming/colors_manager.dart';
import 'package:new_movie_app/core/widgets/custom_button.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsManager.black,
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Center(child: Image.asset(AssetsManager.logo)),
            //name text field
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
                    hintText: "Name",
                    hintStyle: TextStyle(
                        color: ColorsManager.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w400),
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: ColorsManager.mutedBlack),
                        borderRadius: BorderRadius.circular(15)),
                    border: OutlineInputBorder(
                        borderSide: BorderSide(color: ColorsManager.mutedBlack),
                        borderRadius: BorderRadius.circular(15)),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: ColorsManager.mutedBlack),
                        borderRadius: BorderRadius.circular(15)),
                    disabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: ColorsManager.mutedBlack),
                        borderRadius: BorderRadius.circular(15)),
                    prefixIcon: ImageIcon(
                      AssetImage(AssetsManager.name),
                      color: ColorsManager.white,
                    )),
              ),
            ),
            //email text field
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
                        borderSide: BorderSide(color: ColorsManager.mutedBlack),
                        borderRadius: BorderRadius.circular(15)),
                    border: OutlineInputBorder(
                        borderSide: BorderSide(color: ColorsManager.mutedBlack),
                        borderRadius: BorderRadius.circular(15)),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: ColorsManager.gold),
                        borderRadius: BorderRadius.circular(15)),
                    disabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: ColorsManager.mutedBlack),
                        borderRadius: BorderRadius.circular(15)),
                    prefixIcon: ImageIcon(
                      AssetImage(AssetsManager.email),
                      color: ColorsManager.white,
                    )),
              ),
            ),
            //password text field
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
                        borderSide: BorderSide(color: ColorsManager.mutedBlack),
                        borderRadius: BorderRadius.circular(15)),
                    border: OutlineInputBorder(
                        borderSide: BorderSide(color: ColorsManager.mutedBlack),
                        borderRadius: BorderRadius.circular(15)),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: ColorsManager.gold),
                        borderRadius: BorderRadius.circular(15)),
                    disabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: ColorsManager.mutedBlack),
                        borderRadius: BorderRadius.circular(15)),
                    prefixIcon: ImageIcon(
                      AssetImage(AssetsManager.lock),
                      color: ColorsManager.white,
                    )),
              ),
            ),
            //re-password text field
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
                    hintText: "Re-Password",
                    hintStyle: TextStyle(
                        color: ColorsManager.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w400),
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: ColorsManager.mutedBlack),
                        borderRadius: BorderRadius.circular(15)),
                    border: OutlineInputBorder(
                        borderSide: BorderSide(color: ColorsManager.mutedBlack),
                        borderRadius: BorderRadius.circular(15)),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: ColorsManager.gold),
                        borderRadius: BorderRadius.circular(15)),
                    disabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: ColorsManager.mutedBlack),
                        borderRadius: BorderRadius.circular(15)),
                    prefixIcon: ImageIcon(
                      AssetImage("assets/icons/lock.png"),
                      color: ColorsManager.white,
                    )),
              ),
            ),
            //phone number text field
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
                    hintText: "Phone Number",
                    hintStyle: TextStyle(
                        color: ColorsManager.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w400),
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: ColorsManager.mutedBlack),
                        borderRadius: BorderRadius.circular(15)),
                    border: OutlineInputBorder(
                        borderSide: BorderSide(color: ColorsManager.mutedBlack),
                        borderRadius: BorderRadius.circular(15)),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: ColorsManager.gold),
                        borderRadius: BorderRadius.circular(15)),
                    disabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: ColorsManager.mutedBlack),
                        borderRadius: BorderRadius.circular(15)),
                    prefixIcon: ImageIcon(
                      AssetImage("assets/icons/phone.png"),
                      color: ColorsManager.white,
                    )),
              ),
            ),
            //Create account button
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: CustomButton(
                isloading: false,
                onPressed: () {},
                text: "Create Account",
              ),
            ),
            //Already Have Account ? Login
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
                      text: "Already Have Account ? ",
                      children: [
                        TextSpan(
                            style: TextStyle(
                                color: ColorsManager.gold,
                                fontWeight: FontWeight.w900,
                                fontSize: 14,
                                fontFamily: GoogleFonts.roboto().fontFamily),
                            text: "Login",
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                Navigator.pushReplacementNamed(
                                    context, AppRoutesName.login);
                              })
                      ],
                    )),
              ),
            ),
            //language switch
            Center(
              child: AnimatedToggleSwitch<String>.rolling(
                height: 36,
                indicatorSize: Size(42, 36),
                clipBehavior: Clip.hardEdge,
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
                  Image.asset("assets/icons/en.png", width: 24, height: 24),
                  Image.asset("assets/icons/ar.png", width: 24, height: 24),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
