import 'package:agro_app/src/core/theme/theme.dart';
import 'package:flutter/material.dart';

class CheckBoxList extends StatelessWidget {
  final ValueSetter<int> onChanged;
  final List<String> fullList;
  final List<String> selectedValues;
  final Color borderSide;
  const CheckBoxList({
    super.key,
    required this.onChanged,
    required this.borderSide,
    required this.fullList,
    required this.selectedValues,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
      ),
      child: ListView.builder(
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemCount: fullList.length,
        itemBuilder: (context, index) {
          return Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Transform.scale(
                scale: 1.2,
                child: Checkbox(
                  side: BorderSide(color: borderSide),
                  value: selectedValues.contains(fullList[index]),
                  onChanged: (value) {
                    onChanged(index);
                  },
                  materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                  activeColor: context.theme.white,
                  checkColor: context.theme.black,
                ),
              ),
              Text(
                fullList[index],
                style: context.theme.textStyles.cardRegular.copyWith(
                  fontSize: 16,
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
