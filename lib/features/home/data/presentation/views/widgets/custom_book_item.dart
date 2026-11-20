import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/features/home/data/presentation/views/widgets/Book_Rating.dart';
import 'package:bookly/features/home/data/presentation/views/widgets/Custom_Book_Detils_AppBar.dart';
import 'package:bookly/features/home/data/presentation/views/widgets/Custom_List_View_Item.dart';
import 'package:flutter/material.dart';

class BookDetilsViewBody extends StatelessWidget {
  const BookDetilsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    
    return Padding(


      
      padding: EdgeInsets.symmetric(horizontal: 30, vertical: 25),
      child: Column(
        children: [
          CustomBookDetilsAppBar(),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: width * .17),
            child: CustomBookImage(),
          ),
          const SizedBox(
            height: 43,
          ),
          Text(
            'The Jungle Book',
            style: Styles.textSyle30.copyWith(fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 6,
          ),
          Opacity(
            opacity: .7,
            child: Text(
              'Rudyard kipling',
              style: Styles.textSyle18.copyWith(
                  fontWeight: FontWeight.w500, fontStyle: FontStyle.italic),
            ),
          ),
          const SizedBox(height: 18,),
          const BookRating(mainAxisAlignment: MainAxisAlignment.center,),
        ],
      ),
    );
  }
}
