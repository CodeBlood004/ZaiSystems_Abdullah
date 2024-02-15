import 'package:zaisystems/consts/imports.dart';

Widget companyDetails() {
  return Container(
    padding: const EdgeInsets.all(20),
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
        welcome.text.size(24).bold.make(),
        5.heightBox,
        companyFullName.text.size(18).color(mehroonColor).bold.make(),
        10.heightBox,
        homeText.text.size(16).justify.make(),
      ],
    ),
  );
}
