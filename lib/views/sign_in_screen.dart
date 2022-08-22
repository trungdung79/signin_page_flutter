import 'package:flutter/material.dart';
import 'package:sign_in_flutter/resources/widgets/custom_text_input.dart';
import '../resources/widgets/custom_circle_button.dart';
import '../resources/widgets/custom_text_button.dart';
import '../resources/widgets/custom_text_line_button.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var size1 = size.height / 100;
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: 0,
            right: 0,
            child: SizedBox(
              width: size.width * 0.3,
              height: size.width * 0.8,
              //alignment: Alignment.topCenter, dua lenh nay vao ko fill duoc anh
              child: Image.asset('assets/images/Ellipse_1.png', fit: BoxFit.fill,),
            ),
          ),
          Positioned(
            top: 0,
            child: SizedBox(
              width: size.width,
              height: size.width * 0.8 * 0.75,
              //alignment: Alignment.topCenter, dua lenh nay vao ko fill duoc anh
              child: Image.asset('assets/images/Ellipse_2.png', fit: BoxFit.fill,),
            ),
          ),
          Positioned(
            top: 0,
            left: 0,
            child: SizedBox(
              width: size.width * 0.6,
              height: size.width * 0.8 * 0.27,
              //alignment: Alignment.topCenter, dua lenh nay vao ko fill duoc anh
              child: Image.asset('assets/images/Ellipse_3.png', fit: BoxFit.fill,),
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Column(
                children: [
                  SizedBox(height: size1 * 15,),
                  Row(
                    children: const [
                      Text('Welcome', style: TextStyle(fontSize: 40, color: Colors.white,),),
                      Expanded(
                        child: SizedBox(),
                      ),
                    ],
                  ),
                  Row(
                    children: const [
                      Text('Back', style: TextStyle(fontSize: 40, color: Colors.white,),),
                      Expanded(
                        child: SizedBox(),
                      ),
                    ],
                  ),
                  SizedBox(height: size1 * 17,),
                  const CustomTextInput(
                    hintText: 'Your Email',
                    obscureText: false,
                  ),
                  const SizedBox(height: 20,),
                  const CustomTextInput(
                    hintText: 'Password',
                    obscureText: true,
                  ),
                  const SizedBox(height: 26,),
                  Row(
                    //mainAxisAlignment: MainAxisAlignment.center,
                    //mainAxisSize: MainAxisSize.max,
                    children: [
                      CustomTextButton(
                        onPressed: () => print('Sign in Pressed'),
                        text: 'Sign in',
                        color: Colors.black,
                        fontSize: 26,
                      ),
                      const Expanded(
                        child: SizedBox(),
                      ),
                      CustomCircleButton(
                        onPressed: () { print('Circle Pressed'); },
                      ),
                    ],
                  ),
                  const Expanded(
                    child: SizedBox(),
                  ),
                  Row(
                    //mainAxisAlignment: MainAxisAlignment.center,
                    //mainAxisSize: MainAxisSize.max,
                    children: [
                      CustomTextLineButton(
                        onPressed: () { print('Sign Up Pressed'); },
                        text: 'Sign Up',
                        color: Colors.black,
                        fontSize: 18,
                        lineImageStr: 'assets/images/Rectangle_1.png',
                        lineLength: 80,
                      ),
                      const Expanded(
                        child: SizedBox(),
                      ),
                      CustomTextLineButton(
                        onPressed: () { print('Forgot Passwords Pressed'); },
                        text: 'Forgot Passwords',
                        color: Colors.black,
                        fontSize: 18,
                        lineImageStr: 'assets/images/Rectangle_2.png',
                        lineLength: 160,
                      ),
                    ],
                  ),
                  const SizedBox(height: 30,),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
