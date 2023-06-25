// ignore: must_be_immutable
import 'package:flutter/material.dart';

import 'package:policy_plus/core/helper_class/size_config.dart';

class ImageAndIconModel {
  final Widget image;
  final String title;

  ImageAndIconModel({required this.image, required this.title});
}

class GridWidget extends StatelessWidget {
  var _crossAxisSpacing,
      _screenWidth,
      _crossAxisCount,
      _width,
      cellHeight,
      _aspectRatio;

  final List<ImageAndIconModel> list;

  GridWidget({super.key, required this.list});

  @override
  Widget build(BuildContext context) {
    _crossAxisSpacing = list.length;
    _screenWidth = SizeConfig.screenWidth;
    _crossAxisCount = 4;
    _width = (_screenWidth - ((_crossAxisCount - 1) * _crossAxisSpacing)) /
        _crossAxisCount;
    cellHeight = getScreenHeight(portraitHeight: 0.17, landscapeHeight: 0.48);
    _aspectRatio = _width / cellHeight;
    return SizedBox(
      height: getHeight(length: list.length),
      child: GridView.builder(
        shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: list.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: _crossAxisCount,
              childAspectRatio: _aspectRatio,
              crossAxisSpacing: 5.0,
              mainAxisSpacing: 5.0),
          itemBuilder: (BuildContext context, int index) {
            return Column(
              children: [
                list[index].image,
                Text(list[index].title)
              ],
            );
          }),
    );
  }
}
