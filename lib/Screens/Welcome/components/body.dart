import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:weg_hrm/Screens/Login/login_screen.dart';
import 'package:weg_hrm/Screens/Signup/signup_screen.dart';
import 'package:weg_hrm/Screens/Welcome/components/background.dart';
import 'package:weg_hrm/components/rounded_button.dart';
import 'package:weg_hrm/constants.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return Background(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          const Text(
            "Welcome TO EDU",
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: size.height * 0.03),
          SvgPicture.asset(
            "assets/icons/login_bg.svg",
            height: size.height * 0.45,
          ),
          SizedBox(height: size.height * 0.03),
          Center(
            child: Column(
              children: [
                RoundedButton(
                  text: "LOGIN",
                  press: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) {
                        return LoginScreen();
                      }),
                    );
                  },
                ),
                SizedBox(height: size.height * 0.001),
                RoundedButton( 
                  text: "SIGN UP",
                  color: kPrimaryLightColor,
                  textColor: Colors.black,
                  press: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return SignUpScreen();
                        }
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
