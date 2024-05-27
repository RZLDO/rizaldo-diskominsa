import 'package:flutter/material.dart';
import 'package:rizaldo_test/data/data_aceh_jaya.dart';
import 'package:rizaldo_test/model/News_item.dart';
import 'package:rizaldo_test/view/ui/component/card_component.dart';
import 'package:rizaldo_test/view/ui/component/carousel.dart';
import 'package:rizaldo_test/view/ui/component/title_section.dart';

class ListNewsScreen extends StatefulWidget {
  const ListNewsScreen({super.key});

  @override
  State<ListNewsScreen> createState() => _ListNewsScreenState();
}

class _ListNewsScreenState extends State<ListNewsScreen> {
  Future<List<NewsItem>?>? newsFuture;
  @override
  void initState() {
    super.initState();
    newsFuture = fetchNews();
  }

  @override
  Widget build(BuildContext context) {
    final urlImage = [
      "https://asset-2.tstatic.net/aceh/foto/bank/images/Amal-Hasan-disambut-Sekjen-Demokrat.jpg",
      "https://asset-2.tstatic.net/aceh/foto/bank/images/BKKBN-Aceh_stunting_Aceh-Jaya.jpg",
      "https://asset-2.tstatic.net/aceh/foto/bank/images/Warisan-Budaya-Takbenda.jpg"
    ];
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              CarouselBuilder(image: urlImage),
              const Padding(
                  padding: EdgeInsets.only(left: 16),
                  child: TitleSection(width: 40, text: "Berita Kami")),
              FutureBuilder<List<NewsItem>?>(
                  future: newsFuture,
                  builder: (context, snapshot) {
                    if (snapshot.connectionState == ConnectionState.waiting) {
                      return const Center(child: CircularProgressIndicator());
                    } else if (snapshot.hasError) {
                      return Center(child: Text('Error: ${snapshot.error}'));
                    } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
                      return const Center(child: Text('No news found.'));
                    } else {
                      final newsItems = snapshot.data!;
                      return ListView.builder(
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        itemCount: newsItems.length,
                        itemBuilder: (context, index) {
                          final newsItem = newsItems[index];
                          return CardListComponent(
                              imageSrc: newsItem.imageUrl,
                              subtitle: newsItem.description,
                              title: newsItem.title,
                              date: newsItem.date);
                        },
                      );
                    }
                  })
            ],
          ),
        ),
      ),
    );
  }
}
