import 'package:f_todo/widgets/tooltip_widget.dart';
import 'package:flutter/material.dart';

class ToolBarWidget extends StatelessWidget {
  const ToolBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Expanded(
          child: Text(
            '3 oxunmamis todo var',
            style: TextStyle(
              fontSize: 13.0,
            ),
          ),
        ),
        TooltipWidget(
          title: "All",
          func: () {},
        ),
        TooltipWidget(
          title: "Completed",
          func: () {},
        ),
        TooltipWidget(
          title: "Unseen",
          func: () {},
        ),
      ],
    );
  }
}
