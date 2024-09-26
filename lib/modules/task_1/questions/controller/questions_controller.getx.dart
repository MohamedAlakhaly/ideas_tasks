import 'package:get/get.dart';
import 'package:ideas_tasks/constant/app_routes.dart';

abstract class QuestionsController extends GetxController {
  goToHomeView();
}

class QuestionsControllerImp extends QuestionsController {
  double currentSlider = 50;

  @override
  goToHomeView() {
    Get.offAllNamed(AppRoutes.navigationMenu);
  }
}
