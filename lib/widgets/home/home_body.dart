import 'package:flutter/material.dart';

import 'header.dart';
import 'slider_goodle.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Column(
      children:  [
        Flexible(
          flex: 2,
          child: Headers(),
        ),
        Flexible(
          flex: 4,
          child: SliderGoodle(),
        ),
      ],
    );
  }
}
