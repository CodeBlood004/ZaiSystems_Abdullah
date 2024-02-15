import 'package:zaisystems/consts/imports.dart';
import 'package:zaisystems/views/home_screen/widgets/company_details.dart';
import 'package:zaisystems/views/home_screen/widgets/custom_swiper.dart';
import 'package:zaisystems/widget_common/custom_button.dart';

Widget companySummary({
  required BuildContext context,
  final controller,
}) {
  return Column(
    children: <Widget>[
      companyDetails(),
      20.heightBox,
      Column(
        children: <Widget>[
          20.heightBox,
          const CustomSwiper(
            sliderList: sliderList,
            duration: 8,
            sliderNo: 0,
          ).box.roundedLg.make(),
          10.heightBox,
          customButton(
            onPress: () => controller.setNavIndex(4),
            title: "Our Team",
            textColor: whiteColor,
            btnColor: mehroonColor,
          ).constrainedBox(BoxConstraints(minWidth: context.screenWidth / 2)),
          10.heightBox,
        ],
      )
          .box
          .color(whiteColor)
          .padding(const EdgeInsets.symmetric(horizontal: 5))
          .make(),
      10.heightBox,
    ],
  ).box.color(whiteColor).make();
}
