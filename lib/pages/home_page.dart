import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:qr_reader/pages/direcciones_page.dart';
import 'package:qr_reader/pages/mapa_page.dart';

import '../providers/ui_provider.dart';
import '../providers/ui_provider.dart';
import '../widgets/custom_navigatorbar.dart';
import '../widgets/scan_button.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        elevation: 0,
        title: Text('Historial'),
      ),
      body: _HomePageBody(),
      bottomNavigationBar: CustomNavigationBar(),
      floatingActionButton: ScaButton(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}

class _HomePageBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //obtener el selecte menu opt del provider

    final UiProvider = Provider.of<uiProvider>(context);
    final int curreIndex = UiProvider.selectedMenuOpt;

    if (curreIndex == 0) {
      return MapaPage();
    } else if (curreIndex == 1) {
      return DireccionesPage();
    } else {
      return MapaPage();
    }

    // Switch( curreIndex ){

    //   case 0:

    //   return MapaPage();

    //   case 1:
    //   return DireccionesPage();

    //   default:

    //     return MapaPage();

    // }
  }
}
