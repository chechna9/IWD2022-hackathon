import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:iwd2022/Components/slidable_task.dart';
import 'package:iwd2022/classes/task.dart';
import 'package:iwd2022/screens/add_task.dart';

List<Task> currentTasks = [
  Task(description: "jib batata", title: "title1"),
  Task(description: "jib batata", title: "title2"),
  Task(description: "jib batata", title: "title3"),
  Task(description: "jib batata", title: "title4"),
];

List<Task> onProgressTasks = [];
List<Task> finishedTasks = [];
Task targetTask = Task(description: "", title: "");

class Needs extends StatefulWidget {
  const Needs({Key? key}) : super(key: key);

  @override
  State<Needs> createState() => _NeedsState();
}

class _NeedsState extends State<Needs> {
  void addTask() {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        content: AddTask(update: addTaskToList),
      ),
    );
  }

  void addTaskToList(Task e) {
    setState(() {
      currentTasks.add(e);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: () {
        addTask();
      }),
      appBar: AppBar(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Les besoins demandez :"),
          Expanded(
            child: ListView(
              children: currentTasks
                  .map(
                    (e) => SlidableTask(
                      extentRation: 0.5,
                      actions: [
                        SlidableAction(
                          // An action can be bigger than the others.
                          flex: 2,
                          onPressed: (context) {
                            setState(() {
                              currentTasks.remove(e);
                              onProgressTasks.add(e);
                            });
                          },
                          backgroundColor: Color(0xFF7BC043),
                          foregroundColor: Colors.white,
                          icon: Icons.add_task_rounded,
                          label: 'Prendre',
                        ),
                        SlidableAction(
                          onPressed: (context) {
                            setState(() {
                              currentTasks.remove(e);
                            });
                          },
                          backgroundColor: Colors.red,
                          foregroundColor: Colors.white,
                          icon: Icons.delete,
                        ),
                      ],
                      task: Task(
                        title: e.title,
                        description: e.description,
                      ),
                    ),
                  )
                  .toList(),
            ),
          ),
          Text("Les besoins en courant"),
          Expanded(
            child: ListView(
              children: onProgressTasks
                  .map(
                    (e) => SlidableTask(
                      extentRation: 0.5,
                      actions: [
                        SlidableAction(
                          // An action can be bigger than the others.
                          flex: 2,
                          onPressed: (context) {
                            setState(() {
                              onProgressTasks.remove(e);
                              finishedTasks.add(e);
                            });
                          },
                          backgroundColor: Color(0xFF7BC043),
                          foregroundColor: Colors.white,
                          icon: Icons.done,
                          label: 'Achevé',
                        ),
                        SlidableAction(
                          onPressed: (context) {
                            setState(() {
                              onProgressTasks.remove(e);
                            });
                          },
                          backgroundColor: Colors.red,
                          foregroundColor: Colors.white,
                          icon: Icons.delete,
                        ),
                      ],
                      task: Task(
                        title: e.title,
                        description: e.description,
                      ),
                    ),
                  )
                  .toList(),
            ),
          ),
          Text("Terminer :"),
          Expanded(
            child: ListView(
              children: finishedTasks.map((e) {
                targetTask = e;
                return SlidableTask(
                  extentRation: 0.167,
                  actions: [
                    SlidableAction(
                      onPressed: (context) {
                        setState(() {
                          finishedTasks.remove(targetTask);
                        });
                      },
                      backgroundColor: Colors.red,
                      foregroundColor: Colors.white,
                      icon: Icons.delete,
                    ),
                  ],
                  task: Task(
                    title: e.title,
                    description: e.description,
                  ),
                );
              }).toList(),
            ),
          ),
        ],
      ),
    );
  }
}
