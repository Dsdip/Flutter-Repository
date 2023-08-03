import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'nextapge.dart';

class Todoapp extends StatelessWidget {
  Todoapp({super.key});

  TextEditingController todoController = TextEditingController();
  TextEditingController taskdesController = TextEditingController();

  Stream<dynamic> showData() {
    return FirebaseFirestore.instance.collection("TodoApp").snapshots();
  }

  Future<void> updateTodo(String id, bool done) async {
    var todo = FirebaseFirestore.instance.collection('TodoApp').doc(id);

    done ? todo.update({'done': false}) : todo.update({'done': true});
  }

  Future<void> removeTodo(String id) async {
    await FirebaseFirestore.instance.collection('TodoApp').doc(id).delete();
  }

  var currentDate = DateFormat.yMMMEd().format(DateTime.now());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF31315C),
      appBar: AppBar(
        backgroundColor: const Color(0xFF31315C),
        iconTheme: const IconThemeData(color: Colors.white),
        toolbarTextStyle: const TextStyle(
            color: Colors.white, fontSize: 20, fontWeight: FontWeight.w500),
        title: const Icon(Icons.menu, size: 25),
        actions: const [
          Icon(Icons.dark_mode_outlined, size: 25),
          SizedBox(width: 10),
          Text('To Do App'),
          SizedBox(width: 20)
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextField(
                controller: todoController,
                style: const TextStyle(
                    fontSize: 22,
                    color: Colors.white,
                    fontWeight: FontWeight.w500),
                decoration: InputDecoration(
                  fillColor: Colors.black12,
                  filled: true,
                  prefix: const SizedBox(width: 10),
                  suffixIcon: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: CircleAvatar(
                      radius: 20,
                      backgroundColor: Colors.indigoAccent,
                      child: IconButton(
                          onPressed: () async {
                            if (todoController.text != '') {
                              await showDialog(
                                  context: context,
                                  builder: (context) => AlertDialog(
                                        backgroundColor: Colors.blue[100],
                                        title: const Text('Task Description'),
                                        content: TextField(
                                          decoration: const InputDecoration(
                                            hintText: 'Add Description',
                                          ),
                                          controller: taskdesController,
                                        ),
                                        actions: [
                                          ElevatedButton(
                                              onPressed: () {
                                                Navigator.of(context).pop();
                                              },
                                              child: const Text(
                                                'Submit',
                                                style: TextStyle(
                                                    fontSize: 18,
                                                    color: Colors.indigo),
                                              )),
                                          ElevatedButton(
                                              onPressed: () {
                                                taskdesController.clear();
                                              },
                                              child: const Text(
                                                'Clear',
                                                style: TextStyle(
                                                    fontSize: 18,
                                                    color: Colors.redAccent),
                                              ))
                                        ],
                                      ));

                              DateTime? pickedDate = await showDatePicker(
                                  context: context,
                                  initialDate: DateTime.now(),
                                  firstDate: DateTime(2023),
                                  lastDate: DateTime(2024));

                              FirebaseFirestore.instance
                                  .collection('TodoApp')
                                  .add({
                                'done': false,
                                'Title': todoController.text,
                                'subtitle': taskdesController.text,
                                'due': pickedDate
                              });
                              todoController.clear();
                              taskdesController.clear();
                            }
                          },
                          icon: const Icon(Icons.add, color: Colors.white)),
                    ),
                  ),
                  hintText: 'Add Task',
                  hintStyle: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                      color: Colors.white54),
                  enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: Colors.transparent),
                    borderRadius: BorderRadius.circular(40),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(40),
                    borderSide: const BorderSide(color: Colors.cyanAccent),
                  ),
                ),
              ),
            ),
            Divider(
              height: 20,
              color: Colors.grey[700],
            ),
            const SizedBox(
              height: 10,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 32),
              child: Text(
                'TO DO',
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    color: Colors.white54),
              ),
            ),
            const SizedBox(height: 10),
            StreamBuilder(
              stream: showData(),
              builder: (context, snapshot) => snapshot.connectionState ==
                      ConnectionState.waiting
                  ? const Center(child: CircularProgressIndicator())
                  : ListView.separated(
                      physics: const NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: snapshot.data!.size ?? 0,
                      itemBuilder: (context, index) {
                        return !snapshot.data.docs[index]['done']
                            ? Task_Box(
                                child: ExpansionTile(
                                  tilePadding: const EdgeInsets.all(15),
                                  title: Text(
                                      snapshot.data.docs[index]['Title'],
                                      style: const TextStyle(
                                          fontSize: 16, color: Colors.white70)),
                                  leading: InkWell(
                                    onTap: () {
                                      bool done =
                                          snapshot.data.docs[index]['done'];
                                      String id = snapshot.data.docs[index].id;
                                      updateTodo(id, done);
                                    },
                                    child: const CircleAvatar(
                                      backgroundColor: Colors.white,
                                      radius: 12,
                                    ),
                                  ),
                                  trailing: Text(
                                      DateFormat.yMMMEd().format(snapshot
                                                  .data.docs[index]['due']
                                                  .toDate()) ==
                                              currentDate
                                          ? 'Due Today'
                                          : DateFormat.yMMMEd().format(snapshot
                                              .data.docs[index]['due']
                                              .toDate()),
                                      style: const TextStyle(
                                          fontSize: 14,
                                          color: Colors.blueAccent)),
                                  children: [
                                    Task_Box(
                                        child: ListTile(
                                      title: Text(
                                          snapshot.data.docs[index]['subtitle'],
                                          style: const TextStyle(
                                              fontSize: 18,
                                              color: Colors.white70)),
                                    ))
                                  ],
                                ),
                              )
                            : Container();
                      },
                      separatorBuilder: (context, index) => Container()),
            ),
            const SizedBox(height: 20),
            const Padding(
              padding: EdgeInsets.only(left: 32),
              child: Text(
                'COMPLETED',
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    color: Colors.white54),
              ),
            ),
            const SizedBox(height: 10),
            StreamBuilder(
                stream: showData(),
                builder: (context, snapshot) => snapshot.connectionState ==
                        ConnectionState.waiting
                    ? const Center(child: CircularProgressIndicator())
                    : ListView.builder(
                        physics: const NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        itemCount: snapshot.data!.size ?? 0,
                        itemBuilder: (context, index) => snapshot
                                .data.docs[index]['done']
                            ? Task_Box(
                                color: Colors.white12,
                                child: ListTile(
                                    contentPadding: const EdgeInsets.all(15),
                                    leading: InkWell(
                                      onTap: () {
                                        bool done =
                                            snapshot.data.docs[index]['done'];
                                        String id =
                                            snapshot.data.docs[index].id;
                                        updateTodo(id, done);
                                      },
                                      child: CircleAvatar(
                                        backgroundColor:
                                            Colors.greenAccent[100],
                                        radius: 12,
                                        child: const Icon(
                                          Icons.check,
                                          color: Colors.teal,
                                        ),
                                      ),
                                    ),
                                    title: Text(
                                        snapshot.data.docs[index]['Title'],
                                        style: const TextStyle(
                                            fontSize: 16,
                                            color: Colors.white24,
                                            decoration:
                                                TextDecoration.lineThrough,
                                            decorationColor: Colors.white24)),
                                    trailing: IconButton(
                                        onPressed: () => removeTodo(
                                            snapshot.data.docs[index].id),
                                        icon: const Icon(Icons.delete,
                                            color: Colors.red, size: 28))),
                              )
                            : Container()))
          ],
        ),
      ),
    );
  }
}
