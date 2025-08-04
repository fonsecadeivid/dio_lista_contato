import 'package:mobx/mobx.dart';
part 'menu_store.g.dart';

class MenuStore = MenuStoreBase with _$MenuStore;

abstract class MenuStoreBase with Store {}
