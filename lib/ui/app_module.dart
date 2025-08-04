import 'package:flutter_modular/flutter_modular.dart';

import 'ui.dart';

class AppModule extends Module {
  @override
  void routes(RouteManager r) {
    r.module(Modular.initialRoute, module: MenuModule());
  }
}
