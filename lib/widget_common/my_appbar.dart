import 'package:zaisystems/consts/imports.dart';

AppBar myAppBar({required String title}) {
  return AppBar(
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
    ),
    // backgroundColor: const Color.fromRGBO(101, 18, 2, 1),
    title: title.text
        .fontFamily(semibold)
        .overflow(TextOverflow.ellipsis)
        .white
        .make(),
  );
}
