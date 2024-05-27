import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:rizaldo_test/theme/app_color.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class CarouselBuilder extends StatefulWidget {
  final List<String> image;
  const CarouselBuilder({required this.image, super.key});
  @override
  State<CarouselBuilder> createState() => _CarouselBuilderState();
}

class _CarouselBuilderState extends State<CarouselBuilder> {
  int _index = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CarouselSlider.builder(
            itemCount: widget.image.length,
            itemBuilder: ((context, index, realIndex) {
              return imageBuilder(widget.image[index], index, "google.com");
            }),
            options: CarouselOptions(
              height: MediaQuery.of(context).size.height * 0.255,
              autoPlay: true,
              autoPlayInterval: const Duration(seconds: 5),
              autoPlayAnimationDuration: const Duration(seconds: 2),
              enlargeCenterPage: true,
              enlargeStrategy: CenterPageEnlargeStrategy.height,
              onPageChanged: (index, reason) {
                setState(() {
                  _index = index;
                });
              },
            )),
        const SizedBox(
          height: 20,
        ),
        buildIndicator(),
      ],
    );
  }

  Widget buildIndicator() => AnimatedSmoothIndicator(
      effect: const ExpandingDotsEffect(
          activeDotColor: AppColor.primaryColor,
          spacing: 5.0,
          dotHeight: 7,
          dotWidth: 7),
      activeIndex: _index,
      count: widget.image.length);
  Widget imageBuilder(String urlImage, int index, String webView) =>
      GestureDetector(
        onTap: () {
          // Navigator.push(
          //     context,
          //     MaterialPageRoute(
          //         builder: (context) => WebviewNews(
          //               urlNews: webView,
          //             )));
        },
        child: Container(
          width: 400,
          margin: const EdgeInsets.symmetric(horizontal: 8),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Image.network(urlImage, fit: BoxFit.cover),
          ),
        ),
      );
}
