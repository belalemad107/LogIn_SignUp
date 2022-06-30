import 'package:flutter/material.dart';
class CustomButton extends StatelessWidget {
  const CustomButton({Key? key, required this.color, required this.text, this.onPress, required this.textColor, }) : super(key: key);
  final Color color;
  final String text;
  final Function()? onPress;
  final Color textColor;

  @override
  Widget build(BuildContext context) {
    return  InkWell(
      onTap: onPress,
      child: Container(
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(7),color: Colors.blue,),
        child: Center(
            child: Text(
              text,
              style: TextStyle(
                  color: Colors.white, fontWeight: FontWeight.bold, fontSize: 18),
            )),
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height * 0.07,
      ),
    );


  }
}
