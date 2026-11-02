import 'package:bookly/constants.dart';
import 'package:bookly/core/utils/assets.dart';
import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/features/home/data/presentation/views/widgets/Featured_Books_List.dart';
import 'package:flutter/material.dart';
import 'custom_app_bar.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child:  Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomAppBar(),
          // CustomListViewItem(),
          FeaturedBooksListView(),
          SizedBox(height:  16),
          Text("Best Seller",
          style: Styles.textSyle18.copyWith(fontFamily: kGtSectraFine),
          ),
          BestSellerListViewItem(),
        ],
      ),
    );
  }
}

class BestSellerListViewItem extends StatelessWidget {
  const BestSellerListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 140,
      child: Row(
      children: [
        AspectRatio(
        aspectRatio: 2.5/4,
        child: Container(
          
          decoration:  BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            image:const DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage(
                Assets.testImage,
              ),
            ),
          ),
        ),
      ),
      ],
      
      ),
    );
  }
}