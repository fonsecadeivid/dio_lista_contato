import 'package:dio/dio.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'ui.dart';

class MenuModule extends Module {
  @override
  void binds(Injector i) {
    i.addSingleton(() => Dio());
  }

  @override
  void routes(RouteManager r) {
    r.child(Modular.initialRoute, child: (context) => MenuPage());
  }
}
