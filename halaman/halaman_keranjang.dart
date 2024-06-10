import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:VendorConnect/komponen/menu_tile.dart';
import 'package:VendorConnect/models/menuu.dart';
import 'package:VendorConnect/models/shop.dart';

class HalKeranjang extends StatefulWidget {
  const HalKeranjang({super.key});

  @override
  State<HalKeranjang> createState() => _HalKeranjangState();
}

class _HalKeranjangState extends State<HalKeranjang> {

  // remove menuu dari keranjang
  void removeFromCart(Menuu menuu) {
    Provider.of<TokoRotiO>(context, listen: false).removeKeranjang(menuu);
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<TokoRotiO>(builder: (context, value, child) => SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Column(
          children: [
            const Text('KERANJANG ANDA', style: TextStyle(fontSize: 20),),


            const SizedBox(height: 10),
          
            // daftar menu di keranjang
            Expanded(
              child: ListView.builder(
                itemCount: value.keranjang.length,
                itemBuilder: (context, index) {
                  // pertama-tama get individual menu di keranjang
                  Menuu menuu = value.keranjang[index];

                  // return as nice title
                  return MenuTile(
                    menuu: menuu, 
                    onTap: () => removeFromCart(menuu), 
                    trailing: Icon(Icons.delete)
                  );

                }
              ),
            ),
          
            // tombol pembayaran
            MaterialButton(
              child: Text(
                'BAYAR', 
                style:  TextStyle(
                  color: Colors.white),
              ),
               color: Colors.amber,
               onPressed: () {},
              )
          ],
        ),
      ),
    ),
    );
  }
}