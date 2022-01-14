import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class CarouselComponent extends StatelessWidget {
  CarouselOptions carouselOptions;
  List<Widget> items;
  CarouselController? carouselController;
  CarouselComponent(this.carouselOptions, this.items, {Key? key,  this.carouselController }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(carouselController: carouselController, items: items, options: carouselOptions);
  }

}
