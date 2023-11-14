import 'package:flutter/material.dart';
import 'package:stock_trackr/screens/shoplist_form.dart';
import 'package:stock_trackr/screens/view_item.dart';

class StockItem {
  final String name;
  final IconData icon;

  StockItem(this.name, this.icon);
}

class StockCard extends StatelessWidget {
  final StockItem item;

  const StockCard(this.item, {super.key}); // Constructor

  @override
  Widget build(BuildContext context) {
    Color buttonCollor;
    if (item.name == "Lihat Item"){
      buttonCollor = Color(0xFF0077C0);
    } else if (item.name == "Tambah Item"){
      buttonCollor = Color(0xFF3498DB);
    } else if (item.name == "Logout"){
      buttonCollor = Color(0xFF333333);
    } else{
      buttonCollor = Color.fromARGB(255, 133, 132, 133);
    }

    return Material(
      color: buttonCollor,
      child: InkWell(
        // Area responsive terhadap sentuhan
        onTap: () {
          // Memunculkan SnackBar ketika diklik
          ScaffoldMessenger.of(context)
            ..hideCurrentSnackBar()
            ..showSnackBar(SnackBar(
                content: Text("Kamu telah menekan tombol ${item.name}!")));

          // Navigate ke route yang sesuai (tergantung jenis tombol)
          if (item.name == "Tambah Item") {
            Navigator.push(context, MaterialPageRoute(builder: (context) => const ShopFormPage()));
          }
          if (item.name == "Lihat Item"){
            Navigator.push(context, MaterialPageRoute(builder: (context) => const ViewItem()));
          
          }
        },
        child: Container(
          // Container untuk menyimpan Icon dan Text
          padding: const EdgeInsets.all(8),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  item.icon,
                  color: Colors.white,
                  size: 30.0,
                ),
                const Padding(padding: EdgeInsets.all(3)),
                Text(
                  item.name,
                  textAlign: TextAlign.center,
                  style: const TextStyle(color: Colors.white),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
