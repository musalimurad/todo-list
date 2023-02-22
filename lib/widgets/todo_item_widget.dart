import 'package:f_todo/model/todo_model.dart';
import 'package:flutter/material.dart';

class TodoItemWidget extends StatelessWidget {
  final TodoModel item;
  const TodoItemWidget({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Checkbox(
        onChanged: (value) {},
        value: true,
      ),
      title: Text(item.description),
    );
  }
}
