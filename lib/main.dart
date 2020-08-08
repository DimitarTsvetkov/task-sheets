import 'package:flutter/material.dart';
import 'package:task_sheets/utils/dbhelper.dart';
import 'package:task_sheets/model/todo.dart';
import 'package:task_sheets/screens/todolist.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // adding items for test
    // List<Todo> todos = List<Todo>();
    // DbHelper helper = DbHelper();
    // helper
    //     .initializeDb()
    //     .then((result) => helper.getTodos().then((result) => todos = result));
    // DateTime today = DateTime.now();
    // Todo todo =
    //     Todo("Buy Oranges", 2, today.toString(), "And Make Sure they are good");
    // var result = helper.insertTodo(todo);

    return MaterialApp(
      title: 'Task sheets',
      theme: ThemeData(
        primarySwatch: Colors.deepOrange,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Task Sheets'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(widget.title),
      ),
      body: TodoList(),
    );
  }
}
