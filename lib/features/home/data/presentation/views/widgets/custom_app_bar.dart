import 'package:bookly/core/utils/assets.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16,vertical: 30),
      child: Row(
        children: [Image.asset(Assets.logo,width: 100,height: 18,),
       const Spacer(),
        IconButton(onPressed: (){}, icon:const FaIcon(
          FontAwesomeIcons.magnifyingGlass,
          size: 22,
        )
        )
        ],
      ),
    );
  }
}