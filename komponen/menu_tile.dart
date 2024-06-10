import 'package:flutter/material.dart';
import '../models/menuu.dart';

class MenuTile extends StatelessWidget {
  final Menuu menuu;
  void Function()? onTap;
  final Widget trailing;
  MenuTile({
    super.key,
    required this.menuu,
    required this.onTap,
    required this.trailing,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: EdgeInsets.only(bottom: 10),
        decoration: BoxDecoration(color: Colors.amber[100],
        borderRadius: BorderRadius.circular(12),
        ),
        child: ListTile(
          title: Text(menuu.NamaMenu),
          subtitle: Text(menuu.HargaMenu),
          leading: Image.asset(menuu.GambarMenu),
          trailing: trailing,
        ),
      ),
    );
  }
}