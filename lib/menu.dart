import 'package:flutter/material.dart';


class MyHomePage extends StatelessWidget {
  MyHomePage({Key? key}) : super(key: key);

  final List<StockItem> items = [
    StockItem("Lihat Item", Icons.checklist),
    StockItem("Tambah Item", Icons.add_shopping_cart),
    StockItem("Logout", Icons.logout),
  ];
  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".


  @override
    Widget build(BuildContext context) {
        return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Stocktrackr',
        ),
      ),
      body: SingleChildScrollView(
        // Widget wrapper yang dapat discroll
        child: Padding(
          padding: const EdgeInsets.all(10.0), // Set padding dari halaman
          child: Column(
            // Widget untuk menampilkan children secara vertikal
            children: <Widget>[
              const Padding(
                padding: EdgeInsets.only(top: 10.0, bottom: 10.0),
                // Widget Text untuk menampilkan tulisan dengan alignment center dan style yang sesuai
                child: Text(
                  'StockTrackr', // Text yang menandakan toko
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              // Grid layout
              GridView.count(
                // Container pada card kita.
                primary: true,
                padding: const EdgeInsets.all(20),
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                crossAxisCount: 3,
                shrinkWrap: true,
                children: items.map((StockItem item) {
                  // Iterasi untuk setiap item
                  return StockCard(item);
                }).toList(),
              ),
            ],
          ),
        ),
      ),
    );

  
}
}

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
      buttonCollor = Colors.red.shade100;
    } else if (item.name == "Tambah Item"){
      buttonCollor = Colors.red.shade200;
    } else if (item.name == "Logout"){
      buttonCollor = Colors.red.shade300;
    } else{
      buttonCollor = Colors.red.shade400;
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