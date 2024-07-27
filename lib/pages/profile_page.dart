import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:vikncodes_task/core/constance/home_page_const.dart';
import 'package:vikncodes_task/core/extention/app_color_palete.dart';
import 'package:vikncodes_task/core/extention/app_extention.dart';

class ProfilePage extends ConsumerWidget {
  static const String routerPath = "/profile";
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(context.spacer.space_300),
            child: Column(
              children: [
                const ProfileCardWidget(),
                ProfilePageTextAndButton(
                  icon: Icons.arrow_forward_ios,
                  icon1: Icons.help_outline_rounded,
                  text: "Help",
                ),
                ProfilePageTextAndButton(
                  icon: Icons.arrow_forward_ios,
                  icon1: Icons.help_outline_rounded,
                  text: "Help",
                ),
                ProfilePageTextAndButton(
                  icon: Icons.arrow_forward_ios,
                  icon1: Icons.help_outline_rounded,
                  text: "Help",
                ),
                ProfilePageTextAndButton(
                  icon: Icons.arrow_forward_ios,
                  icon1: Icons.help_outline_rounded,
                  text: "Help",
                ),
                ProfilePageTextAndButton(
                  icon: Icons.arrow_forward_ios,
                  icon1: Icons.help_outline_rounded,
                  text: "Help",
                )
                // Icons.arrow_forward_ios
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class ProfilePageTextAndButton extends StatelessWidget {
  ProfilePageTextAndButton({
    super.key,
    required this.text,
    required this.icon,
    required this.icon1,
    void Function()? onPressed,
  });
  final IconData icon;
  final IconData icon1;
  void Function()? onPressed;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: context.spacer.space_200),
      child: Row(
        children: [
          IconButton(
            onPressed: onPressed,
            icon: Icon(icon1),
          ),
          Text(
            text,
            style: context.typography.bodySubTextWhite,
          ),
          const Spacer(),
          IconButton(onPressed: () {}, icon: Icon(icon)),
        ],
      ),
    );
  }
}

class ProfileCardWidget extends StatelessWidget {
  const ProfileCardWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: context.color.profileCardBackground,
        borderRadius: BorderRadius.circular(
          context.spacer.space_200,
        ),
      ),
      child: Padding(
        padding: EdgeInsets.all(context.spacer.space_200),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  decoration: BoxDecoration(
                      color: AppColorPalettes.black500,
                      borderRadius:
                          BorderRadius.circular(context.spacer.space_300)),
                  child: Center(
                    child: Padding(
                      padding: EdgeInsets.all(context.spacer.space_100),
                      child: const Image(
                          image:
                              AssetImage('assets/image/img-proFile (2).png')),
                    ),
                  ),
                ),
                Column(
                  children: [
                    Text(
                      "David Arnold",
                      style: context.typography.h1Bold,
                    ),
                    Text(
                      "david012@cabzing",
                      style: context.typography.bodySubTextWhite,
                    )
                  ],
                ),
                const Icon(Icons.edit_square)
              ],
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: context.spacer.space_200),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  RatingWidget(
                    img: "assets/image/img-logo.png",
                    rides: "rides",
                    subtitile: "1234",
                    titile: "5.9",
                  ),
                  RatingWidget(
                    img: "assets/image/img-logo.png",
                    rides: "rides",
                    subtitile: "1234",
                    titile: "5.9",
                  ),
                ],
              ),
            ),
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: AppColorPalettes.black500,
                borderRadius: BorderRadius.circular(context.spacer.space_400),
              ),
              child: Padding(
                padding: EdgeInsets.all(context.spacer.space_200),
                child: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(Icons.logout_outlined),
                      Text(
                        "logout",
                        style: context.typography.bodySubText
                            .copyWith(color: AppColorPalettes.red500),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class RatingWidget extends StatelessWidget {
  const RatingWidget(
      {super.key,
      required this.img,
      required this.rides,
      required this.subtitile,
      required this.titile});
  final String titile;
  final String img;
  final String subtitile;
  final String rides;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 140,
      decoration: BoxDecoration(
        color: AppColorPalettes.black500,
        borderRadius: BorderRadius.circular(
          context.spacer.space_200,
        ),
      ),
      child: Padding(
        padding: EdgeInsets.all(context.spacer.space_200),
        child: Row(
          children: [
            Container(
              decoration: BoxDecoration(
                  color: AppColorPalettes.blue50,
                  borderRadius: BorderRadius.circular(
                    context.spacer.space_600,
                  )),
              child: Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: context.spacer.space_50,
                    vertical: context.spacer.space_200),
                child: Image.asset(img),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: context.spacer.space_100),
              child: Column(
                children: [
                  Text(
                    titile,
                    style: context.typography.h1,
                  ),
                  Text(
                    subtitile,
                    style: context.typography.bodySubText,
                  ),
                  Text(
                    rides,
                    style: context.typography.bodySubTextWhite,
                  )
                  // rides
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
