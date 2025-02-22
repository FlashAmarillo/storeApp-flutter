// shortcut: mateapp
import 'package:flutter/material.dart';
import 'package:yes_no_app/config/theme/app_theme.dart';
import 'package:provider/provider.dart';
import 'package:yes_no_app/presentation/providers/products_provider.dart';
import 'package:yes_no_app/presentation/screens/products/products_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => ProductsProvider()),
      ],
      child: MaterialApp(
        title: 'storeApp',
        debugShowCheckedModeBanner: false,
        theme: AppTheme(selectedColor: 0).theme(),

        home: const ProductsScreen(),
      ),
    );
  }
}

