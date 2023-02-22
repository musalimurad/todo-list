class TodoModel {
  String id;
  String description;
  bool isCompleted;
  TodoModel({
    required this.id,
    required this.description,
    this.isCompleted = false,
  });
}
