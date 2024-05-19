import 'package:agro_app/src/core/theme/theme.dart';
import 'package:agro_app/src/features/product_page/presentation/widgets/product_image.dart';
import 'package:agro_app/src/features/products/domain/entities/product_entity.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class ProductPhotosPage extends StatefulWidget {
  final ProductEntity product;
  const ProductPhotosPage({super.key, required this.product});

  @override
  State<ProductPhotosPage> createState() => _ProductPhotosPageState();
}

class _ProductPhotosPageState extends State<ProductPhotosPage> {
  final CarouselController _carouselController = CarouselController();
  int _currentSlide = 0;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.of(context).pop(),
      child: Container(
        color: context.theme.black,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Stack(
              children: [
                CarouselSlider.builder(
                  itemCount: widget.product.photoLinks.length,
                  carouselController: _carouselController,
                  itemBuilder: (context, index, realIndex) {
                    return AspectRatio(
                      aspectRatio: 16 / 9,
                      child: ProductImage(
                        image: widget.product.photoLinks[index],
                      ),
                    );
                  },
                  options: CarouselOptions(
                    viewportFraction: 1,
                    enableInfiniteScroll: false,
                    scrollDirection: Axis.horizontal,
                    onPageChanged: (index, reason) {
                      setState(() {
                        _currentSlide = index;
                      });
                    },
                  ),
                ),
                Align(
                  alignment: Alignment.topRight,
                  child: Material(
                    type: MaterialType.transparency,
                    child: Ink(
                      child: IconButton(
                        icon: Icon(
                          Icons.close,
                          color: context.theme.white,
                        ),
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                      ),
                    ),
                  ),
                ),
              ],
            ),
            if (widget.product.photoLinks.length > 1) ...[
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children:
                    List.generate(widget.product.photoLinks.length, (index) {
                  return GestureDetector(
                    onTap: () => _carouselController.animateToPage(index),
                    child: Container(
                      width: 12.0,
                      height: 12.0,
                      margin: const EdgeInsets.symmetric(
                        vertical: 8.0,
                        horizontal: 4.0,
                      ),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: _currentSlide == index
                            ? context.theme.secondary
                            : context.theme.white,
                      ),
                    ),
                  );
                }).toList(),
              ),
            ],
          ],
        ),
      ),
    );
  }
}
