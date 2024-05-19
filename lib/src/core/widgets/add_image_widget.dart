import 'package:agro_app/generated/l10n.dart';
import 'package:agro_app/src/core/theme/theme.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';

import 'custom_button.dart';

class AddImageWidget extends StatefulWidget {
  final IconData? icon;
  final String? text;
  final List<String> imageUrls;
  final bool isUploading;
  final VoidCallback onTap;
  final ValueSetter<int>? onChangeImageTap;
  final ValueSetter<int>? onDeleteImageTap;
  final VoidCallback? addImage;
  final bool showButtons;

  const AddImageWidget({
    Key? key,
    this.icon,
    this.text,
    required this.imageUrls,
    this.isUploading = false,
    required this.onTap,
    this.onChangeImageTap,
    this.onDeleteImageTap,
    this.showButtons = true,
    this.addImage,
  }) : super(key: key);

  @override
  State<AddImageWidget> createState() => _AddImageWidgetState();
}

class _AddImageWidgetState extends State<AddImageWidget> {
  final CarouselController _carouselController = CarouselController();
  int _currentSlide = 0;

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (widget.isUploading) {
      return Container(
        height: 200,
        width: 200,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          border: Border.all(color: context.theme.lightGrey),
        ),
        child: const Center(child: CircularProgressIndicator()),
      );
    }
    if (widget.imageUrls.isNotEmpty) {
      return Column(
        children: [
          Container(
            height: 200,
            width: 200,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              border: Border.all(color: context.theme.lightGrey),
            ),
            child: CarouselSlider.builder(
              itemCount: widget.imageUrls.length,
              carouselController: _carouselController,
              itemBuilder: (context, index, realIndex) {
                return ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.network(
                    widget.imageUrls[index],
                    fit: BoxFit.cover,
                    gaplessPlayback: true,
                  ),
                );
              },
              options: CarouselOptions(
                scrollDirection: Axis.horizontal,
                enableInfiniteScroll: false,
                viewportFraction: 1,
                onPageChanged: (index, reason) {
                  setState(() {
                    _currentSlide = index;
                  });
                },
              ),
            ),
          ),
          if (widget.imageUrls.length > 1) ...[
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(widget.imageUrls.length, (index) {
                return GestureDetector(
                  onTap: () => _carouselController.animateToPage(index),
                  child: Container(
                    width: 12.0,
                    height: 12.0,
                    margin: const EdgeInsets.symmetric(
                        vertical: 8.0, horizontal: 4.0),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: _currentSlide == index
                          ? context.theme.primary
                          : context.theme.white,
                    ),
                  ),
                );
              }).toList(),
            ),
          ],
          if (widget.showButtons) ...[
            const SizedBox(height: 20),
            Row(
              children: [
                Expanded(
                  child: CustomButton(
                    onTap: () {
                      if (widget.onChangeImageTap != null) {
                        widget.onChangeImageTap!(_currentSlide);
                      }
                    },
                    title: S.of(context).changeImage,
                    buttonColor: context.theme.secondary,
                    textColor: context.theme.primary,
                  ),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: CustomButton(
                    onTap: () {
                      if (widget.onDeleteImageTap != null) {
                        widget.onDeleteImageTap!(_currentSlide);
                      }
                    },
                    title: S.of(context).deleteImage,
                    buttonColor: context.theme.red,
                    textColor: context.theme.white,
                  ),
                ),
              ],
            ),
            if (widget.addImage != null) ...[
              const SizedBox(height: 10),
              CustomButton(
                onTap: widget.addImage,
                title: S.of(context).addImage,
                buttonColor: context.theme.primary,
                textColor: context.theme.white,
              ),
            ],
          ],
        ],
      );
    }
    return Material(
      color: context.theme.white,
      borderRadius: BorderRadius.circular(20),
      child: InkWell(
        onTap: widget.onTap,
        borderRadius: BorderRadius.circular(20),
        child: DottedBorder(
          radius: const Radius.circular(20),
          borderType: BorderType.RRect,
          strokeCap: StrokeCap.butt,
          strokeWidth: 1,
          dashPattern: const [6],
          color: context.theme.primary.withOpacity(0.5),
          child: Container(
            width: 200,
            height: 200,
            padding: const EdgeInsets.symmetric(vertical: 18),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Flexible(
                      child: Text(
                        widget.text ?? S.of(context).addImage,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: context.theme.primary,
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                Icon(
                  Icons.add_circle_outlined,
                  color: context.theme.primary,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
