


import 'package:bloc_todo/add_task_page.dart';
import 'package:bloc_todo/model/model.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        centerTitle: true,
        title: const Text("Bloc Todo"),
        actions: [IconButton(
          onPressed: () {
            Navigator.of(context).push(MaterialPageRoute(builder: (context){
              return const AddTaskPage();
            }));
          },
        icon: const Icon(Icons.add),)],),

        body: Column(children: [
          const SizedBox(height: 20,),
          Text("Todo Tasks", style: Theme.of(context).textTheme.headline6),
          const SizedBox(height: 10,),
          SizedBox(
            width: MediaQuery.of(context).size.width,
            child: _buildTodoCards(context),)
        ],),

        floatingActionButton: FloatingActionButton(
          onPressed: (){},
          child:const Icon(Icons.add)),
    );

    
  }



  Widget _buildTodoCards(BuildContext context){
    return ListView.builder(
      shrinkWrap: true,
      itemCount: Todo.todoList.length,
      itemBuilder: (context, index){
        return Card(
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            height: 50,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
              Text(Todo.todoList[index].task),
             Row(children:  [
                IconButton(onPressed: (){}, icon: const Icon(Icons.done_all_outlined),),
                const SizedBox(width: 10,),
                IconButton(onPressed: (){}, icon: const Icon(Icons.delete))
             ],)
            ],)),
        );
      });
  }


}

List<String> todos = ['Go to the market', 'Buy puff puff', 'Take a spring break'];