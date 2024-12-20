import 'package:flutter/material.dart';
import 'package:dagangsekitar/screens/menu.dart';
import 'package:dagangsekitar/screens/product_form.dart';
import 'package:dagangsekitar/screens/list_product.dart';

class LeftDrawer extends StatelessWidget {
  const LeftDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
            decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.primary,
          ),
          child: const Column(
            children: [
              Text(
                'DagangSekitar',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              Padding(padding: EdgeInsets.all(8)),
              Text(
                "Tempat berdagang di sekitar anda!",
                textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.white,
                    fontWeight: FontWeight.normal,
                  )
              ),
            ],
          ),
          ),
          ListTile(
            leading: const Icon(Icons.home_outlined),
            title: const Text('Halaman Utama'),
            // Bagian redirection ke MyHomePage
            onTap: () {
              Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => MyHomePage(),
                  ));
            },
          ),
          ListTile(
            leading: const Icon(Icons.shopping_cart),
            title: const Text('Tambah produk'),
            // Bagian redirection ke ProductFormPage
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ProductFormPage(),
                ),
              );
            },
          ),

          ListTile(
            leading: const Icon(Icons.sell),
            title: const Text('Daftar Produk'),
            onTap: () {
              // Route menu ke halaman mood
              Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const ProductPage()),
              );
            },
          ),
        ],
      ),
    );
  }
}