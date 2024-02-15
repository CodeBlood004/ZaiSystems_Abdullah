import 'package:zaisystems/consts/imports.dart';

class NavController extends GetxController {
  final _currentNavIndex = 0.obs;
  final _scrollPosition = 0.0.obs;

  void setPos(double val) {
    final mapped = _mapValue(val);
    if (position != mapped) {
      _scrollPosition.value = mapped;
    }
  }

  double _mapValue(double value) {
    value = value.clamp(0.0, 136.56529017857144);
    double mappedValue = value / 136.56529017857144;
    return mappedValue;
  }

  double get position => _scrollPosition.value;

  void setNavIndex(int val) {
    if (currentIndex != val) {
      _currentNavIndex.value = val;
    }
  }

  int get currentIndex => _currentNavIndex.value;
}
