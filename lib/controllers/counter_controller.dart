import 'package:get/get.dart';

class CounterController extends GetxController {
  var counter = 0.obs; //! this shows that the variable gets updated
  void increment() {
    counter++;
    //! we don't need update command because we're using obs
  }
}

/**
 * ! State Management with GetX
 * * Our class should extend GetxController
 * * For telling other that we have updated the data
 * $ update()
 */
