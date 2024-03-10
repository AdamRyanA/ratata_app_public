import 'package:flutter/material.dart';
import '../utils/utils.dart';

class ButtonGoogle extends StatelessWidget {
  const ButtonGoogle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(
        padding: EdgeInsets.zero,
        foregroundColor: blackColor60,
      ),
      onPressed: (){
        print('Google');
      },
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(32),
            border: Border.all(width: 1, color: blackColor87)
        ),
        padding: const EdgeInsets.fromLTRB(40, 8, 40, 8),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              ImagesPath.iconGoogle,
              height: 24,
            ),
            const SizedBox(width: 8),
            Text(
              'Google',
              style: subtitle1.copyWith(color: blackColor),
            ),
          ],
        ),
      ),
    );
  }
}
