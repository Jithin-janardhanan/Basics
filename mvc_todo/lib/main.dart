import 'package:flutter/material.dart';
import 'package:mvc_todo/controller/todo_controller.dart';
import 'package:mvc_todo/view/todo_listview.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final TodoController _controller = TodoController();
  final TextEditingController _textEditingController = TextEditingController();

  void _addTodo() {
    if (_textEditingController.text.isNotEmpty) {
      setState(() {
        _controller.addTodo(_textEditingController.text);
      });
    }
  }

  void _toggleTodoCompleted(int index) {
    setState(() {
      _controller.toggletodoController(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('MVC'),
        ),
        body: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(8.0),
              child: TextField(
                controller: _textEditingController,
                decoration: InputDecoration(
                    labelText: 'New Todo',
                    suffixIcon: IconButton(
                      icon: const Icon(Icons.add),
                      onPressed: () {
                        _addTodo();
                        _textEditingController.clear();
                      },
                    )),
              ),
            ),
            Expanded(
                child: TodoListView(
                    todos: _controller.todos, onTodoTap: _toggleTodoCompleted))
          ],
        ),
      ),
    );
  }
}
