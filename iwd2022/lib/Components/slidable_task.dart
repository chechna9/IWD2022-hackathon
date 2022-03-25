import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:iwd2022/classes/task.dart';

class SlidableTask extends StatefulWidget {
  final List<SlidableAction> actions;
  final Task task;
  final double extentRation;
  const SlidableTask(
      {Key? key,
      required this.actions,
      required this.task,
      required this.extentRation})
      : super(key: key);

  @override
  State<SlidableTask> createState() => _SlidableTaskState();
}

class _SlidableTaskState extends State<SlidableTask> {
  @override
  Widget build(BuildContext context) {
    return Slidable(
      endActionPane: ActionPane(
        extentRatio: widget.extentRation,
        motion: const ScrollMotion(),
        children: widget.actions,
      ),
      child: ListTile(
        trailing: Icon(Icons.swap_horiz),
        onTap: () => showDialog(
          context: context,
          builder: (context) => AlertDialog(
            title: const Text("Description"),
            content: Text(widget.task.description),
          ),
        ),
        leading: const Icon(Icons.message),
        title: Text(widget.task.title),
        // tileColor: Colors.blueAccent,
      ),
    );
  }
}
