import 'package:finance/components/my_floating_button.dart';
import 'package:finance/components/my_textfield.dart';
import 'package:finance/constants.dart';
import 'package:flutter/material.dart';

class RegisterInput extends StatelessWidget {
  const RegisterInput({
    Key key,
    this.usernameOnChanged,
    this.passWordOnChanged,
    this.forgotPasswordOnPress,
    this.signup,
  }) : super(key: key);
  final Function(String) usernameOnChanged;
  final Function(String) passWordOnChanged;
  final Function forgotPasswordOnPress;
  final Function signup;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Stack(
      children: <Widget>[
        Container(
          alignment: Alignment.center,
          margin: EdgeInsets.only(
            left: size.height * 0.025,
            right: size.height * 0.025,
            top: size.width * 0.08,
          ),
          height: size.height * 0.7,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: size.width * 0.03),
            child: Stack(
              alignment: Alignment.center,
              children: [
                Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: size.width * 0.03,
                  ),
                  margin: EdgeInsets.only(
                    bottom: size.width * 0.14,
                  ),
                  decoration: BoxDecoration(
                    color: kPrimaryColor,
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                        offset: Offset(2, 10),
                        blurRadius: 200,
                        spreadRadius: 20,
                        color: kShadowColor.withOpacity(0.3),
                      ),
                    ],
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      MyTextField(
                        hintText: 'Name',
                        onChanged: usernameOnChanged,
                      ),
                      SizedBox(
                        height: size.height * 0.04,
                      ),
                      MyTextField(
                        hintText: 'User ID',
                        onChanged: passWordOnChanged,
                      ),
                      SizedBox(
                        height: size.height * 0.04,
                      ),
                      MyTextField(
                        hintText: 'Profession',
                        onChanged: passWordOnChanged,
                      ),
                      SizedBox(
                        height: size.height * 0.04,
                      ),
                      MyTextField(
                        hintText: 'Email address',
                        onChanged: passWordOnChanged,
                      ),
                      SizedBox(
                        height: size.height * 0.04,
                      ),
                      MyTextField(
                        hintText: 'Password',
                        onChanged: passWordOnChanged,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        Positioned(
          bottom: size.height * 0.045,
          left: 0,
          right: 0,
          child: Hero(
            tag: 'hero',
            child: MyFloatingButton(ontap: signup),
          ),
        ),
      ],
    );
  }
}
