import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:qr_reader/providers/ui_provider.dart';

class CustomNavigationBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final iProvider = Provider.of<uiProvider>(context);
    final curreIndex = iProvider.selectedMenuOpt;

    return BottomNavigationBar(
        onTap: (int i) => iProvider.selectedMenuOpt = i,
        currentIndex: curreIndex,
        elevation: 0,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.map), label: 'Mapa'),
          BottomNavigationBarItem(
              icon: Icon(Icons.compass_calibration), label: 'Direcciones')
        ]);
  }
}
