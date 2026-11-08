import 'package:bookly/features/home/data/presentation/views/widgets/Custom_Book_Detils_AppBar.dart';
import 'package:flutter/material.dart';

class BookDetilsViewBody extends StatelessWidget {
  const BookDetilsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding:  EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        children: [
          CustomBookDetilsAppBar(),
        ],
      ),
    );
  }
}
