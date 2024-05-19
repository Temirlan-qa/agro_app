import 'package:flutter/cupertino.dart';

class BtnWidget extends StatelessWidget {
  final void Function()? onPressed;
  final String text;
  final TextStyle? textStyle;
  final Color? color;
  final double? width;
  const BtnWidget({
    Key? key,
    required this.text,
    required this.onPressed,
    required this.color,
    this.textStyle,
    this.width,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoButton(
      borderRadius: const BorderRadius.all(Radius.circular(12)),
      pressedOpacity: 0.8,
      color: color,
      padding: EdgeInsets.zero,
      onPressed: onPressed,
      child: SizedBox(
        width: width ?? MediaQuery.of(context).size.width - 16,
        child: Center(
          child: Text(
            text,
            style: textStyle,
          ),
        ),
      ),
    );
  }
}
