import 'package:eventchain/utils/size_utils.dart';
import 'package:flutter/material.dart';
import '../../../utils/ui_helper.dart';

class EmailField extends StatelessWidget {
  const EmailField({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: SizeUtils.height(context, 0.25),
      width: SizeUtils.width(context, 0.7),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          emailText(context),
          SizedBox(height: SizeUtils.height(context, 0.005)),
          inputField(context),
        ],
      ),
    );
  }
}

Widget emailText(BuildContext context) {
  return ColoredBox(
    color: Colors.yellow,
    child: SizedBox(
      height: SizeUtils.text(context, 0.04125),
      child: Row(
        children: [
          UiHelper.customText(
            text: "Email",
            textColor: 0xFF0A0A0A,
            fontWeight: FontWeight.normal,
            fontSize: SizeUtils.text(context, 0.04),
          ),
        ],
      ),
    ),
  );
}

Widget inputField(BuildContext context) {
  return ColoredBox(
    color: Colors.purpleAccent,
    child: SizedBox(
      height: SizeUtils.height(context, 0.05),
      child: TextField(
        textAlignVertical: TextAlignVertical.center,
        decoration: InputDecoration(
          hintText: 'you@example.com',

          prefixIcon: Icon(
            Icons.email_outlined,
            size: SizeUtils.height(context, 0.0),
            color: Colors.grey,
          ),

          prefixIconConstraints: BoxConstraints(minWidth: 40, minHeight: 40),

          filled: true,
          fillColor: const Color(0xFFF5F5F5),

          contentPadding: const EdgeInsets.symmetric(
            vertical: 0,
            horizontal: 12,
          ),

          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(
              SizeUtils.height(context, 0.01),
            ),
            borderSide: BorderSide.none,
          ),
        ),
      ),
    ),
  );
}
