import 'package:flutter/material.dart';

import 'model/burc.dart';

class BurcDetay extends StatelessWidget {
  final Burc secilenBurc;
  const BurcDetay({required this.secilenBurc, super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: CustomScrollView(
      slivers: [
        SliverAppBar(
          expandedHeight: 250,
          pinned: true,
          backgroundColor: Colors.pink,
          flexibleSpace: FlexibleSpaceBar(
            title: Text(secilenBurc.burcAdi + " Burcu ve Özellikleri "),
            centerTitle: true,
            background: Image.asset(
              'images/' + secilenBurc.burcKucukResim,
              fit: BoxFit.cover,
            ),
          ),
        ),
        SliverToBoxAdapter(
          // direk container vs. koyamadığımız için bunu kullanıyoruz
          child: Container(
            margin: EdgeInsets.all(16),
            padding: EdgeInsets.all(8),
            child: SingleChildScrollView(
              child: Text(
                secilenBurc.burcDetay,
                style: Theme.of(context).textTheme.titleMedium,
              ),
            ),
          ),
        ),
      ],
    ));
  }
}
