import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BookRating extends StatelessWidget {
  const BookRating({super.key,  this.mainAxisAlignment=MainAxisAlignment.start,});
  final MainAxisAlignment mainAxisAlignment;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: mainAxisAlignment,
      children: [
        const FaIcon(
          FontAwesomeIcons.solidStar,
          color: Color(0xffFFDD4F),
          size: 14,
        ),
        const SizedBox(width: 6.3),
        Text(
          '4.8',
          style: Styles.textSyle16,
        ),
        const SizedBox(width: 3),
        Opacity(
          opacity: .5,
          child: Text(
            '(458)',
            style: Styles.textSyle14.copyWith(fontWeight: FontWeight.w600,),
          ),
        ),
      ],
    );
  }
}
