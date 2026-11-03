import 'package:bookly/features/home/data/presentation/views/widgets/book_detils_view_body.dart';
import 'package:flutter/material.dart';

class BookDetilsView extends StatelessWidget {
  const BookDetilsView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body:BookDetilsViewBody(

      ) ,
    );
  }
}