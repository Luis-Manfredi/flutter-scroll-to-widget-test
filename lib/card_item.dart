import 'package:flutter/material.dart';

class CardItem extends StatelessWidget {
  const CardItem({ Key? key, required this.name, required this.price, required this.description }) : super(key: key);

  final String name, price, description;

  @override
  Widget build(BuildContext context) {

    Size size = MediaQuery.of(context).size;

    return Container(
      margin: const EdgeInsets.all(10),
      padding: const EdgeInsets.all(10),
      width: size.width < 800 ? 300 : size.width,
      height: 100,
      decoration: BoxDecoration(
        color: Colors.purple[50],
        borderRadius: const BorderRadius.all(Radius.circular(10)),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.2),
            blurRadius: 2,
            spreadRadius: 2,
            offset: const Offset(0, 2)
          )
        ]
      ),

      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(name, style: TextStyle(color: Colors.indigo[900], fontWeight: FontWeight.bold)),
              Text(price, style: TextStyle(color: Colors.indigo[900]))
            ],
          ),

          SizedBox(
            // color: Colors.red,
            width: size.width > 800 ? size.width * 0.2 : size.width * 0.5,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  description, 
                  style: TextStyle(color: Colors.indigo[900]),
                  overflow: TextOverflow.fade,
                  maxLines: 4,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}