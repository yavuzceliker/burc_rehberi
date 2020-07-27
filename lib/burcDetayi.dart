import 'package:flutter/material.dart';
import 'package:palette_generator/palette_generator.dart';
import 'burcListesi.dart';

class BurcDetayi extends StatefulWidget {

  Burc burc;
  BurcDetayi(this.burc);
  @override
  State<StatefulWidget> createState() {
    return _burcDetay(this.burc);
  }

}

class _burcDetay extends State<BurcDetayi> {

  Burc burc;
  _burcDetay(this.burc);
  PaletteGenerator renk;

  Widget TextGonder(String gelenMetin) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: Text(
        gelenMetin,
        style: TextStyle(
          fontSize: 16,
        ),
      ),
    );
  }
  @override
  void initState() {
    // TODO: implement initState
    PaletteGenerator.fromImageProvider(NetworkImage(burc.burcFotografi)).then((value) {
      renk=value;
      debugPrint(value.dominantColor.toString());
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            backgroundColor: renk!=null?renk.dominantColor.color:Colors.orange,
            flexibleSpace: FlexibleSpaceBar(
              title: Text(burc.burcAdi),
              centerTitle: true,
              background: Image.network(
                burc.burcFotografi,
                fit: BoxFit.cover,
              ),
            ),
            pinned: true,
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
                  (context, i) {
                return Container(
                  padding: EdgeInsets.all(10),
                  child: Column(
                    children: <Widget>[
                      TextGonder("Burcun Adı: " + burc.burcAdi),
                      TextGonder("Burcun Tarihi: " + burc.burcTarihi),
                      TextGonder("Burcun Özellikleri: " + burc.burcAciklamasi),
                      TextGonder("Burcun Elementi: " + burc.elementi),
                      TextGonder("Burcun Gezegeni: " + burc.gezegeni),
                      TextGonder("Burcun Günü: " + burc.gunu),
                      TextGonder("Burcun Niteliği: " + burc.niteligi),
                      TextGonder("Burcun Rengi: " + burc.rengi),
                      TextGonder("Burcun Taşı: " + burc.tasi),
                    ],
                    crossAxisAlignment: CrossAxisAlignment.start,
                  ),
                );
              },
              childCount: 1,
            ),
          ),
        ],
      ),
    );
  }
}

