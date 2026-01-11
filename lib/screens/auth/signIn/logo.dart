import 'package:flutter/material.dart';
import '../../../utils/ui_helper.dart';
import '../../../utils/size_utils.dart';

class logo extends StatelessWidget {
  const logo({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: SizeUtils.height(context, 0.08),
      child: Row(
        spacing: SizeUtils.width(context, 0.05),
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: SizeUtils.height(context, 0.08),
            width: SizeUtils.width(context, 0.15),
            child: Image.asset("assets/images/appLogo.png"),
          ),
          UiHelper.customText(
            text: "EventChain",
            textColor: 0xFF9810FA,
            fontWeight: FontWeight.bold,
            fontSize: SizeUtils.text(context, 0.07),
          ),
        ],
      ),
    );
  }
}
