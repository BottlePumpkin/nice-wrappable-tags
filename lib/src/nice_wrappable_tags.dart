library nice_wrappable_tags;

import 'package:flutter/material.dart';

class NiceWrappableTags extends StatelessWidget {
  const NiceWrappableTags({
    Key? key,
    required this.title,
    this.tagTextStyle = const TextStyle(),
    this.tagBackgroundColor = Colors.grey,
    this.outPadding = const EdgeInsets.only(right: 10, top: 2),
    this.inPadding = const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
    this.onTap,
    this.boxDecoration,
  }) : super(key: key);

  final List<String> title;
  final TextStyle tagTextStyle;
  final Color tagBackgroundColor;
  final EdgeInsets outPadding;
  final EdgeInsets inPadding;
  final ValueChanged<int>? onTap;
  final BoxDecoration? boxDecoration;

  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: List.generate(
        title.length,
        (index) => Padding(
          padding: outPadding,
          child: InkWell(
            radius: 16,
            onTap: () {
              onTap!(index);
            },
            child: Container(
              padding: inPadding,
              decoration: boxDecoration != null
                  ? BoxDecoration(
                      color: tagBackgroundColor,
                      borderRadius: BorderRadius.circular(16),
                    )
                  : boxDecoration?.copyWith(color: tagBackgroundColor),
              child: Text(title[index], style: tagTextStyle),
            ),
          ),
        ),
      ).toList(),
    );
  }
}
