// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'formulariosController.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$FormulariosController on _FormulariosControllerBase, Store {
  final _$usernameAtom = Atom(name: '_FormulariosControllerBase.username');

  @override
  String get username {
    _$usernameAtom.context.enforceReadPolicy(_$usernameAtom);
    _$usernameAtom.reportObserved();
    return super.username;
  }

  @override
  set username(String value) {
    _$usernameAtom.context.conditionallyRunInAction(() {
      super.username = value;
      _$usernameAtom.reportChanged();
    }, _$usernameAtom, name: '${_$usernameAtom.name}_set');
  }

  final _$senhaAtom = Atom(name: '_FormulariosControllerBase.senha');

  @override
  String get senha {
    _$senhaAtom.context.enforceReadPolicy(_$senhaAtom);
    _$senhaAtom.reportObserved();
    return super.senha;
  }

  @override
  set senha(String value) {
    _$senhaAtom.context.conditionallyRunInAction(() {
      super.senha = value;
      _$senhaAtom.reportChanged();
    }, _$senhaAtom, name: '${_$senhaAtom.name}_set');
  }

  final _$showhideSenhaAtom =
      Atom(name: '_FormulariosControllerBase.showhideSenha');

  @override
  bool get showhideSenha {
    _$showhideSenhaAtom.context.enforceReadPolicy(_$showhideSenhaAtom);
    _$showhideSenhaAtom.reportObserved();
    return super.showhideSenha;
  }

  @override
  set showhideSenha(bool value) {
    _$showhideSenhaAtom.context.conditionallyRunInAction(() {
      super.showhideSenha = value;
      _$showhideSenhaAtom.reportChanged();
    }, _$showhideSenhaAtom, name: '${_$showhideSenhaAtom.name}_set');
  }

  final _$_FormulariosControllerBaseActionController =
      ActionController(name: '_FormulariosControllerBase');

  @override
  void mudarUsername(String nusername) {
    final _$actionInfo =
        _$_FormulariosControllerBaseActionController.startAction();
    try {
      return super.mudarUsername(nusername);
    } finally {
      _$_FormulariosControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void mudarSenha(String nsenha) {
    final _$actionInfo =
        _$_FormulariosControllerBaseActionController.startAction();
    try {
      return super.mudarSenha(nsenha);
    } finally {
      _$_FormulariosControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void alternarVisibilidadeSenha() {
    final _$actionInfo =
        _$_FormulariosControllerBaseActionController.startAction();
    try {
      return super.alternarVisibilidadeSenha();
    } finally {
      _$_FormulariosControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    final string =
        'username: ${username.toString()},senha: ${senha.toString()},showhideSenha: ${showhideSenha.toString()}';
    return '{$string}';
  }
}
