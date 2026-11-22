import 'package:bookly/features/home/presentation/views/widgets/Book_Details_Section.dart';
import 'package:bookly/features/home/presentation/views/widgets/Custom_Book_Detils_AppBar.dart';
import 'package:bookly/features/home/presentation/views/widgets/Similar_Books_Section.dart';
import 'package:flutter/material.dart';

class BookDetilsViewBody extends StatelessWidget {
  const BookDetilsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 30, vertical: 25),
            child: Column(
              children:  [
                CustomBookDetilsAppBar(),
                BookDetailsSection(),
                Expanded(
                  child: SizedBox(
                    height: 50,
                  ),
                ),
                SimilarBooksSection(),
                SizedBox(
                  height: 40,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
