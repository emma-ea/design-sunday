import 'package:flutter/material.dart';

class AddNewTask extends StatelessWidget {
  const AddNewTask({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height * 0.4,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
          ),
          child: const Center(
            child: Text('New Task'),
          ),
        ),
        const SizedBox(height: 20,),
        Container(
          width: MediaQuery.of(context).size.width,
          height: 50,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
          ),
          child: const Center(
            child: Text('Add Task'),
          ),
        ),
      ],
    );
  }
}

void showAddTaskDialog(BuildContext context) {
  showDialog(
    context: context, 
    builder: ((context) {
      return const AlertDialog(
        backgroundColor: Colors.transparent,
        contentPadding: null,
        scrollable: true,
        elevation: 0,
        content: AddNewTask()
      );
    })
  );
}