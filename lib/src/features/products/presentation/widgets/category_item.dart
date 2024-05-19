import 'package:agro_app/src/core/theme/theme.dart';
import 'package:flutter/material.dart';

class CategoryItem extends StatelessWidget {
  final IconData? icon;
  final String title;
  final VoidCallback onTap;
  final bool selected;
  final VoidCallback? onRemove;

  const CategoryItem({
    super.key,
    this.icon,
    required this.title,
    required this.onTap,
    this.selected = false,
    this.onRemove,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Padding(
          padding: const EdgeInsets.all(5.0),
          child: Container(
            height: 66,
            width: MediaQuery.of(context).size.width * 0.4,
            decoration: BoxDecoration(
              color: context.theme.white,
              borderRadius: BorderRadius.circular(10),
              border: Border.all(
                color: context.theme.primary,
              ),
            ),
            child: Material(
              borderRadius: BorderRadius.circular(10),
              child: InkWell(
                onTap: onTap,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 13),
                  child: Row(
                    children: [
                      if (icon != null) ...[
                        Icon(
                          icon,
                          color: context.theme.grey,
                        ),
                        const SizedBox(width: 5),
                      ],
                      Flexible(
                        child: Text(
                          title,
                          style: context.theme.textStyles.regular.copyWith(
                            color: Colors.black,
                          ),
                          overflow: TextOverflow.ellipsis,
                          maxLines: 3,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
        if (selected)
          Positioned(
            right: 0,
            child: GestureDetector(
              onTap: onRemove,
              child: Container(
                height: 20,
                width: 20,
                decoration: BoxDecoration(
                  color: context.theme.red,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const Icon(
                  Icons.close,
                  color: Colors.white,
                  size: 15,
                ),
              ),
            ),
          ),
      ],
    );
  }
}
