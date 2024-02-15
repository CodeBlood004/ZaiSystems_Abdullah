import 'package:zaisystems/consts/imports.dart';
import 'package:zaisystems/models/member.dart';
import 'package:zaisystems/widget_common/outlined_button.dart';
import 'package:url_launcher/url_launcher.dart';
import 'dart:io';

Future<void> launchLinkedIn(String lnUrl, String lnWebUrl) async {
  try {
    bool launched = await launch(lnUrl, forceSafariVC: false);
    print("Launched Native app $launched");

    if (!launched) {
      await launch(lnWebUrl, forceSafariVC: false);
      print("Launched browser $launched");
    }
  } catch (e) {
    await launch(lnWebUrl, forceSafariVC: false);
    print("Inside catch");
  }
}

Widget memberCard({
  required Member member,
  required Function() onCardClick,
}) {
  return Row(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      Image.asset(
        member.image,
        height: 180,
        width: 140,
        fit: BoxFit.cover,
      ).box.rounded.clip(Clip.antiAlias).make(),
      10.widthBox,
      Expanded(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            member.name.text
                .size(header)
                .fontFamily(bold)
                .color(mehroonColor)
                .make(),
            member.position.text
                .size(text)
                .fontFamily(semibold)
                .color(darkFontGrey)
                .make(),
            5.heightBox,
            member.introduction.text
                .color(darkFontGrey)
                .minFontSize(14)
                .overflow(TextOverflow.ellipsis)
                .maxLines(2)
                .make(),
            const Spacer(),
            Row(
              children: <Widget>[
                Expanded(
                  child: outLinedButton(
                    onPress: () {
                      if (Platform.isAndroid) {
                        var lnUrl = member.profile; //for android
                        launchLinkedIn(lnUrl, member.profile.toString());
                      } else if (Platform.isIOS) {
                        var lnUrl = member.profile; //for IOS
                        launchLinkedIn(lnUrl, member.profile.toString());
                      }
                    },
                    title: "LinkedIn",
                    textColor: mehroonColor,
                    outlineColor: mehroonColor,
                    padding: (1, 1),
                  ),
                ),
                10.widthBox,
              ],
            ),
          ],
        ).box.padding(const EdgeInsets.only(top: 6)).make(),
      ),
    ],
  )
      .box
      .white
      .padding(const EdgeInsets.all(10))
      .size(double.infinity, 200)
      .margin(const EdgeInsets.symmetric(vertical: 5))
      .roundedLg
      .make()
      .onTap(onCardClick);
}
