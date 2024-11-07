import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:learning_programming_languages/data/models/languages_entity.dart';
import 'package:learning_programming_languages/ui/screens/language_detail/language_detail_screen.dart';

class ProgrammingLanguageWidget extends StatelessWidget {
  const ProgrammingLanguageWidget({
    super.key,
    required this.language,
  });

  final LanguagesEntity language;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 20),
      child: InkWell(
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) =>
                      LanguageDetailScreen(language: language)));
        },
        splashColor: Colors.grey.withOpacity(0.1), // Customize highlight color
        borderRadius: BorderRadius.circular(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: double.infinity,
              height: 200,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
              ),
              child: SvgPicture.asset(language.image),
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              language.title,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              language.description,
              style: TextStyle(
                fontSize: 16,
              ),
            )
          ],
        ),
      ),
    );
  }
}
