import 'package:flutter/material.dart';
import 'package:test_sharedpreferences/landing.dart';
import 'package:test_sharedpreferences/menu.dart';

Color? purple = Colors.purple[900];

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  const Home({ Key? key }) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  final itemKey = GlobalKey();
  final landingKey = GlobalKey();

  Future scrollToItem() async {
    final context = itemKey.currentContext!;

    await Scrollable.ensureVisible(
      context,
      duration: const Duration(milliseconds: 600),
      curve: Curves.ease
    );
  }

  Future jumpToLanding() async {
    final context = landingKey.currentContext!;

    await Scrollable.ensureVisible(
      context,
      duration: const Duration(milliseconds: 600),
      curve: Curves.ease
    );
  }

  @override
  Widget build(BuildContext context) {

    Size size = MediaQuery.of(context).size;
    double screenWidth = size.width;
    double screenHeight = size.height;

    int height = screenHeight.toInt();
    int width = screenWidth.toInt();

    return Scaffold(
      backgroundColor: Colors.purple[50],

      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              key: landingKey,
              height: size.height,
              width: size.width,
              color: Colors.purple[50],
              child: Landing(width: width, height: height)
            ),
            LayoutBuilder(
              builder: (context, constraints) { 
                if (constraints.maxWidth < 1000) {
                  return Container(
                    key: itemKey,
                    height: size.height,
                    width: size.width,
                    color: Colors.indigo[900],
                    child: const MaterialApp(
                      debugShowCheckedModeBanner: false,
                      home: Menu(),
                    ),
                  );
                }
                else {
                  return Container(
                    key: itemKey,
                    height: size.height,
                    width: size.width,
                    padding: const EdgeInsets.symmetric(horizontal: 200),
                    color: Colors.indigo[900],
                    child: const MaterialApp(
                      debugShowCheckedModeBanner: false,
                      home: Menu(),
                    ),
                  );
                }
              },
              
            ),
            Container(
              height: size.height,
              width: size.width,
              color: Colors.purple[50],
            )
          ],
        ),
      ),

      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            margin: const EdgeInsets.only(left: 35),
            child: FloatingActionButton(
              backgroundColor: Colors.purple[50],
              child: Icon(Icons.arrow_upward_rounded, color: Colors.indigo[900]),
              onPressed: () => jumpToLanding(),
            ),
          ),
          FloatingActionButton(
            backgroundColor: Colors.indigo[900],
            child: const Icon(Icons.menu_book),
            onPressed: () => scrollToItem(),
          ),
        ],
      ),

    );
  }
}