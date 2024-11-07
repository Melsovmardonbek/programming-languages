import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:learning_programming_languages/ui/screens/settings/settings_screen.dart';

class CustomAppBar {
  static AppBar mainAppBar(BuildContext context, String title,
      bool showArrowIcon, bool centerTitle) {
    return AppBar(
      centerTitle: centerTitle,
      leadingWidth: 50,
      leading: showArrowIcon
          ? Padding(
              padding: const EdgeInsets.only(left: 20),
              child: InkWell(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Container(
                  height: 20,
                  width: 20,
                  clipBehavior: Clip.hardEdge,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: Colors.black,
                      width: 1,
                    ),
                  ),
                  padding: EdgeInsets.only(left: 6),
                  child: Center(
                    child: Icon(
                      Icons.arrow_back_ios,
                      size: 20,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
            )
          : null,
      backgroundColor: Color(0xffF2F2F2),
      title: Text(title),
      actions: [
        IconButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const SettingsScreen()));
            },
            icon: Container(
              height: 14,
              width: 19,
              clipBehavior: Clip.hardEdge,
              decoration: const BoxDecoration(),
              child: SvgPicture.asset("assets/images/drawer_icon.svg"),
            ))
      ],
    );
  }
}
