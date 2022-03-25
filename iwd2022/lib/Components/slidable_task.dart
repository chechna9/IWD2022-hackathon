import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:iwd2022/classes/task.dart';
import 'package:iwd2022/constants.dart';

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
      child: Center(
        child: Column(
          children: [
            ListTile(
              subtitle: Text(
                widget.task.description,
                maxLines: 1,
              ),
              trailing: const Icon(
                Icons.keyboard_double_arrow_left_rounded,
                color: myRed,
              ),
              onTap: () => showDialog(
                context: context,
                builder: (context) => AlertDialog(
                  title: Text(widget.task.title),
                  content: Text(widget.task.description),
                ),
              ),
              leading: const Icon(
                Icons.playlist_add_check_outlined,
                size: 35,
              ),
              title: Text(widget.task.title),
              // tileColor: Colors.blueAccent,
            ),
            const Divider(
              indent: 20,
              endIndent: 20,
              color: Colors.grey,
              height: 2,
              thickness: 1,
            ),
          ],
        ),
      ),
    );
  }
}
