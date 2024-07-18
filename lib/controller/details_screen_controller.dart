import 'package:get/get.dart';
import 'package:coffe_shop_app/res/resorces.dart';

class DetailsScreenController extends GetxController {
  var s = true.obs;
  var m = false.obs;
  var l = false.obs;

  void selectSize(String size) {
    if (size == 'S') {
      s.value = true;
      m.value = false;
      l.value = false;
    } else if (size == 'M') {
      s.value = false;
      m.value = true;
      l.value = false;
    } else if (size == 'L') {
      s.value = false;
      m.value = false;
      l.value = true;
    }
  }

  String getRating(int index) {
    if (s.value) return ratting[index].toString();
    if (m.value) return mediumRating[index].toString();
    return largeRating[index].toString();
  }

  String getPrefix(int index) {
    if (s.value) return prefix[index];
    if (m.value) return prefixMedium[index];
    return prefixLarge[index];
  }

  String getPrice(int index) {
    if (s.value) return prices[index];
    if (m.value) return mediumPrice[index];
    return largePrice[index];
  }

  String getSizeLabel() {
    if (s.value) return "Small Roasted";
    if (m.value) return "Medium Roasted";
    return "Large Roasted";
  }
}
