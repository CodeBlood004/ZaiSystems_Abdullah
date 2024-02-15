import 'package:zaisystems/consts/imports.dart';

Widget hcmCard({
  required String decorationImg,
  required String title,
  required String text,
}) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.start,
    children: <Widget>[
      Image.asset(
        decorationImg,
        height: 250,
        width: double.infinity,
        fit: BoxFit.cover,
      ),
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          title.text.size(header).fontFamily(bold).color(mehroonColor).make(),
          5.heightBox,
          text.text.size(16).black.justify.make(),
        ],
      ).box.width(double.infinity).padding(const EdgeInsets.all(20)).make(),
    ],
  )
      .box
      .white
      .padding(const EdgeInsets.all(10))
      .margin(const EdgeInsets.symmetric(horizontal: 10, vertical: 5))
      .rounded
      .outerShadow
      .make();
}
