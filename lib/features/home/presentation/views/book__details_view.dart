import 'package:bookly/Features/home/presentation/views/widgets/custom_book_item.dart';
import 'package:bookly/core/widgets/custom_butom.dart';
import 'package:flutter/material.dart';

class BookDetilsView extends StatelessWidget {
  const BookDetilsView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body:SafeArea(
        child: BookDetilsViewBody(
        
        ),
      ) ,
    );
  }
}
