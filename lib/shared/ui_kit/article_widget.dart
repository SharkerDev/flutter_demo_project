import 'package:demo_flutter/data/models/article/article.dart';
import 'package:demo_flutter/shared/theme/export.dart';
import 'package:flutter/material.dart';

class ArticleWidget extends StatelessWidget {
  const ArticleWidget({required this.article, Key? key}) : super(key: key);

  final Article article;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 24.0),
      decoration: const BoxDecoration(
        border: Border(
          bottom: BorderSide(
            width: 1,
            color: Color.fromRGBO(
              126,
              126,
              126,
              0.15,
            ),
          ), //AppColors.cardGrey),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (article.title != null)
            Padding(
              padding: const EdgeInsets.only(bottom: 20.0),
              child: Text(
                article.title!,
                style: AppFonts.headline3,
              ),
            )
          else
            const SizedBox(
              height: 20.0,
            ),
          if (article.subTitle != null)
            Padding(
              padding: const EdgeInsets.only(
                bottom: 28,
              ),
              child: Text(
                article.subTitle!,
                style: AppFonts.bodyRegular,
              ),
            )
          else
            const SizedBox(
              height: 28,
            ),
          Padding(
            padding: const EdgeInsets.only(bottom: 50.0),
            child: Image.asset(article.imageUrl),
          ),
          ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: article.paragraph.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 10.0),
                child: RichText(
                  text: TextSpan(
                    text: '${index + 1}.   ',
                    style: AppFonts.captionLabel
                        .copyWith(color: AppColors.textGrey),
                    children: [
                      TextSpan(
                        text: article.paragraph[index],
                        style: AppFonts.captionLabel.copyWith(),
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
