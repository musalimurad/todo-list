import 'package:f_todo/model/todo_model.dart';
import 'package:f_todo/widgets/title_widget.dart';
import 'package:f_todo/widgets/todo_item_widget.dart';
import 'package:f_todo/widgets/toolbar_widget.dart';
import 'package:flutter/material.dart';
import 'package:uuid/uuid.dart';

class TodoApp extends StatelessWidget {
  TodoApp({super.key});
  final todoController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    List<TodoModel> allTodo = [
      TodoModel(id: Uuid().v4(), description: "corek al"),
      TodoModel(id: Uuid().v4(), description: "su al"),
      TodoModel(id: Uuid().v4(), description: "ders oxu"),
    ];
    return Scaffold(
      body: ListView(
        padding: const EdgeInsets.symmetric(
          horizontal: 20.0,
          vertical: 60.0,
        ),
        children: [
          const TitleWidget(),
          TextField(
            controller: todoController,
            onSubmitted: (value) {
              debugPrint(value);
            },
            decoration: const InputDecoration(
              labelText: 'Add todo',
            ),
          ),
          const SizedBox(
            height: 20.0,
          ),
          const ToolBarWidget(),
          for (var i = 0; i < allTodo.length; i++)
            Dismissible(
              key: ValueKey(allTodo[i].id),
              onDismissed: (_) {},
              child: TodoItemWidget(
                item: allTodo[i],
              ),
            ),
        ],
      ),
    );
  }
}
