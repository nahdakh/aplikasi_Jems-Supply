import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:VendorConnect/models/shop.dart';
import '../models/menuu.dart';

class OrderPage extends StatefulWidget {
  final Menuu menuu;
  const OrderPage({
    super.key, 
    required this.menuu
    });

  @override
  State<OrderPage> createState() => _OrderPageState();
}

class _OrderPageState extends State<OrderPage> {

void AddToCart() {
  // Pertama-tama, tambahkan ke keranjang
  Provider.of<TokoRotiO>(
    context, listen: false).addKeranjang(widget.menuu);

  // langsung diarahkan kembali ke halaman menu
  Navigator.pop(context); 

  //
  showDialog(
    context: context, 
    builder: (context) => AlertDialog(
      title: Text('Berhasil ditambahkan ke keranjang'),
    ),
  );
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.menuu.NamaMenu)),
      backgroundColor:  Color.fromARGB(255, 129, 138, 255),
      body: Column(children: [
        // Gambar Menu
        Image.asset(widget.menuu.GambarMenu),

        // tambahkan ke keranjang
        MaterialButton(
          child: Text('Tambahkan', 
          style: TextStyle(color: Colors.white),
          ),
          color: Colors.amber,
          onPressed: AddToCart,
          )

      ]),
    );
  }
}