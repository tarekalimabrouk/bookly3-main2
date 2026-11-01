import 'package:bookly/features/home/data/presentation/views/widgets/Custom_List_View_Item.dart';
import 'package:flutter/material.dart';
import 'custom_app_bar.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomAppBar(),
        CustomListViewItem(),
      ],
    );
  }
}

