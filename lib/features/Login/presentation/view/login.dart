import 'package:flutter/material.dart';
import 'package:svg_flutter/svg.dart';
import 'package:zerodha_clone/config/app_text.dart';
import 'package:zerodha_clone/config/app_text_field.dart';
import 'package:zerodha_clone/constants/image_path.dart';
import 'package:zerodha_clone/theme/app_colors.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _idController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                        onPressed: () {}, icon: Icon(Icons.arrow_back_ios)),
                    SvgPicture.asset(
                      ImagePath.kiteLogo,
                      height: 22,
                      width: 22,
                    ),
                  ],
                ),
                SizedBox(height: 50),
                AppText(
                    text: 'Login',
                    color: AppColors.blackColor,
                    fontSize: 24,
                    fontWeight: FontWeight.bold),
                SizedBox(height: 50),
                AppTextFiled(
                    label: "Phone or User ID",
                    controller: _idController,
                    error: "Invalid User ID"),
                SizedBox(height: 30),
                AppTextFiled(
                  label: "Password",
                  controller: _passwordController,
                  error: "Invalid Password",
                  isPassword: true,
                ),
                SizedBox(height: 30),
                SizedBox(
                  width: double.infinity,
                  height: 45,
                  child: TextButton(
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        print("Email: ${_idController.text}");
                        print("Password: ${_passwordController.text}");
                      }
                    },
                    style: TextButton.styleFrom(
                      backgroundColor: AppColors.blue, // Background color
                      foregroundColor: Colors.white, // Text color
                      shape: RoundedRectangleBorder(
                        borderRadius:
                            BorderRadius.circular(4.0), // Rounded corners
                      ),
                    ),
                    child: Text('LOGIN'),
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                InkWell(
                  onTap: () {},
                  child: Align(
                    alignment: Alignment.topRight,
                    child: SizedBox(
                      height: 45,
                      child: AppText(
                        text: 'Forgot user ID or password?',
                        color: AppColors.blue,
                        fontSize: 14,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 100,
                ),
                SvgPicture.asset(
                  ImagePath.zerodhaLogo,
                  color: AppColors.logoColor,
                  height: 12,
                  width: 12,
                ),
                SizedBox(
                  height: 10,
                ),
                AppText(
                    text:
                        "NSE & BSE - SEBI Registration no.: INZ000031633 | MCX SEBI Registration no.: INZ000038238 | CDSL - SEBI Registration no.: IN-DP-431-2019 | Smart Online Dispute Resolution | SEBI SCORES",
                    color: AppColors.logoColor,
                    fontSize: 14,
                    fontWeight: FontWeight.normal)
              ],
            ),
          ),
        ),
      ),
    ));
  }
}
