import 'package:flutter/material.dart';
import 'package:stock_trackr/widgets/left_drawer.dart';
import 'package:stock_trackr/models/product.dart';

class DetailItemPage extends StatelessWidget {
  final Product data;
  DetailItemPage({required this.data});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Detail"),
        backgroundColor:  Color(0xFF333333),
        foregroundColor: Colors.white,
      ),
      body: Container(
        padding: EdgeInsets.all(12.0),
        child: Column(
          children: <Widget>[
            Container(
                height: 80.0,
                padding: EdgeInsets.all(18.0),
                child: Text("${data.fields.name}",
                    style: const TextStyle(
                        fontSize: 25,
                        letterSpacing: 1,
                        fontWeight: FontWeight.w800))),
            Align(
                child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(children: [
                  const Text("Date: ",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w700)),
                  Text("${data.fields.dateAdded}", style: TextStyle(fontSize: 16))
                ]),
                Row(children: [
                  Text("Amount: ", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700)),
                  Text("${data.fields.amount}", style: TextStyle(fontSize: 16))
                ]),
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                  const Text("Description: ",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w700)),
                  Text("${data.fields.description}", style: TextStyle(fontSize: 16))
                ]),
              ],
            ))
          ],
        ),
      ),
    );
  }
}

// References:
// *) https://medium.com/flutter-community/simple-ways-to-pass-to-and-share-data-with-widgets-pages-f8988534bd5b
// *) https://dev.to/thepythongeeks/how-to-make-a-clickable-container-in-flutter-1953
// *) https://www.fluttercampus.com/guide/84/how-to-change-font-style-of-text-widget-flutter/
// *) https://stackoverflow.com/questions/54513641/flutterwhy-my-column-alignment-is-always-center