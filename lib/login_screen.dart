import 'package:country_pickers/country_picker_dropdown.dart';
import 'package:flutter/material.dart';
import 'package:login_screen/register_screen.dart';
import 'package:login_screen/widgets/custom_button.dart';
import 'package:login_screen/widgets/custom_form.dart';
class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          children: [
            Container(
              child: Image.asset(
                'assets/images/background.jpg',
                fit: BoxFit.cover,
              ),
              height: MediaQuery.of(context).size.height * 0.3,
              width: double.infinity,
            ),
            SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.all(15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Welcome to Fashion Daily',
                    style: TextStyle(fontSize: 13),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Sign In',
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.blue),
                ),
                RichText(
                  text: TextSpan(children: [
                    TextSpan(
                      text: 'Help',
                      style: TextStyle(fontSize: 15, color: Colors.blue),
                    ),
                    WidgetSpan(
                      child: Icon(
                        Icons.email_outlined,
                        color: Colors.blue,
                      ),
                    ),
                  ]),
                ),
              ],
            ),
            SizedBox(
              height: 15,
            ),
            SizedBox(
              height: 15,
            ),
            CustomForm(
                text: 'Phone Number',
                hintText: '01066010293',
                error: 'Please Enter Your Phone Number'),
            SizedBox(
              height: 15,
            ),

            CustomButton(
              text: 'Sign In',
              color: Colors.blue,
              textColor: Colors.white,
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              'OR',
              style: TextStyle(fontSize: 15),
            ),
            SizedBox(
              height: 15,
            ),
            CustomButton(
              text: 'Sign In With Google',
              color: Colors.white,
              textColor: Colors.blue,
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
              'Doesn\'t has any accounr?',
                  style: TextStyle(fontSize: 15),
                ),
                InkWell(
                  onTap:(){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => RegisterScreen()));
                  },
                  child: Text(
                    'Register Now',
                    style: TextStyle(color: Colors.blue, fontSize: 15),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    ),);

  }
}
