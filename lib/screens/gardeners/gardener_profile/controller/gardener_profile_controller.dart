import 'package:get/get.dart';

class GardenerProfileController extends GetxController{
  final selectedOption = 0.obs;

  toggleSelection({required int index}) {
    selectedOption.value = index;
  }
}
