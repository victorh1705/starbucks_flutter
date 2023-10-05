import 'package:provider/provider.dart';
import 'package:starbucks_flutter/screens/login_page/controller/login_page_controller.dart';

class AppProvider {
  static final provider = [
    ChangeNotifierProvider<LoginPageController>(
      create: (context) => LoginPageController(),
    ),
  ];
}
