import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ideas_tasks/modules/task_4/search/view/search_view_task4.dart';

abstract class NavigationMenuTask4Controller extends GetxController {}

class NavigationMenuTask4ControllerImp extends NavigationMenuTask4Controller {
  List screens = [
    
    Container(),
    const SearchViewTask4(),
    Container(),
    Container(),
    
  ];
  int currentIndex = 0;
}
