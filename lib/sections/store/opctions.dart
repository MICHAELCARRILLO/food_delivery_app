import 'package:flutter/material.dart';

import '../../widgets/single_option.dart';

class Options extends StatelessWidget {
  final List<String> options;
  const Options({required this.options, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 16),
      height: 38,
      child: ListView.builder(
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemCount: options.length,
        itemBuilder: (context, index) {
          if (index == 2) {
            return SingleOption(
              text: options[index],
              selected: true,
            );
          }

          return SingleOption(
            text: options[index],
          );
        },
      ),
    );
  }
}
