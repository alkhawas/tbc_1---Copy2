import 'package:flutter/material.dart';
import 'package:tbc_1/constants/constants.dart';
import 'package:tbc_1/inner_screens/profile.dart';
import 'package:tbc_1/screens/all_workers.dart';
import 'package:tbc_1/screens/tasks.dart';

import '../../inner_screens/add_task.dart';

class DrawerWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: ListView(
      children: [
        DrawerHeader(
            decoration: BoxDecoration(color: Colors.cyan),
            child: Column(
              children: [
                Flexible(
                    child: Image.network(
                        'https://drive.google.com/uc?export=view&id=1KAOui5h1iE_jvMbV_b95iZL6gQwOln_G')),
                SizedBox(
                  height: 10,
                ),
                Flexible(
                    child: Text(
                  'My Profile',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Constants.darkBlue,
                      fontSize: 22,
                      fontStyle: FontStyle.italic),
                ))
              ],
            )),
        SizedBox(
          height: 30,
        ),
        _listTiles(label: 'All tasks', fct: () {_navigateToTaskScreen(context);}, icon: Icons.task_outlined),
        _listTiles(
            label: 'My account', fct: () {_navigateToProfileScreen(context);}, icon: Icons.settings_outlined),
        _listTiles(
            label: 'Registered Staff',
            fct: () {_navigateToAllWorkersScreen(context);},
            icon: Icons.workspaces_outline),
        _listTiles(
            label: 'Add task',
            fct: () {
              _navigateToAddTaskScreen(context);
            },
            icon: Icons.add_task_outlined),
        Divider(
          thickness: 1,
        ),
        _listTiles(
            label: 'Logout',
            fct: () {
              _logout(context);
            },
            icon: Icons.logout_outlined),
      ],
    ));
  }

// Add task screen

  void _navigateToAddTaskScreen(context) {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (context) => AddTaskScreen(),
      ),
    );
  }


// call the pages
  void _navigateToTaskScreen(context) {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (context) => TasksScreen(),
      ),
    );
  }


// call the pages
  void _navigateToAllWorkersScreen(context) {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (context) => AllWorkersScreen(),
      ),
    );
  }

// call the pages
  void _navigateToProfileScreen(context) {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (context) => ProfileScreen(),
      ),
    );
  }



  void _logout(context) {
    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.network(
                    'https://drive.google.com/uc?export=view&id=1KAOui5h1iE_jvMbV_b95iZL6gQwOln_G',
                    height: 20,
                    width: 20,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text('Sign out'),
                ),
              ],
            ),
            content: Text(
              'Do you wanna Sign out',
              style: TextStyle(
                  color: Constants.darkBlue,
                  fontSize: 20,
                  fontStyle: FontStyle.italic),
            ),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.canPop(context) ? Navigator.pop(context) : null;
                },
                child: Text('Cancel'),
              ),
              TextButton(
                  onPressed: () {},
                  child: Text(
                    'OK',
                    style: TextStyle(color: Colors.red),
                  ))
            ],
          );
        });
  }

  Widget _listTiles(
      {required String label, required Function fct, required IconData icon}) {
    return ListTile(
      onTap: () {
        fct();
      },
      leading: Icon(
        icon,
        color: Constants.darkBlue,
      ),
      title: Text(
        label,
        style: TextStyle(
            color: Constants.darkBlue,
            fontSize: 20,
            fontStyle: FontStyle.italic),
      ),
    );
  }
}
