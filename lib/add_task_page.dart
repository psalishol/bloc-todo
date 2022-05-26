


import 'package:bloc_todo/model/model.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'dart:math' as math show Random;

class AddTaskPage extends StatefulWidget {
  const AddTaskPage({Key? key}) : super(key: key);

  @override
  State<AddTaskPage> createState() => _AddTaskPageState();
}

class _AddTaskPageState extends State<AddTaskPage> {

  TextEditingController titleController = TextEditingController();
  TextEditingController descriptionController = TextEditingController();

  int generateTaskId() => math.Random().nextInt(783834) ^ math.Random().nextInt(236231);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        title: const Text("Add Task"),
        centerTitle: true,
      ),
      body: Column(children: [
       const SizedBox(height: 10),
       _buildTextField("Title", titleController),
       const SizedBox(height: 10),
       _buildTextField("Description", descriptionController),
       const SizedBox(height: 20),

       GestureDetector(
         onTap: (){
           var todo = Todo(
             id: generateTaskId().toString(), 
             task: titleController.value.text, 
             description: descriptionController.value.text
             );
         },
         child: Container(
           height: 40,
           width: 100,
           decoration: BoxDecoration(
             color:  Colors.blue,
             borderRadius: BorderRadius.circular(10),
           ),
           child:  const Center(child: Text("Add To Task", 
                      style: TextStyle(color: Colors.white, fontSize: 16),)),
         ),
       )
      ],),
    );
  }

  Widget _buildTextField(
    String fieldHint, 
    TextEditingController controller){
      return Container(
        height: 40,
        width: MediaQuery.of(context).size.width,
        margin: const EdgeInsets.symmetric(horizontal: 15),
        child: TextField(
          controller: controller,
          decoration: InputDecoration(
            hintText: fieldHint
          ),
      ),);
    }
}