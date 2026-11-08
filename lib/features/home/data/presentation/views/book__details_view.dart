import 'package:bookly/features/home/data/presentation/views/widgets/custom_book_item.dart';
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