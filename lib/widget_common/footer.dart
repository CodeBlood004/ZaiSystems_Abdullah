import 'package:zaisystems/consts/imports.dart';
import 'package:zaisystems/utils/launch_url.dart';
import 'package:zaisystems/widget_common/social_button.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Image.asset(imgFooter),
        Column(
          children: <Widget>[
            20.heightBox,
            Image.asset(
              icAppLogoWhite,
              width: 100,
              height: 100,
            ),
            10.heightBox,
            footerText.text.white.size(16).justify.make(),
            20.heightBox,
            "Follow us".text.size(18).white.fontFamily(semibold).make(),
            10.heightBox,
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                footerIconList.length,
                (index) => socialButton(
                  onClick: () async => await launchURL(
                    url: footerIconList[index].subText,
                    context: context,
                  ),
                  icon: footerIconList[index].image,
                  isBackground: false,
                  iconColor: Colors.white,
                ),
              ),
            ),
            10.heightBox,
            "© 2023 - Zai Systems - All Rights Reserved"
                .text
                .color(fontGrey)
                .size(14)
                .make(),
          ],
        ).box.padding(const EdgeInsets.all(20)).make(),
      ],
    ).box.padding(const EdgeInsets.only(top: 20)).color(Colors.black).make();
  }
}
