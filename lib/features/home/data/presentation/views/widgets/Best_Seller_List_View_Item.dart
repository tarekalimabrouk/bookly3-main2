
import 'package:bookly/constants.dart';
import 'package:bookly/core/utils/assets.dart';
import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/features/home/data/presentation/views/widgets/Book_Rating.dart';
import 'package:bookly/features/home/data/presentation/views/widgets/home_view_body.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BestSellerListViewItem extends StatelessWidget {
  const BestSellerListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 140,
      child: Row(
        children: [
          AspectRatio(
            aspectRatio: 2.5 / 4,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: const DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage(
                    Assets.testImage,
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(
            width: 30,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width * .5,
                  child:  Text(
                    maxLines: 2,
                    'Harry Potter and the Goblet of Fire',
                    overflow: TextOverflow.ellipsis,
                    style: Styles.textSyle20.copyWith(fontFamily: kGtSectraFine),
                  ),
                ),
                const SizedBox(
                  height: 3,
                ),
               const Text(
                  'J.k. Rowling',
                  style: Styles.textSyle14,
                ),
            const SizedBox(
                  height: 3,
                ),
                Row(
                  children: [
                    Text('19.99 ',style:Styles.textSyle20.copyWith(fontWeight: FontWeight.bold),),
                     Spacer(),
                BookRating(),
                  ],
                ),
               
                
              ],
            ),
          ),
        ],
      ),
    );
  }
}
