import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_state_management2_obs/screen1.dart';
import 'package:getx_state_management2_obs/screen2.dart';
import 'package:getx_state_management2_obs/screen3.dart';

//! Get.toNamed -- goes to another screen

//! Get.offNamed closes the current screen and goes to another screen

//! Get.offAllNamed closes all screens and goes to another screen:

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      getPages: [
        GetPage(name: '/screen1', page: () => Screen1()),
        GetPage(name: '/screen2', page: () => Screen2()),
        GetPage(name: '/screen3', page: () => Screen3()),
      ],
      initialRoute: '/screen1',
    );
  }
}

/**
 * ! State Management with GetX
 * * step 1: Create a directory called Controller
 * * step 2: Create a dart file with a class in it for intended controller (more explanation in [[./controllers/counter_controller.dart]]
 * * step 3: Create a controller and put the class in getX
 * $ var controller = Get.put(ControllerClass());
 * * step 4: For updating data
 * $ controller.intendedFunction()
 * * step 5: For reading data first we should put the widget that shows data in a builder
 * $ GetBuilder<CounterController>(builder: (value){})
 * * step 6: For reading data inside builder
 * $ controller.intendedData
 * * step 7: For reading and writing in other files and screens create a controller and find the class in getX (we have put it in  getX in step 3)
 * $ var controller = Get.find<ControllerClass>()
 */
