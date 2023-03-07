import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:weg_hrm/Screens/Signup/signup_screen.dart';
import 'package:weg_hrm/components/already_have_an_account_acheck.dart';
import 'package:weg_hrm/components/rounded_button.dart';
import 'package:weg_hrm/components/rounded_input_field.dart';
import 'package:weg_hrm/components/rounded_password_field.dart';
import 'package:weg_hrm/constants.dart';
import 'package:weg_hrm/screens/login/components/background.dart';

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
            'LOGIN',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          SizedBox(height: size.height * 0.03),
          SvgPicture.asset(
            'assets/icons/loginForm_bg.svg',
            height: size.height * 0.35,
          ),
          SizedBox(height: size.height * 0.03),
          RoundedInputField(
            hintText: "Your email address",
            onChanged: (value) {}
          ),
          RoundedPasswordField(
            onChanged: (value) {}
          ),
          RoundedButton(
            text: "LOGIN", 
            press: () {}
          ),
          SizedBox(height: size.height * 0.03),
          AlreadyHaveAccountCheck(
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
          )
        ],
      ),
    );
  }
}
