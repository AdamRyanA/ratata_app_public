import 'package:flutter/material.dart';
import 'package:ratata_app/app/utils/utils.dart';

class OutlineCustom extends StatelessWidget {
  final String label;
  final Function() onPressed;
  final Color? backgroundColor;
  final Color? foregroundColor;
  const OutlineCustom({Key? key, required this.label, required this.onPressed, this.backgroundColor, this.foregroundColor}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      style: OutlinedButton.styleFrom(
          foregroundColor: blueColor,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
          padding: const EdgeInsets.fromLTRB(16, 12, 16, 12),
      ),
        onPressed: onPressed,
        child: Row(
          children: [
            Expanded(
              child: FittedBox(
                fit: BoxFit.scaleDown,
                child: Text(
                  label,
                  style: button.copyWith(color: blueColor),
                ),
              ),
            ),
          ],
        )
    );
  }
}
