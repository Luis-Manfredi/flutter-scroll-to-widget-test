import 'package:flutter/material.dart';
import 'package:test_sharedpreferences/content_one.dart';

class Menu extends StatelessWidget {
  const Menu({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: SizedBox(
        width: 1000,
        child: Scaffold(
          appBar: AppBar(
            elevation: 0,
            centerTitle: true,
            title: Text('Menu', style: TextStyle(color: Colors.purple[50], fontSize: 20)),
            backgroundColor: Colors.indigo[900],
    
            bottom: TabBar(
              indicatorColor: Colors.purple[50],
              tabs: const [
                Tab(text: 'Option 1'),
                Tab(text: 'Option 2'),
                Tab(text: 'Option 3')
              ]
            ),
          ),
    
          body: TabBarView(
            children: [
              ContentOne(),
              Container(
                alignment: Alignment.center,
                color: Colors.purple[50],
                child: Text('Content 2', style: TextStyle(color: Colors.indigo[900])),
              ),
              Container(
                alignment: Alignment.center,
                color: Colors.indigo[900],
                child: Text('Content 3', style: TextStyle(color: Colors.purple[50])),
              ),
            ]
          ),
    
          backgroundColor: Colors.transparent
        ),
      ),
    );
  }
}