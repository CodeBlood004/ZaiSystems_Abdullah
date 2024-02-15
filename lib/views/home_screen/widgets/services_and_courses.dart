import 'package:zaisystems/consts/imports.dart';
import 'package:zaisystems/views/home_screen/widgets/custom_swiper.dart';
import 'package:zaisystems/widget_common/custom_button.dart';

Widget servicesAndCourses({
  required BuildContext context,
  final controller,
}) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          services.text.size(24).fontFamily(bold).color(mehroonColor).make(),
          5.heightBox,
          servicesProvide.text.size(16).justify.make(),
          10.heightBox,
          const CustomSwiper(
            sliderList: servicesList,
            duration: 10,
            sliderNo: 1,
          ),
          10.heightBox,
          customButton(
            onPress: () => controller.setNavIndex(2),
            title: "All Services",
            textColor: whiteColor,
            btnColor: mehroonColor,
          ).box.margin(const EdgeInsets.symmetric(horizontal: 5)).make(),
        ],
      )
          .box
          .width(context.screenWidth)
          .padding(const EdgeInsets.symmetric(horizontal: 5))
          .color(whiteColor)
          .make(),

      20.heightBox,

      // courses
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          courses.text.size(24).fontFamily(bold).color(mehroonColor).make(),
          5.heightBox,
          coursesDetails.text.size(16).justify.make(),
          10.heightBox,
          const CustomSwiper(
            sliderList: courseList,
            duration: 8,
            sliderNo: 2,
          ),
          10.heightBox,
          customButton(
            onPress: () => controller.setNavIndex(3),
            title: "All Courses",
            textColor: whiteColor,
            btnColor: mehroonColor,
          ).box.margin(const EdgeInsets.symmetric(horizontal: 5)).make(),
        ],
      )
          .box
          .color(whiteColor)
          .width(context.screenWidth)
          .padding(const EdgeInsets.symmetric(horizontal: 5))
          .make(),
    ],
  ).box.width(context.screenWidth).white.make();
}
