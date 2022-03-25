import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:iwd2022/Components/slidable_task.dart';
import 'package:iwd2022/classes/task.dart';
import 'package:iwd2022/constants.dart';
import 'package:iwd2022/screens/add_task.dart';

List<Task> currentTasks = [
  Task(
      description:
          "jib batatajib batatajib batatajib batatajib batatajib batatajib batatajib batatajib batatajib batatajib batatajib batatajib batatajib batatajib batatajib batatajib batatajib batatajib batatajib batatajib batatajib batatajib batatajib batatajib batatajib batatajib batatajib batatajib batatajib batatajib batatajib batatajib batatajib batatajib batatajib batatajib batatajib batata",
      title: "title1"),
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
      builder: (context) => AddTask(update: addTaskToList),
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
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          addTask();
        },
        child: const Icon(
          Icons.add,
          size: 45,
        ),
        backgroundColor: myRed,
      ),
      appBar: AppBar(
          backgroundColor: Colors.white,
          title: Column(children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //crossAxisAlignment: CrossAxisAlignment.,
              children: [
                Container(
                  padding: EdgeInsets.only(left: 22),
                  child: Image.asset(
                    'assets/home.png',
                    width: 30.0,
                    height: 30.0,
                    fit: BoxFit.contain,
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(right: 20),
                  child: Image.asset(
                    'assets/LG-LOGO.png',
                    width: 70.0,
                    height: 70.0,
                    fit: BoxFit.cover,
                  ),
                ),
              ],
            ),
          ])),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: const [
                Icon(
                  Icons.note_add_outlined,
                  size: 35,
                ),
                Text(
                  "Les besoins :",
                  style: TextStyle(
                    color: myRed,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            Column(
              children: currentTasks.isEmpty
                  ? [
                      Center(
                        heightFactor: 2,
                        child: Text("vide"),
                      ),
                    ]
                  : currentTasks
                      .map(
                        (e) => SlidableTask(
                          extentRation: 0.35,
                          actions: [
                            SlidableAction(
                              flex: 2,
                              // An action can be bigger than the others.

                              onPressed: (context) {
                                setState(() {
                                  currentTasks.remove(e);
                                  onProgressTasks.add(e);
                                });
                              },
                              backgroundColor: Colors.transparent,
                              icon: Icons.add_task_rounded,
                              foregroundColor: Colors.blue[600],
                            ),
                            SlidableAction(
                              onPressed: (context) {
                                setState(() {
                                  currentTasks.remove(e);
                                });
                              },
                              backgroundColor: Colors.transparent,
                              foregroundColor: myRed,
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
            Row(
              children: const [
                Icon(
                  Icons.note_add_outlined,
                  size: 35,
                ),
                Text(
                  "En cours :",
                  style: TextStyle(
                    color: myRed,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            Column(
              children: onProgressTasks.isEmpty
                  ? [
                      Center(
                        heightFactor: 2,
                        child: Text("vide"),
                      ),
                    ]
                  : onProgressTasks
                      .map(
                        (e) => SlidableTask(
                          extentRation: 0.35,
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
                              backgroundColor: Colors.transparent,
                              icon: Icons.add_task_rounded,
                              foregroundColor: Colors.blue[600],
                            ),
                            SlidableAction(
                              onPressed: (context) {
                                setState(() {
                                  onProgressTasks.remove(e);
                                });
                              },
                              backgroundColor: Colors.transparent,
                              foregroundColor: myRed,
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
            Row(
              children: const [
                Icon(
                  Icons.note_add_outlined,
                  size: 35,
                ),
                Text(
                  "Terminer :",
                  style: TextStyle(
                    color: myRed,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            Column(
              children: finishedTasks.isEmpty
                  ? [
                      Center(
                        heightFactor: 2,
                        child: Text("vide"),
                      )
                    ]
                  : finishedTasks.map((e) {
                      targetTask = e;
                      return SlidableTask(
                        extentRation: 0.35,
                        actions: [
                          SlidableAction(
                            onPressed: (context) {
                              setState(() {
                                finishedTasks.remove(targetTask);
                              });
                            },
                            backgroundColor: Colors.transparent,
                            foregroundColor: myRed,
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
          ],
        ),
      ),
    );
  }
}
