import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:ratata_app/app/utils/utils.dart';

class ValueNotifierController {
  final ValueNotifier<bool> obscure = ValueNotifier(false);
  changeObscure(){
    obscure.value = !obscure.value;
    print(obscure.value);
  }
}

class InputCustom extends StatelessWidget {

  final bool? obscureText;
  final TextEditingController controller;
  final TextInputType? keyboardType;
  final String hint;
  final String label;
  final bool? maxLines;
  final List<TextInputFormatter>? inputFormatters;
  final String? Function(String?)? validator;

  const InputCustom({Key? key, required this.controller, this.keyboardType, required this.hint, this.validator, this.obscureText = false, this.maxLines, this.inputFormatters, required this.label}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final valueController = ValueNotifierController();

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(label, style: subtitle2,),
        const SizedBox(height: 8),
        ValueListenableBuilder(
            valueListenable: valueController.obscure,
            builder: (BuildContext context, bool obscure, Widget? child) {
            return Padding(
                padding: const EdgeInsets.only(bottom: 12),
                child: TextFormField(
                  obscureText: obscure,
                  controller: controller,
                  style: body2.copyWith(color: blackColor),
                  maxLines: maxLines != true ? 1 : null ,
                  inputFormatters: inputFormatters,
                  keyboardType: keyboardType ?? TextInputType.text,
                  cursorColor: blackColor60,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(borderSide: BorderSide(color: blackColor60)),
                    enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: blackColor60)),
                    focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: blackColor60)),
                    contentPadding: const EdgeInsets.fromLTRB(16, 12, 16, 12),
                    hintText: hint,
                    hintStyle: body2.copyWith(color: blackColor60),
                    suffixIcon: obscureText!
                        ? IconButton(
                      onPressed: valueController.changeObscure,
                      icon: Icon(
                          obscure ? Icons.visibility_off_outlined : Icons.visibility_outlined,
                          color: blackColor60
                      ),
                    )
                        : null,
                  ),
                  validator: validator,
                ));
          }
        ),
      ],
    );
  }
}
