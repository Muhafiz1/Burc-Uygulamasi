import 'package:burc_uygulamasi/burc_detay.dart';
import 'package:flutter/material.dart';
import 'package:burc_uygulamasi/model/burc.dart';

import 'model/burc.dart';

class BurcItem extends StatelessWidget {
  final Burc ListelenenBurc;
  const BurcItem({required this.ListelenenBurc, super.key});

  @override
  Widget build(BuildContext context) {
    var myTextStyle = Theme.of(context)
        .textTheme; // özel textstyle oluşturma ana sayfadan bağımsız
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: Card(
        elevation: 4,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListTile(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => BurcDetay(secilenBurc: ListelenenBurc),
                ),
              );
            },
            leading: Image.asset(
              "images/" + ListelenenBurc.burcBuyukResim,
            ),
            title: Text(
              ListelenenBurc.burcAdi,
              style: myTextStyle.headlineSmall,
            ),
            subtitle: Text(ListelenenBurc.burcTarihi),
            trailing: Icon(
              Icons.arrow_forward_ios,
              color: Colors.red,
            ),
          ),
        ),
      ),
    );
  }
}
