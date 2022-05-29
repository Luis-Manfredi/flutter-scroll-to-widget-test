import 'package:flutter/material.dart';

class Landing extends StatelessWidget {
  const Landing({Key? key, required this.width, required this.height}) : super(key: key);

  final int width;
  final int height;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: LayoutBuilder(
        builder: (context, constraints) {
          if (constraints.maxWidth < 600){
            //Mobile
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Landing page', style: TextStyle(color: Colors.indigo[900], fontSize: 20)),
                Text('Width: $width. Height $height',
                  style: TextStyle(color: Colors.indigo[900], fontSize: 20)
                ),
              ],
            );
          }
          else if (constraints.maxWidth > 600 && constraints.maxWidth < 830){
            //Tablets
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Landing page', style: TextStyle(color: Colors.indigo[900], fontSize: 30)),
                Text('Width: $width. Height $height',
                  style: TextStyle(color: Colors.indigo[900], fontSize: 20)
                ),
              ],
            );
          }
          else {
            // Desktop
            return Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Landing page. Width: $width. Height $height',
                  style: TextStyle(color: Colors.indigo[900], fontSize: 30)
                ),
              ],
            );
          }
        },
        
      ),
    );
  }
}
