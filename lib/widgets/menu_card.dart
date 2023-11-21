import 'package:flutter/material.dart';
import 'package:pbp_django_auth/pbp_django_auth.dart';
import 'package:provider/provider.dart';
import 'package:stock_trackr/screens/list_product.dart';
import 'package:stock_trackr/screens/login.dart';
import 'package:stock_trackr/screens/shoplist_form.dart';

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
      buttonCollor = const Color(0xFF0077C0);
    } else if (item.name == "Tambah Item"){
      buttonCollor = const Color(0xFF3498DB);
    } else if (item.name == "Logout"){
      buttonCollor = const Color(0xFF333333);
    } else{
      buttonCollor = const Color.fromARGB(255, 133, 132, 133);
    }
    final request = context.watch<CookieRequest>();
    return Material(
      color: buttonCollor,
      child: InkWell(
        // Area responsive terhadap sentuhan
        onTap: () async {
          // Memunculkan SnackBar ketika diklik
          ScaffoldMessenger.of(context)
            ..hideCurrentSnackBar()
            ..showSnackBar(SnackBar(
                content: Text("Kamu telah menekan tombol ${item.name}!")));

          // Navigate ke route yang sesuai (tergantung jenis tombol)
          if (item.name == "Tambah Item") {
            Navigator.push(context, MaterialPageRoute(builder: (context) => const ShopFormPage()));
          }
          else if (item.name == "Lihat Item") {
            Navigator.push(context,
            MaterialPageRoute(builder: (context) => const ProductPage()));
          }else if (item.name == "Logout") {
            final response = await request.logout(
                // TODO: Ganti URL dan jangan lupa tambahkan trailing slash (/) di akhir URL!
                "http://localhost:8000/auth/logout/");
            String message = response["message"];
            if (response['status']) {
              String uname = response["username"];
              ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                content: Text("$message Sampai jumpa, $uname."),
              ));
              // ignore: use_build_context_synchronously
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => const LoginPage()),
              );
            } else {
              // ignore: use_build_context_synchronously
              ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                // ignore: unnecessary_string_interpolations
                content: Text("$message"),
              ));
            }
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
