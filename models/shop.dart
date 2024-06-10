import 'package:flutter/cupertino.dart';
import 'package:VendorConnect/models/menuu.dart';

class TokoRotiO extends ChangeNotifier {
  // daftar menu
  final List<Menuu> _shop = [
    // ChocolatePastry
    Menuu(1001, "Freon Refrigant", "RP 2.000.000", "lib/images/FreonRefrigant.jpeg"),
    Menuu(1002, "Lampu Exit", "RP 220.000", "lib/images/LampuExit.jpeg"),
    Menuu(1003, "Lampu Taman", "RP 150.000", "lib/images/LampuTaman.jpeg"),
    Menuu(1004, "SpeedBoat", "RP 7.500.000", "lib/images/Speedboat.jpeg"),
    Menuu(1005, "Sterofoam", "RP 50.000", "lib/images/Sterofoam.jpeg"),
    Menuu(1006, "AeroTape", "RP 100.000", "lib/images/AeroTape.jpeg"),
  ];
  // daftar menu di keranjang pengguna
  final List<Menuu> _userKeranjang = [];

  // get menu
  List<Menuu> get shop => _shop;

  // get menu di keranjang pengguna
  List<Menuu> get keranjang => _userKeranjang;

  // tambah menu ke keranjang
  void addKeranjang(Menuu menu) {
    _userKeranjang.add(menu);
    notifyListeners();
  }

  // hapus menu dari keranjang
  void removeKeranjang(Menuu menu) {
    _userKeranjang.remove(menu);
    notifyListeners();
  }
}