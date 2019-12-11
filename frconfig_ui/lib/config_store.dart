import 'package:mobx/mobx.dart';

part 'config_store.g.dart';

class ConfigStore = _ConfigStore with _$ConfigStore;

abstract class _ConfigStore with Store {
  @observable
  double ctsMemoryGB = 4.0;

  @observable
  double ctsDiskSizeGB = 3.0;

  @observable
  int ctsNumberInstances = 3;

  @observable
  String domain = "example.com";

  @observable
  String fqdn = "default.iam.example.com";
}
