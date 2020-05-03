import 'package:flutter/material.dart';
import 'package:todo_app/classes/task.dart';
import 'package:todo_app/components/salver.dart';
import 'package:todo_app/models/global.dart';
import 'package:todo_app/components/task.dart';

class SalverContainer extends StatefulWidget {
  @override
  _SalverContainerState createState() => _SalverContainerState();
}

class _SalverContainerState extends State<SalverContainer> {
  var _list = <Task>[];
  String text = "";
  void handleReorder(int start, int current) {
    if (start < current) {
      int end = current - 1;
      Task startItem = _list[start];
      int i = 0;
      int local = start;
      do {
        _list[local] = _list[++local];
        i++;
      } while (i < end - start);
      _list[end] = startItem;
    }
    // dragging from bottom to top
    else if (start > current) {
      Task startItem = _list[start];
      for (int i = start; i > current; i--) {
        _list[i] = _list[i - 1];
      }
      _list[current] = startItem;
    }
    setState(() {
      _list:
      _list;
    });
  }

  void handleAddTask(TextEditingController controller) {
    if (controller.text != "") {
      setState(() {
        _list = [
          ..._list,
          new Task(
              completed: false,
              title: controller.text,
              taskId: _list.length.toString())
        ];
      });
    }
  }

  void handleCompleted(String id) {
    _list.asMap().forEach((index, task) {
      if (task.taskId == id) {
        setState(() {
          _list[index].completed = !_list[index].completed;
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Salver(handleAddTask: handleAddTask),
        Container(
          padding: EdgeInsets.only(top: 50),
          height: MediaQuery.of(context).size.height - 216,
          child: Theme(
            data: ThemeData(
              canvasColor: Colors.transparent,
            ),
            child: ReorderableListView(
                onReorder: (int start, int current) =>
                    handleReorder(start, current),
                children: _list
                    .map((item) => ListTile(
                          key: Key(item.taskId),
                          title: SalverTask(
                            title: item.title,
                            completed: item.completed,
                            taskId: item.taskId,
                            handleCompleted: handleCompleted,
                          ),
                        ))
                    .toList()),
          ),
        )
      ],
    );
  }
}
