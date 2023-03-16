import 'package:airplane/shared/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CustomTextFormField extends StatelessWidget {
  final String title;
  final String hintText;
  final TextInputType keyboardType;
  final EdgeInsets margin;
  final bool isPassword;
  final TextEditingController controller;
  const CustomTextFormField({
    Key? key,
    required this.title,
    required this.hintText,
    required this.keyboardType,
    required this.margin,
    this.isPassword = false,
    required this.controller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            title,
          ),
          SizedBox(
            height: 6,
          ),
          TextFormField(
            cursorColor: kBlackCOlor,
            keyboardType: keyboardType,
            obscureText: isPassword,
            controller: controller,
            decoration: InputDecoration(
                hintText: hintText,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(defaultRadius),
                ),
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(defaultRadius),
                    borderSide: BorderSide(
                      color: kprimaryColor,
                    ))),
          ),
        ],
      ),
    );
  }
}
