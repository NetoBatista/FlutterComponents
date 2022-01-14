import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class ImageNetworkComponent extends StatelessWidget {
  String uri;
  double? width;
  double? height;
  ImageNetworkComponent({Key? key, required this.uri, this.width, this.height}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      placeholder: (context, url) =>
        LoadingComponent(),
        imageUrl: uri,
        width:  width,
        height: height,
        fit: BoxFit.fill,
      );
  }
}
