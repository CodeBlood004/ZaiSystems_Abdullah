import 'package:zaisystems/consts/imports.dart';
import 'package:zaisystems/views/home_screen/widgets/appbar_swiper.dart';
import 'package:zaisystems/views/home_screen/widgets/custom_swiper.dart';

SliverAppBar myAppBar(context, double pos) {
  return SliverAppBar(
    elevation: 10.0,
    expandedHeight: 200,
    pinned: true,
    flexibleSpace: Container(
      decoration: const BoxDecoration(
        // LinearGradient
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          // colors for gradient
          colors: [
            Colors.black,
            Color.fromRGBO(90, 15, 0, 1),
          ],
        ),
      ),
      child: FlexibleSpaceBar(
        title: Opacity(
          opacity: pos,
          child: appname.text.fontFamily(semibold).make(),
        ),
        //
        background: Image.asset(imgZaiBanner1, fit: BoxFit.cover),
        // background: const CustomSwiper(
        //   appBarList: appBarList,
        //   duration: 8,
        //   sliderNo: 0,
        // ).box.make(),
      ),
    ),
  );
}
