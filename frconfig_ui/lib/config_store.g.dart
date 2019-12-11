// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'config_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$ConfigStore on _ConfigStore, Store {
  final _$ctsMemoryGBAtom = Atom(name: '_ConfigStore.ctsMemoryGB');

  @override
  double get ctsMemoryGB {
    _$ctsMemoryGBAtom.context.enforceReadPolicy(_$ctsMemoryGBAtom);
    _$ctsMemoryGBAtom.reportObserved();
    return super.ctsMemoryGB;
  }

  @override
  set ctsMemoryGB(double value) {
    _$ctsMemoryGBAtom.context.conditionallyRunInAction(() {
      super.ctsMemoryGB = value;
      _$ctsMemoryGBAtom.reportChanged();
    }, _$ctsMemoryGBAtom, name: '${_$ctsMemoryGBAtom.name}_set');
  }

  final _$ctsDiskSizeGBAtom = Atom(name: '_ConfigStore.ctsDiskSizeGB');

  @override
  double get ctsDiskSizeGB {
    _$ctsDiskSizeGBAtom.context.enforceReadPolicy(_$ctsDiskSizeGBAtom);
    _$ctsDiskSizeGBAtom.reportObserved();
    return super.ctsDiskSizeGB;
  }

  @override
  set ctsDiskSizeGB(double value) {
    _$ctsDiskSizeGBAtom.context.conditionallyRunInAction(() {
      super.ctsDiskSizeGB = value;
      _$ctsDiskSizeGBAtom.reportChanged();
    }, _$ctsDiskSizeGBAtom, name: '${_$ctsDiskSizeGBAtom.name}_set');
  }

  final _$ctsNumberInstancesAtom =
      Atom(name: '_ConfigStore.ctsNumberInstances');

  @override
  int get ctsNumberInstances {
    _$ctsNumberInstancesAtom.context
        .enforceReadPolicy(_$ctsNumberInstancesAtom);
    _$ctsNumberInstancesAtom.reportObserved();
    return super.ctsNumberInstances;
  }

  @override
  set ctsNumberInstances(int value) {
    _$ctsNumberInstancesAtom.context.conditionallyRunInAction(() {
      super.ctsNumberInstances = value;
      _$ctsNumberInstancesAtom.reportChanged();
    }, _$ctsNumberInstancesAtom, name: '${_$ctsNumberInstancesAtom.name}_set');
  }

  final _$domainAtom = Atom(name: '_ConfigStore.domain');

  @override
  String get domain {
    _$domainAtom.context.enforceReadPolicy(_$domainAtom);
    _$domainAtom.reportObserved();
    return super.domain;
  }

  @override
  set domain(String value) {
    _$domainAtom.context.conditionallyRunInAction(() {
      super.domain = value;
      _$domainAtom.reportChanged();
    }, _$domainAtom, name: '${_$domainAtom.name}_set');
  }

  final _$fqdnAtom = Atom(name: '_ConfigStore.fqdn');

  @override
  String get fqdn {
    _$fqdnAtom.context.enforceReadPolicy(_$fqdnAtom);
    _$fqdnAtom.reportObserved();
    return super.fqdn;
  }

  @override
  set fqdn(String value) {
    _$fqdnAtom.context.conditionallyRunInAction(() {
      super.fqdn = value;
      _$fqdnAtom.reportChanged();
    }, _$fqdnAtom, name: '${_$fqdnAtom.name}_set');
  }
}
