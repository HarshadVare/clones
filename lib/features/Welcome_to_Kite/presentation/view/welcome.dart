import 'package:flutter/material.dart';
import 'package:svg_flutter/svg.dart';
import 'package:zerodha_clone/config/app_router.dart';
import 'package:zerodha_clone/config/app_router_constatnt.dart';
import 'package:zerodha_clone/config/app_text.dart';
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
                AppText(
                    text: 'Welcome to\nKite by Zerodha',
                    color: AppColors.blackColor,
                    fontSize: 28,
                    fontWeight: FontWeight.bold),
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
                        AppText(
                            text: 'Open a free account',
                            color: AppColors.blackColor,
                            fontSize: 18,
                            fontWeight: FontWeight.normal),
                        Icon(Icons.person_2_outlined)
                      ],
                    ),
                  ),
                ),
                Divider(
                  color: AppColors.dividerColor,
                ),
                InkWell(
                  onTap: () => AppRouter.pushReplacement(
                      AppRouterConstatnt.loginSCreen, context),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 12.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        AppText(
                            text: 'Login to Kite',
                            color: AppColors.blackColor,
                            fontSize: 18,
                            fontWeight: FontWeight.normal),
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
    );
  }
}
