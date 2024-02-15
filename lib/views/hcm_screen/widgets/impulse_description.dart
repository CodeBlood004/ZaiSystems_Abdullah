import 'package:zaisystems/consts/imports.dart';

Widget impulseDescription() {
  return Column(
    children: <Widget>[
      impulseHCM.text.size(heading).color(mehroonColor).fontFamily(bold).make(),
      10.heightBox,
      impulseHCMDesc.text.size(text).justify.make(),
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
