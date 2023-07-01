import 'package:flutter/material.dart';
//import 'package:tbc_1/constants/constants.dart';
import 'package:tbc_1/screens/widgets/all_workers_widget.dart';
import 'package:tbc_1/screens/widgets/drawer.dart';
//import 'package:tbc_1/screens/widgets/tasks_widget.dart';

class AllWorkersScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      drawer: DrawerWidget(),
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        title: Text(
          'All Staff',
          style: TextStyle(color: Colors.pink),
        ),
      ),
      body: ListView.builder(
          itemCount: 10,
          itemBuilder: (BuildContext context, int index) {
            return AllWorkersWidget();
          }),
    );
  }
}
