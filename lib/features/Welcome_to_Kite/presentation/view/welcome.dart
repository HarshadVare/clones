import 'package:flutter/material.dart';
import 'package:svg_flutter/svg.dart';
import 'package:zerodha_clone/constants/image_path.dart';
import 'package:zerodha_clone/features/Welcome_to_Kite/presentation/view/widgets/try_new_button.dart';
import 'package:zerodha_clone/theme/app_colors.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ///
                TryDemoButton(),
                SizedBox(
                  height: 80,
                ),
                SvgPicture.asset(
                  ImagePath.kiteLogo,
                  height: 30,
                  width: 30,
                ),
                SizedBox(
                  height: 50,
                ),
                Text(
                  'Welcome to\nKite by Zerodha',
                  style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 50,
                ),
                Divider(
                  color: AppColors.dividerColor,
                ),
                InkWell(
                  onTap: () {},
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 12.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Open a free account',
                          style: TextStyle(fontSize: 18),
                        ),
                        Icon(Icons.person_2_outlined)
                      ],
                    ),
                  ),
                ),
                Divider(
                  color: AppColors.dividerColor,
                ),
                InkWell(
                  onTap: () {},
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 12.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Login to Kite',
                          style: TextStyle(fontSize: 18),
                        ),
                        Icon(Icons.logout)
                      ],
                    ),
                  ),
                ),
                Divider(
                  color: AppColors.dividerColor,
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
                Text(
                  "NSE & BSE - SEBI Registration no.: INZ000031633 | MCX SEBI Registration no.: INZ000038238 | CDSL - SEBI Registration no.: IN-DP-431-2019 | Smart Online Dispute Resolution | SEBI SCORES",
                  style: TextStyle(
                    color: AppColors.logoColor,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
