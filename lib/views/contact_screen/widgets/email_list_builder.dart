import 'package:zaisystems/consts/imports.dart';
import 'package:zaisystems/views/contact_screen/widgets/title_text.dart';
import 'package:url_launcher/url_launcher.dart';
import 'dart:io';

void launchGmail({
  required String mail,
}) async {
  String url() {
    if (Platform.isAndroid) {
      // add the [https]
      return "mailto:$mail"; // new line
    } else if (Platform.isIOS) {
      // add the [https]
      return "mailto:$mail"; // new line
    } else {
      // add the [https]
      return "https://mail.google.com/mail/u/0/?fs=1&tf=cm&source=mailto&to=$mail"; // new line
    }
  }

  if (await canLaunch(url())) {
    await launch(url());
  } else {
    throw 'Could not launch ${url()}';
  }
}

Widget emailListBuilder() {
  return Container(
    decoration: const BoxDecoration(
      color: whiteColor,
      borderRadius: BorderRadius.all(Radius.circular(20)),
      boxShadow: [
        BoxShadow(
          color: Colors.grey,
          blurRadius: 6,
          offset: Offset(1, 2),
        ),
      ],
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        "Emails".text.size(heading).semiBold.make(),
        10.heightBox,
        ...List.generate(
            contactList.length,
            (index) => GestureDetector(
                  onTap: () {
                    launchGmail(mail: contactList[index].subText);
                  },
                  child: titleText(
                    title: contactList[index].title,
                    email: contactList[index].subText,
                  ),
                ))
      ],
    )
        .box
        .color(whiteColor)
        .width(double.infinity)
        .roundedLg
        .padding(const EdgeInsets.all(20))
        .make(),
  );
}
