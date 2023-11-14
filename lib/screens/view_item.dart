import 'package:flutter/material.dart';
import 'package:stock_trackr/widgets/menu_card.dart';
import 'package:stock_trackr/widgets/model.dart';
import 'package:stock_trackr/main.dart';
import 'package:stock_trackr/widgets/left_drawer.dart';

class ViewItem extends StatelessWidget {
  const ViewItem({Key? key}) : super(key: key);
  Card buildItemCard(Item item) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Nama Produk: ${item.productName}"),
            Text("Jumlah: ${item.productAmount}"),
            Text("Deskripsi: ${item.description}"),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text(
            'Lihat Item',
          ),
        ),
        backgroundColor: Color(0xFF333333),
        foregroundColor: Colors.white,
      ),
      drawer: const LeftDrawer(),
      body: ListView.builder(
        itemCount: modelList.length,
        itemBuilder: (BuildContext context, int index) {
          return buildItemCard(modelList[index]);
        },
      ),
    );
  }
}