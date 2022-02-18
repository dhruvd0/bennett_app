import 'package:flutter/material.dart';

class StudentHomePage extends StatelessWidget {
  const StudentHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: Theme.of(context).backgroundColor,
      appBar: AppBar(
        title: Title(
          color: Colors.white,
          child: Text('Bennett University'),
        ),
      ),



      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [

        Container(height: 300,color: Colors.green,),


      ]),
    );
  }
}
