import 'package:zaisystems/consts/imports.dart';
import 'package:zaisystems/controllers/slider_controller.dart';
import 'package:zaisystems/widget_common/dot_indicator.dart';

class Testimonials extends StatelessWidget {
  const Testimonials({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<SliderController>();
    return Column(
      children: <Widget>[
        "Testimonials".text.size(24).color(whiteColor).bold.make(),
        20.heightBox,
        Stack(
          alignment: Alignment.bottomCenter,
          children: <Widget>[
            VxSwiper.builder(
              aspectRatio: 9 / 16,
              viewportFraction: 1.0,
              autoPlayAnimationDuration: const Duration(milliseconds: 500),
              autoPlayInterval: const Duration(seconds: 12),
              autoPlay: true,
              onPageChanged: (index) =>
                  controller.sliderIndices[3].value = index,
              itemCount: testimonialsList.length,
              itemBuilder: (context, index) => Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  CircleAvatar(
                    backgroundImage: AssetImage(testimonialsList[index].image),
                    radius: 120,
                  )
                      .box
                      .padding(const EdgeInsets.all(2))
                      .border(color: whiteColor, width: 3)
                      .roundedFull
                      .make(),
                  10.heightBox,
                  testimonialsList[index]
                      .country
                      .text
                      .bold
                      .size(20)
                      .color(whiteColor)
                      .make(),
                  10.heightBox,
                  testimonialsList[index]
                      .feedback
                      .text
                      .size(16)
                      .justify
                      .color(whiteColor)
                      .make(),
                  10.heightBox,
                  testimonialsList[index]
                      .name
                      .text
                      .size(20)
                      .color(whiteColor)
                      .fontFamily(semibold)
                      .make(),
                  5.heightBox,
                  testimonialsList[index]
                      .position
                      .text
                      .size(16)
                      .bold
                      .color(whiteColor)
                      .make(),
                ],
              ).box.margin(const EdgeInsets.all(20)).make(),
            ),
            Obx(
              () => DotIndicator(
                currentIndex: controller.sliderIndices[3].value,
                itemCount: testimonialsList.length,
                activeColor: whiteColor,
              ).positioned(
                bottom: 10.0,
              ),
            ),
          ],
        ),
      ],
    )
        .box
        .color(mehroon)
        .padding(const EdgeInsets.symmetric(vertical: 20))
        .roundedLg
        .make();
  }
}
