
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  
  @override
  Widget build(BuildContext context) {
   
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: Text(widget.title),
      ),
      body: Center(
          child: Column(
            
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'Mensagem ao usuário',
              ),

              TextButton(
                onPressed: (){
                  Get.toNamed('/federais');
                }, 
                child: Text('Deputados Federais')
                ),

                TextButton(
                onPressed: (){
                  Get.toNamed('/estaduais');
                }, 
                child: Text('Deputados Estaduais')
                ),
            ],
          ),
      ),
      
    );
  }
}
