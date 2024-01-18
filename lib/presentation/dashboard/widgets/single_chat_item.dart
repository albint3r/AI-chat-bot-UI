import 'dart:core';

import 'package:flutter/material.dart';

import '../../core/theme/const_values.dart';
import '../../core/widgets/text/text_body.dart';
import '../../core/widgets/text/text_title.dart';

class SingleChatItem extends StatelessWidget {
  const SingleChatItem(
    this.title,
    this.text, [
    this.leading = const Icon(Icons.question_mark),
  ]);

  final String title;
  final String text;
  final Widget leading;

  double _getReactiveWidth(double width, int breakingPoint) =>
      width >= breakingPoint ? width * .12 : 85;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final width = size.width;
    const breakingPoint = 900;

    return Expanded(
      child: SizedBox(
        // Need to be a little bit bigger than the text body area to avoid overflow
        width: _getReactiveWidth(
          width + 1,
          breakingPoint,
        ),
        child: Row(
          children: [
            // Show the icon
            if (width >= breakingPoint)
              Padding(
                padding: const EdgeInsets.all(padding),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    leading,
                  ],
                ),
              ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextTitle.h3(title),
                SizedBox(
                  width: _getReactiveWidth(
                    width,
                    breakingPoint,
                  ),
                  child: TextBody(text, maxLines: 1),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
