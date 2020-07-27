import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Burc {
  String burcAdi,
      burcTarihi,
      burcFotografi,
      burcAciklamasi,
      elementi,
      niteligi,
      gezegeni,
      rengi,
      tasi,
      gunu;

  Burc(
      this.burcAdi,
      this.burcTarihi,
      this.burcFotografi,
      this.burcAciklamasi,
      this.elementi,
      this.gezegeni,
      this.gunu,
      this.niteligi,
      this.rengi,
      this.tasi);
}

class BurcListesi extends StatelessWidget {
  List<Burc> burclar = [
    Burc(
        "Koç",
        "18 Nisan - 13 Mayıs",
        "https://cdn.bolgegundem.com/d/news/910174.jpg",
        "Aktif, dinamik, insiyatif sahibi, hızlı, lider, yönetici",
        "Ateş",
        "Mars",
        "Salı",
        "Öncü",
        "Kırmızı",
        "Elmas"),
    Burc(
        "Boğa",
        "13 Mayıs - 21 Haziran",
        "https://cdn.bolgegundem.com/d/other/2020/05/27/2.jpg",
        "Güvenilir, rahatına, konforuna, yemeğe düşkün, gurme, harekete geçmekte zorlanan",
        "Toprak",
        "Venüs",
        "Cuma",
        "Sabit",
        "Toprak renkler, taba, bej, kahve, yeşil",
        "Zümrüt"),
    Burc(
        "İkizler",
        "21 Haziran - 20 Temmuz",
        "https://cdn.bolgegundem.com/d/news/910516.jpg",
        "Esnek, uyumlu, çevik, konuşkan, meraklı, arkadaş canlısı",
        "Hava",
        "Merkür",
        "Çarşamba",
        "Değişken",
        "Sarı, turuncu",
        "Agat"),
    Burc(
        "Yengeç",
        "20 Temmuz - 10 Ağustos",
        "https://cdn.bolgegundem.com/d/news/911536.jpg",
        "Evine, annesine, ailesine, yurduna düşkün, duyarlı, hassas, yemeğe, sofraya meraklı, tarihsel konulara ilgili, müzik yeteneğine sahip",
        "Su",
        "Ay",
        "Pazartesi",
        "Öncü",
        "Mavi",
        "İnci"),
    Burc(
        "Aslan",
        "10 Ağustos - 16 Eylül",
        "https://cdn.bolgegundem.com/d/other/2019/10/03/5-001.jpg",
        "Özgüvenli, gururlu, mağrur, koruyan, kollayan, gösterişli, sanata, estetiğe düşkün",
        "Ateş",
        "Güneş",
        "Pazar",
        "Sabit",
        "Altın, turuncu",
        "Yakut"),
    Burc(
        "Başak",
        "16 Eylül - 30 Ekim",
        "https://cdn.bolgegundem.com/d/news/912035.jpg",
        "Titiz, çalışkan, mükemmeliyetçi, eleştirel, detaycı, emektar, hizmet odaklı",
        "Toprak",
        "Merkür",
        "Çarşamba",
        "Değişken",
        "Sarı",
        "Akik"),
    Burc(
        "Terazi",
        "30 Ekim - 23 Kasım",
        "https://cdn.bolgegundem.com/d/news/912257.jpg",
        "Adil, eşitlikçi, dengeli, uyumlu, sakin, sabırlı, akıllı, kibar",
        "Hava",
        "Venüs",
        "Cuma",
        "Öncü",
        "Mavi, pembe",
        "Safir"),
    Burc(
        "Akrep",
        "23 Kasım - 29 Kasım",
        "https://cdn.bolgegundem.com/d/other/2020/04/21/akrep-287fd91f30043cabae1d.jpg",
        "Mücadeleci, güçlü, yılmaz, hırslı kişilerdir. Pes ettiğini düşündüğünüz anda küllerinden yeniden doğabilir. Güvenilir, kaliteli insanlardır.",
        "Su",
        "Mars",
        "Salı",
        "Sabit",
        "Bordo",
        "Opal"),
    Burc(
        "Yay",
        "17 Aralık - 20 Ocak",
        "https://cdn.bolgegundem.com/d/news/912764.jpg",
        "Bağımsız, özgür, hareketli, dinamik, sportif, keşif ve macera ruhuna sahip",
        "Ateş",
        "Jüpiter",
        "Perşembe",
        "Değişken",
        "Eflatun",
        "Topaz"),
    Burc(
        "Oğlak",
        "20 Ocak - 16 Şubat",
        "https://cdn.bolgegundem.com/d/news/913098.jpg",
        "Ciddi, soğukkanlı, gereğinde mesafeli, planlı, organize, disiplinli, iş ve kariyer odaklı",
        "Toprak",
        "Satürn",
        "Cumartesi",
        "Öncü",
        "Kahverengi, siyah",
        "Ametist"),
    Burc(
        "Kova",
        "16 Şubat - 11 Mart",
        "https://cdn.bolgegundem.com/d/other/2020/04/21/kova.jpg",
        "Arkadaş ve dost canlısı, sosyal, yenilikçi, sıradışı, marjinal",
        "Hava",
        "Satürn",
        "Cumartesi",
        "Sabit",
        "Mavi yeşil",
        "Akuamarin"),
    Burc(
        "Balık",
        "11 Mart - 18 Nisan",
        "https://cdn.bolgegundem.com/d/news/913604.jpg",
        "Hassas, duyarlı, empatik, vicdanlı, duyarlı, sanatsal, hayırsever, yardımsever, kolay etkilenen",
        "Su",
        "Jüpiter",
        "Perşembe",
        "Değişken",
        "Beyaz, lavanta",
        "Ay taşı"),
    Burc(
        "Yılan",
        "29 Kasım - 17 Aralık",
        "https://image.freepik.com/free-vector/hand-painted-snake-design_1152-82.jpg",
        "Bilge, mantıklı, yaratıcı, kurnaz, materyalist, güvensiz, titiz ve organize",
        "Ateş",
        "Mars",
        "Salı",
        "Öncü",
        "Yeşil, Kırmızı",
        "Akik"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Burç Rehberi"),
      ),
      body: ListView.builder(
        itemBuilder: (context, i) {
          return Card(
            elevation: 3,
            shadowColor: Colors.grey,
            child: ListTile(
              leading: CircleAvatar(
                backgroundImage:
                    NetworkImage(burclar[i].burcFotografi, scale: 0.5),
              ),
              title: Text(
                burclar[i].burcAdi,
                style:
                    TextStyle(color: Colors.pink, fontWeight: FontWeight.bold),
              ),
              subtitle: Text(burclar[i].burcTarihi,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  )),
              trailing: Icon(
                Icons.arrow_forward_ios,
                color: Colors.pink,
              ),
              onTap: () {
                Navigator.pushNamed(context, "/burcDetayi/",
                    arguments: burclar[i]);
              },
            ),
          );
        },
        itemCount: 13,
      ),
    );
  }
}

class BurcDetayi extends StatelessWidget {
  Burc burc;

  BurcDetayi(this.burc);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            flexibleSpace: FlexibleSpaceBar(
              title: Text(burc.burcAdi),
              centerTitle: true,
              background: Image.network(
                burc.burcFotografi,
                fit: BoxFit.cover,
              ),
            ),
            pinned: true,
            expandedHeight: 200,
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
}
