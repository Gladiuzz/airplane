import 'package:airplane/cubit/auth_cubit.dart';
import 'package:airplane/shared/theme.dart';
import 'package:airplane/ui/widgets/custom_btn.dart';
import 'package:airplane/ui/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignUpPage extends StatefulWidget {
  SignUpPage({Key? key}) : super(key: key);

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final TextEditingController nameController = TextEditingController(text: '');
  final TextEditingController emailController = TextEditingController(text: '');
  final TextEditingController passwordController =
      TextEditingController(text: '');
  final TextEditingController phoneNumberController =
      TextEditingController(text: '');

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
          controller: nameController,
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
          controller: emailController,
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
          controller: passwordController,
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
          controller: phoneNumberController,
          margin: EdgeInsets.only(
            bottom: 30,
          ),
          title: 'Phone Number',
          hintText: 'Your Phone Number',
          keyboardType: TextInputType.phone,
        );
      }

      Widget submitBtn() {
        return BlocConsumer<AuthCubit, AuthState>(
          listener: (context, state) {
            if (state is AuthSuccess) {
              Navigator.pushNamedAndRemoveUntil(
                  context, '/bonus', (route) => false);
            } else if (state is AuthFailed) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  backgroundColor: kRedColor,
                  content: Text(state.message),
                ),
              );
            }
          },
          builder: (context, state) {
            if (state is AuthLoading) {
              return Center(
                child: CircularProgressIndicator(),
              );
            }
            return CustomBtn(
                title: 'Get Started',
                onPressed: () {
                  print(passwordController.text);

                  context.read<AuthCubit>().signUp(
                        email: emailController.text,
                        name: nameController.text,
                        password: passwordController.text,
                        phoneNumber: phoneNumberController.text,
                      );
                });
          },
        );
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
      return GestureDetector(
        onTap: () {
          Navigator.pushNamed(context, '/sign-in');
        },
        child: Container(
          alignment: Alignment.center,
          margin: EdgeInsets.only(
            top: 50,
            bottom: 73,
          ),
          child: Text(
            'Have an account? Sign In',
            style: greyTextStyle.copyWith(
              fontSize: 16,
              fontWeight: light,
              decoration: TextDecoration.underline,
            ),
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
