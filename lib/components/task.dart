import 'package:flutter/material.dart';
import 'package:todo_app/models/global.dart';

class SalverTask extends StatelessWidget {
  final String title;
  final bool completed;
  final String taskId;
  Function handleCompleted;
  SalverTask({this.title, this.completed, this.handleCompleted, this.taskId});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      margin: EdgeInsets.only(top: 10, left: 10, right: 10),
      decoration: BoxDecoration(
        color: red,
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
      child: Row(
        children: <Widget>[
          GestureDetector(
            onTap: () => handleCompleted(taskId),
            child: Container(
              decoration:
                  BoxDecoration(shape: BoxShape.circle, color: Colors.white),
              margin: EdgeInsets.only(left: 10, right: 20),
              child: Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: completed
                      ? Icon(
                          Icons.check,
                          size: 20.0,
                          color: red,
                        )
                      : Icon(
                          Icons.airline_seat_legroom_extra,
                          size: 20,
                          color: Colors.white,
                        )),
            ),
          ),
          Text(
            title,
            style: !completed ? taskTitle : taskTitleCompleted,
          )
        ],
      ),
    );
  }
}
