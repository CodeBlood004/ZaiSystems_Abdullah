import 'package:zaisystems/consts/imports.dart';
import 'package:zaisystems/controllers/slider_controller.dart';
import 'package:zaisystems/models/card_item.dart';
import 'package:zaisystems/widget_common/dot_indicator.dart';

class CustomSwiper extends StatelessWidget {
  final List<CardItem> sliderList;
  final int duration;
  final int sliderNo;
  const CustomSwiper({
    super.key,
    required this.sliderList,
    required this.duration,
    required this.sliderNo,
  });

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(SliderController(), permanent: true);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Stack(
          alignment: Alignment.bottomCenter,
          children: <Widget>[
            VxSwiper.builder(
              aspectRatio: 9 / 16,
              viewportFraction: 0.9,
              height: 200,
              autoPlayAnimationDuration: const Duration(milliseconds: 500),
              autoPlayInterval: Duration(seconds: duration),
              autoPlay: true,
              enlargeCenterPage: true,
              onPageChanged: (index) =>
                  controller.setSliderIndex(sliderNo, index),
              itemCount: sliderList.length,
              itemBuilder: (context, index) => Image.asset(
                sliderList[index].image,
                fit: BoxFit.fill,
              )
                  .box
                  .rounded
                  .width(context.screenWidth)
                  .clip(Clip.antiAlias)
                  .margin(const EdgeInsets.symmetric(horizontal: 4.0))
                  .make(),
            ),
            Obx(
              () => DotIndicator(
                currentIndex: controller.sliderIndices[sliderNo].value,
                itemCount: sliderList.length,
                activeColor: lightGrey,
                inactiveColor: fontGrey,
              ).positioned(
                bottom: 10.0,
              ),
            ),
          ],
        ),
        20.heightBox,
        Obx(
          () => Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              sliderList[controller.currentSliderIndex(sliderNo)]
                  .title
                  .text
                  .size(18)
                  .bold
                  .color(mehroonColor)
                  .make(),
              10.heightBox,
              sliderList[controller.currentSliderIndex(sliderNo)]
                  .subText
                  .text
                  .minFontSize(16)
                  .maxLines(7)
                  .overflow(TextOverflow.ellipsis)
                  .justify
                  .make()
            ],
          ).box.color(whiteColor).make(),
        )
      ],
    );
  }
}
