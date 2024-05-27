import 'package:flutter/material.dart';
import 'package:rizaldo_test/theme/text_style.dart';

class CardListComponent extends StatelessWidget {
  final String imageSrc;
  final String title;
  final String subtitle;
  final String date;
  const CardListComponent(
      {super.key,
      required this.imageSrc,
      required this.subtitle,
      required this.title,
      required this.date});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: const Color(0xFFEEEEEE)),
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: Row(children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(200),
            child: Image.network(
              imageSrc,
              width: 50,
              height: 50,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(
            width: 8,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: ReusableTextStyle.titleSmallTextSemiBold
                    .copyWith(fontSize: 18),
              ),
              Text(
                subtitle,
                style: ReusableTextStyle.titleSmallTextMedium,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
              const SizedBox(
                height: 8,
              ),
              Text(date, style: ReusableTextStyle.titleSmallTextMedium)
            ],
          )
        ]),
      ),
    );
  }
}
