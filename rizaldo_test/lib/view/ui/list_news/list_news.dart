import 'package:flutter/material.dart';
import 'package:rizaldo_test/view/ui/component/card_component.dart';
import 'package:rizaldo_test/view/ui/component/carousel.dart';
import 'package:rizaldo_test/view/ui/component/title_section.dart';

class ListNewsScreen extends StatefulWidget {
  const ListNewsScreen({super.key});

  @override
  State<ListNewsScreen> createState() => _ListNewsScreenState();
}

class _ListNewsScreenState extends State<ListNewsScreen> {
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
              ListView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: 5,
                  itemBuilder: (context, index) {
                    return const CardListComponent(
                        imageSrc:
                            "https://s-img.mgid.com/g/17125364/984x656/-/aHR0cDovL2NsLmltZ2hvc3RzLmNvbS9pbWdoL2ltYWdlL2ZldGNoL2FyXzM6MixjX2ZpbGwsZV9zaGFycGVuOjEwMCxmX2pwZyxnX2ZhY2VzOmF1dG8scV9hdXRvOmdvb2Qsd18xMDIwL2h0dHA6Ly9pbWdob3N0cy5jb20vdC8yMDIzLTA5LzgyMDExNC80YjQ0MmNjYzYwMDkxODJkYWYzZmY1ZGM3NjI1YTdjOC5qcGVn.webp?v=1716793023-ueJhLw5NTnm0h8oA4XAbhdeGzSnCZ9rNGqPlKaIO5-8",
                        subtitle: "init subtitle",
                        title: "title",
                        date: "23-24-21");
                  }),
            ],
          ),
        ),
      ),
    );
  }
}
