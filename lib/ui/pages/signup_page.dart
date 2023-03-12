import 'package:airplane/shared/theme.dart';
import 'package:airplane/ui/widgets/custom_btn.dart';
import 'package:airplane/ui/widgets/custom_text_form_field.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SignUpPage extends StatefulWidget {
  SignUpPage({Key? key}) : super(key: key);

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  @override
  Widget build(BuildContext context) {
    Widget title() {
      return Container(
        margin: const EdgeInsets.only(top: 30),
        child: Text(
          'Join us and get\nyour next journey',
          style: blackTextStyle.copyWith(
            fontSize: 24,
            fontWeight: semiBold,
          ),
        ),
      );
    }

    Widget inputSection() {
      Widget fullNameInput() {
        return CustomTextFormField(
          margin: EdgeInsets.only(
            bottom: 20,
          ),
          title: 'Full Name',
          hintText: 'Your Full Name',
          keyboardType: TextInputType.name,
        );
      }

      Widget emailInput() {
        return CustomTextFormField(
          margin: EdgeInsets.only(
            bottom: 20,
          ),
          title: 'Email Address',
          hintText: 'Your Email Address',
          keyboardType: TextInputType.emailAddress,
        );
      }

      Widget passwordInput() {
        return CustomTextFormField(
          isPassword: true,
          margin: EdgeInsets.only(
            bottom: 20,
          ),
          title: 'Password',
          hintText: 'Your Password',
          keyboardType: TextInputType.emailAddress,
        );
      }

      Widget phoneInput() {
        return CustomTextFormField(
          margin: EdgeInsets.only(
            bottom: 30,
          ),
          title: 'Phone Number',
          hintText: 'Your Phone Number',
          keyboardType: TextInputType.phone,
        );
      }

      Widget submitBtn() {
        return CustomBtn(
            title: 'Get Started',
            onPressed: () {
              Navigator.pushReplacementNamed(context, '/bonus');
            });
      }

      return Container(
        margin: const EdgeInsets.only(top: 30),
        padding: const EdgeInsets.symmetric(
          horizontal: 24,
          vertical: 30,
        ),
        decoration: BoxDecoration(
          color: kWhiteColor,
          borderRadius: BorderRadius.circular(defaultRadius),
        ),
        child: Column(
          children: <Widget>[
            fullNameInput(),
            emailInput(),
            passwordInput(),
            phoneInput(),
            submitBtn(),
          ],
        ),
      );
    }

    Widget tacBtn() {
      return Container(
        alignment: Alignment.center,
        margin: EdgeInsets.only(
          top: 50,
          bottom: 73,
        ),
        child: Text(
          'Terms and Conditions',
          style: greyTextStyle.copyWith(
            fontSize: 16,
            fontWeight: light,
            decoration: TextDecoration.underline,
          ),
        ),
      );
    }

    return Scaffold(
      backgroundColor: kBgColor,
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.symmetric(
            horizontal: defaultMargin,
          ),
          children: <Widget>[
            title(),
            inputSection(),
            tacBtn(),
          ],
        ),
      ),
    );
  }
}
