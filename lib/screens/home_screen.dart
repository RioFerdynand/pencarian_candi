import 'package:flutter/material.dart';
import 'package:wisata_candi/data/candi.dart';
import 'package:wisata_candi/models/candi.dart';

import '../widgets/item_card.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //TODO : 1. BUAT APPBAR DENGAN JUDUL WISATA CANDI
      appBar: AppBar(title: Text('Wisata Candi'),),
      //TODO : 2. BUAT BODY DENGAN GRIDVIEW.BUILDER
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2
          ),
        padding: EdgeInsets.all(8), 
        itemCount: candiList.length,
        itemBuilder: (context, index) {
      //TODO : 3. BUAT ITEMCARD SEBAGAI RETURN VALUE DARI GRIDVIEW.BUILDER
        Candi candi = candiList[index];
        return ItemCard(candi : candi);
        },
      ),
    );
  }
}