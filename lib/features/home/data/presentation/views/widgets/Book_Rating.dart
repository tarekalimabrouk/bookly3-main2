
import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BookRating extends StatelessWidget {
  const BookRating({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        const FaIcon(
          FontAwesomeIcons.solidStar,
          color: Color(0xffFFDD4F),
          size: 20,
        ),
        const SizedBox(width: 4),
        Text(
          '4.8',
          style: Styles.textSyle16,
        ),
        const SizedBox(width: 3),
        Text(
          '(458)',
          style: Styles.textSyle14.copyWith(
            color: const Color(0xff707070),
          ),
        ),
      ],
    );
  }
}
