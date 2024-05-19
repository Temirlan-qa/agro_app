import 'package:flutter/material.dart';
import 'package:agro_app/src/core/theme/theme.dart';
import 'package:agro_app/src/core/utils/helpers/paddings_helper.dart';

class BottomTabButton extends StatelessWidget {
  final IconData icon;
  final VoidCallback onTap;
  final bool isSelected;

  const BottomTabButton({
    Key? key,
    required this.icon,
    required this.onTap,
    this.isSelected = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Material(
        color: context.theme.primary,
        child: InkWell(
          onTap: onTap,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: Padding(
                  padding: EdgeInsets.only(
                    top: 15,
                    bottom: PaddingsHelper.getBottomPadding(
                      context: context,
                      paddingIfNoSafeArea: 15,
                    ),
                  ),
                  child: Icon(
                    icon,
                    size: 28,
                    color: isSelected
                        ? context.theme.scaffoldBackground
                        : context.theme.semiLightGrey,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
