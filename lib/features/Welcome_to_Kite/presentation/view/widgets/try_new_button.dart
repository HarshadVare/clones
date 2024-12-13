import 'package:flutter/material.dart';
import 'package:zerodha_clone/theme/app_colors.dart';

class TryDemoButton extends StatelessWidget {
  const TryDemoButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
        alignment: Alignment.topRight,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(4),
          child: InkWell(
            onTap: () {},
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 14, vertical: 8),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4),
                  border: Border.all(color: AppColors.blue, width: 1.5)),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    'Try demo',
                    style: TextStyle(
                      color: AppColors.blue,
                    ),
                  ),
                  SizedBox(
                    width: 3,
                  ),
                  Icon(
                    Icons.arrow_forward,
                    size: 14,
                    color: AppColors.blue,
                  )
                ],
              ),
            ),
          ),
        ));
  }
}
