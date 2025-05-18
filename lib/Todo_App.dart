import 'package:flutter/material.dart';

class TodoApp extends StatefulWidget {
  const TodoApp({super.key});

  @override
  State<TodoApp> createState() => _TodoAppState();
}

class _TodoAppState extends State<TodoApp> {
  TextEditingController TaskController = TextEditingController();

  List<String> _Tasks = [];

  void _AddTask(){           //..........this function add task with add button
    if(TaskController.text.isNotEmpty){
      setState(() {
        _Tasks.add(TaskController.text);
        TaskController.clear();
      });

    }
  }

  void _DeleteTask(int index){  //...this function delete with delete button
    setState(() {
      _Tasks.removeAt(index);

    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Todo App'),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),

      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: TaskController,
                    decoration: InputDecoration(
                      labelText: 'Enter Task',
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                SizedBox(width: 10),
                ElevatedButton(onPressed: _AddTask, child: Text('Add')),
              ],
            ),
            Expanded(
              // expand is the technique that is used for required space of text-field and that used when we take button beside text-field within row
              child: ListView.builder(
                itemCount: _Tasks.length,
                itemBuilder: (context, index) {
                  return Card(
                    child: ListTile(
                      title: Text(_Tasks[index]),
                      trailing: IconButton(
                        onPressed:()=> _DeleteTask(index),
                        icon: Icon(Icons.delete),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
