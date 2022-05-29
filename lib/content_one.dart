import 'package:flutter/material.dart';
import 'package:test_sharedpreferences/card_item.dart';
import 'package:test_sharedpreferences/data.dart';

class ContentOne extends StatelessWidget {
  const ContentOne({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    Size size = MediaQuery.of(context).size;

    return Container(
      child: listBuilder()
    );
  }

  Widget rowList(BuildContext context, Widget widget) { 
    Size size = MediaQuery.of(context).size;

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        SizedBox(
          width: size.width * 0.3,
          child: widget
        ),

        SizedBox(
          width: size.width * 0.3,
          child: widget
        ),
      ],
    );
  }

  Widget listBuilder() => ListView.separated(
    itemBuilder: (context, index) { 
      var itemIndex = listOfItemsOne[index];
      
      return CardItem(
        name: itemIndex.name,
        description: itemIndex.description,
        price: itemIndex.price,
      );
    }, 
    separatorBuilder: (context, index) => const SizedBox(height: 10), 
    itemCount: listOfItemsOne.length
  );
}