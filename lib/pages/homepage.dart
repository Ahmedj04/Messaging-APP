import 'package:flutter/material.dart';
import 'package:messagingapp/pages/chatpage.dart';

class Homepage extends StatefulWidget {
  const Homepage({ Key? key }) : super(key: key);

  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body:Chatpage(),

      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.red,
        unselectedItemColor: Colors.grey.shade600,
        selectedLabelStyle: TextStyle(fontWeight: FontWeight.w600),
        unselectedLabelStyle: TextStyle(fontWeight: FontWeight.w600),
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon:Icon(Icons.message),
            label: 'Chat' ),

             BottomNavigationBarItem(
            icon:Icon(Icons.group_work),
            label: 'Channels' ),

             BottomNavigationBarItem(
            icon:Icon(Icons.account_box),
            label: 'Profile' )

        ]
        ),
    );
  }
}