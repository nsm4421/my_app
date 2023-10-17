import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import '../../../model/user/user.model.dart';

class UserImageWidget extends StatelessWidget {
  const UserImageWidget(this.user, {super.key});

  final UserModel user;
  static const double _borderRadius = 20;

  @override
  Widget build(BuildContext context) => CarouselSlider(
        items: user.imageUrls
            .map(
              (url) => Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(url), fit: BoxFit.cover),
                  borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(_borderRadius),
                    bottomRight: Radius.circular(_borderRadius),
                  ),
                ),
              ),
            )
            .toList(),
        options: CarouselOptions(
          enableInfiniteScroll: false,
          viewportFraction: 1,
          height: MediaQuery.of(context).size.height / 1.5,
        ),
      );
}
