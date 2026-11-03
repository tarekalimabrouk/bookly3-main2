import 'package:bookly/Features/home/data/presentation/views/widgets/home_view_body.dart';
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
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomAppBar(),
          // CustomListViewItem(),
          FeaturedBooksListView(),
          SizedBox(height: 50),
          Text(
            "Best Seller",
            style: Styles.textSyle18.copyWith(fontFamily: kGtSectraFine),
          ),
          const SizedBox(
            height: 20,
          ),
          BestSellerListViewItem(),
        ],
      ),
    );
  }
}
