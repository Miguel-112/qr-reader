import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:qr_reader/pages/home_page.dart';
import 'package:qr_reader/pages/mapa_page.dart';
import 'package:qr_reader/providers/ui_provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [ChangeNotifierProvider(create: (_) => new uiProvider())],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'QR reader',
        initialRoute: 'home',
        routes: {'home': (_) => HomePage(), 'mapa': (_) => MapaPage()},
        theme: ThemeData(
            primaryColor: Colors.deepPurple,

            // ignore: deprecated_member_use

            floatingActionButtonTheme: FloatingActionButtonThemeData(
                backgroundColor: Colors.deepPurple)),
      ),
    );
  }
}
