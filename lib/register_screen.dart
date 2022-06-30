import 'package:country_pickers/country.dart';
import 'package:country_pickers/country_picker_dropdown.dart';
import 'package:country_pickers/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:login_screen/login_screen.dart';
import 'package:login_screen/widgets/custom_button.dart';
import 'package:login_screen/widgets/custom_form.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  Widget _buildDropdownItem(Country country) => Container(
        child: Row(
          children: <Widget>[
            CountryPickerUtils.getDefaultFlagImage(country),
            SizedBox(
              width: 8.0,
            ),
            Text("+${country.phoneCode}(${country.isoCode})"),
          ],
        ),
      );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: SingleChildScrollView(
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
                    'Register',
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
              const CustomForm(
                text: 'Email',
                hintText: 'eg.exampel@gmail.com',
                error: 'Please Enter Your Email',
              ),
              SizedBox(
                height: 15,
              ),
              CountryPickerDropdown(
                initialValue: 'AR',
                itemBuilder: _buildDropdownItem,
                priorityList: [
                  CountryPickerUtils.getCountryByIsoCode('GB'),
                  CountryPickerUtils.getCountryByIsoCode('CN'),
                ],
                sortComparator: (Country a, Country b) =>
                    a.isoCode.compareTo(b.isoCode),
                onValuePicked: (Country country) {
                  print("${country.name}");
                },
              ),
              CustomForm(
                  text: 'Phone Number',
                  hintText: '01066010293',
                  error: 'Please Enter Your Phone Number'),
              SizedBox(
                height: 15,
              ),
              const CustomForm(
                  text: 'Password',
                  hintText: 'Password',
                  error: 'at least 8 numbers'),
              SizedBox(
                height: 15,
              ),
              CustomButton(
                text: 'Register',
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
                    'Has Any Account?',
                    style: TextStyle(fontSize: 15),
                  ),
                  InkWell(
                    onTap:(){
                      Navigator.of(context).push(MaterialPageRoute(builder: (context)=> LoginScreen()));
                    },
                    child: Text(
                      'Sign In Here',
                      style: TextStyle(color: Colors.blue, fontSize: 15),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
