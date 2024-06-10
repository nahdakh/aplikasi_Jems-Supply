import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:VendorConnect/halaman/halaman_transaksi.dart';
import 'package:VendorConnect/models/menuu.dart';
import 'package:VendorConnect/models/shop.dart';
import '../komponen/menu_tile.dart';

class HalMenu extends StatefulWidget {
  const HalMenu({super.key});

  @override
  State<HalMenu> createState() => _HalMenuState();
}

class _HalMenuState extends State<HalMenu> {

  // user memilih menu, lalu di arahkan ke halaman transaksi
  void goToOrderPage(Menuu menuu) {
    // arahkan ke halaman transaksi
    Navigator.push(
      context, MaterialPageRoute(
        builder: (context) => OrderPage(
          menuu: menuu,
        ),
      )
    );
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<TokoRotiO>(
      builder: (context, value, child) => SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // heading
              Image.asset("lib/images/Logo_b.jpeg",
              width: 100,
              height: 100,
              ),
              // Text("RotiO",style: TextStyle(fontSize: 20),),

              const SizedBox(height: 10),

              // daftar menu untuk dijual
              Expanded(
                child: ListView.builder(
                  itemCount: value.shop.length,
                  itemBuilder: (context,index) {
                    //
                    Menuu individualMenu = value.shop[index];

                    //
                    return MenuTile(
                      menuu: individualMenu,
                      onTap: () => goToOrderPage(individualMenu),
                      trailing: Icon(Icons.arrow_forward),
                      );
                  },
                ),
              )
            ],
          ),
        )
      )
    );
  }
}