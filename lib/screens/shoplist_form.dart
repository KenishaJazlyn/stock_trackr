import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:pbp_django_auth/pbp_django_auth.dart';
import 'package:provider/provider.dart';
import 'package:stock_trackr/screens/menu.dart';
import 'package:stock_trackr/widgets/left_drawer.dart';
import 'package:stock_trackr/widgets/model.dart';
import 'package:stock_trackr/main.dart';
// TODO: Impor drawer yang sudah dibuat sebelumnya

class ShopFormPage extends StatefulWidget {
    const ShopFormPage({super.key});

    @override
    State<ShopFormPage> createState() => _ShopFormPageState();
}

class _ShopFormPageState extends State<ShopFormPage> {
    final _formKey = GlobalKey<FormState>();
    String _name = "";
    int _amount = 0;
    String _description = "";
    DateTime _date_in = DateTime.now();
    @override
    Widget build(BuildContext context) {
      final request = context.watch<CookieRequest>();
        return Scaffold(
          appBar: AppBar(
            title: const Center(
              child: Text(
                'Form Tambah Item',
              ),
            ),
            backgroundColor:Color(0xFF333333),
            foregroundColor: Colors.white,
          ),
          // TODO: Tambahkan drawer yang sudah dibuat di sini
          drawer: const LeftDrawer(),
          body: Form(
            key:_formKey,
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding( // Nama
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      decoration: InputDecoration(
                        hintText: "Nama Item",
                        labelText: "Nama Item",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5.0),
                        ),
                      ),
                      onChanged: (String? value) {
                        setState(() {
                          _name = value!;
                        });
                      },
                      validator: (String? value) {
                        if (value == null || value.isEmpty) {
                          return "Nama tidak boleh kosong!";
                        }
                        return null;
                      },
                    ),
                  ),
                  Padding( // Amount
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    decoration: InputDecoration(
                      hintText: "Amount",
                      labelText: "Amount",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                    ),
                      onChanged: (String? value) {
                        setState(() {
                          _amount = int.parse(value!);
                        });
                      },
                    validator: (String? value) {
                      if (value == null || value.isEmpty) {
                        return "Harga tidak boleh kosong!";
                      }
                      if (int.tryParse(value) == null) {
                        return "Harga harus berupa angka!";
                      }
                      return null;
                    },
                  ),
                ),
                  Padding( // Description
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      decoration: InputDecoration(
                        hintText: "Deskripsi",
                        labelText: "Deskripsi",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5.0),
                        ),
                      ),
                      onChanged: (String? value) {
                        setState(() {
                          // TODO: Tambahkan variabel yang sesuai
                          _description = value!;
                        });
                      },
                      validator: (String? value) {
                        if (value == null || value.isEmpty) {
                          return "Deskripsi tidak boleh kosong!";
                        }
                        return null;
                      },
                    ),
                  ),
                  Align(   // Button Save
                    alignment: Alignment.bottomCenter,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Color(0xFF0077C0)),
                      ),
                      onPressed: () async {
                            if (_formKey.currentState!.validate()) {
                                // Kirim ke Django dan tunggu respons
                                // TODO: Ganti URL dan jangan lupa tambahkan trailing slash (/) di akhir URL!
                                final response = await request.postJson(
                                "https://kenisha-jazlyn-tugas.pbp.cs.ui.ac.id/create-flutter/",
                                jsonEncode(<String, String>{
                                    'name': _name,
                                    'amount': _amount.toString(),
                                    'description': _description,
                                    // TODO: Sesuaikan field data sesuai dengan aplikasimu
                                }));
                                if (response['status'] == 'success') {
                                    ScaffoldMessenger.of(context)
                                        .showSnackBar(const SnackBar(
                                    content: Text("Produk baru berhasil disimpan!"),
                                    ));
                                    // ignore: use_build_context_synchronously
                                    Navigator.pushReplacement(
                                        context,
                                        MaterialPageRoute(builder: (context) => MyHomePage()),
                                    );
                                } else {
                                    // ignore: use_build_context_synchronously
                                    ScaffoldMessenger.of(context)
                                        .showSnackBar(const SnackBar(
                                        content:
                                            Text("Terdapat kesalahan, silakan coba lagi."),
                                    ));
                                }
                            }
                        },
                      child: const Text(
                        "Save",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    ),
                  ),
                ]
            ),
          ),
          ),
        );
    }
}


