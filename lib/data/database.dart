import 'package:hive/hive.dart';

class ToDoDataBase{
  List todoList = [];
  final _myBox = Hive.box("mybox");

  void createInitialData(){
    todoList = [
      ["Add Your Task", false],
    ];
  }
  void loadData(){
    todoList = _myBox.get("TODOLIST");
  }

  void updateDate(){
    _myBox.put("TODOLIST", todoList);

  }
}