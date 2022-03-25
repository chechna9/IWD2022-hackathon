import 'package:flutter/material.dart';
import 'package:iwd2022/classes/task.dart';
import 'package:iwd2022/constants.dart';

class AddTask extends StatefulWidget {
  final Function update;
  const AddTask({Key? key, required this.update}) : super(key: key);

  @override
  State<AddTask> createState() => _AddTaskState();
}

class _AddTaskState extends State<AddTask> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController titleController = TextEditingController();
  TextEditingController descriptionController = TextEditingController();
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: MediaQuery.of(context).size.width / 3),
      padding: const EdgeInsets.symmetric(
        horizontal: 20,
      ),
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          leading: ElevatedButton(
            style: TextButton.styleFrom(
                backgroundColor: Colors.transparent, elevation: 0),
            onPressed: () => _scaffoldKey.currentState!.openDrawer(),
            child: Container(
              padding: EdgeInsets.only(left: 7),
              child: Image.asset(
                'assets/home.png',
                width: 30.0,
                height: 30.0,
                fit: BoxFit.contain,
              ),
            ),
          ),
          actions: [
            Container(
              padding: EdgeInsets.only(right: 7),
              child: Image.asset(
                'assets/LG-LOGO.png',
                width: 70.0,
                height: 70.0,
                fit: BoxFit.cover,
              ),
            ),
          ],
        ),
        backgroundColor: Colors.transparent,
        body: SingleChildScrollView(
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextFormField(
                  controller: titleController,
                  validator: ((value) =>
                      value!.isEmpty ? "Remplire ce champs" : null),
                  decoration: InputDecoration(
                    errorStyle: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                    fillColor: Colors.white,
                    filled: true,
                    hintText: "Titre",
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: const BorderSide(color: Colors.white),
                    ),
                    errorBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: const BorderSide(color: Colors.red),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: const BorderSide(color: Colors.white),
                    ),
                    focusedErrorBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: const BorderSide(color: Colors.red),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                TextFormField(
                  maxLines: 4,
                  controller: descriptionController,
                  validator: ((value) =>
                      value!.isEmpty ? "Remplire ce champs" : null),
                  decoration: InputDecoration(
                    errorStyle: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                    fillColor: Colors.white,
                    filled: true,
                    hintText: "Description",
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: const BorderSide(color: Colors.white),
                    ),
                    errorBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: const BorderSide(color: Colors.red),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: const BorderSide(color: Colors.white),
                    ),
                    focusedErrorBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: const BorderSide(color: Colors.red),
                    ),
                  ),
                ),
                const SizedBox(height: 30),
                Row(
                  children: [
                    Expanded(
                      child: TextButton(
                        style: TextButton.styleFrom(
                          backgroundColor: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                        ),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: const Text(
                          'Annuler',
                          style: TextStyle(
                              color: myRed,
                              fontWeight: FontWeight.w900,
                              fontSize: 24),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    Expanded(
                      child: TextButton(
                        style: TextButton.styleFrom(
                          backgroundColor: myRed,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                        ),
                        onPressed: () async {
                          if (_formKey.currentState!.validate()) {
                            //TODO
                            widget.update(Task(
                                description: descriptionController.text,
                                title: titleController.text));
                            Navigator.pop(context);
                          }
                        },
                        child: const Text(
                          'Ajouter',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w900,
                              fontSize: 24),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
