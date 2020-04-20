// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'formulariosController.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$FormulariosController on _FormulariosControllerBase, Store {
  Computed<bool> _$logineValidoComputed;

  @override
  bool get logineValido =>
      (_$logineValidoComputed ??= Computed<bool>(() => super.logineValido))
          .value;

  final _$nomeAtom = Atom(name: '_FormulariosControllerBase.nome');

  @override
  String get nome {
    _$nomeAtom.context.enforceReadPolicy(_$nomeAtom);
    _$nomeAtom.reportObserved();
    return super.nome;
  }

  @override
  set nome(String value) {
    _$nomeAtom.context.conditionallyRunInAction(() {
      super.nome = value;
      _$nomeAtom.reportChanged();
    }, _$nomeAtom, name: '${_$nomeAtom.name}_set');
  }

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

  final _$confirmarSenhaAtom =
      Atom(name: '_FormulariosControllerBase.confirmarSenha');

  @override
  String get confirmarSenha {
    _$confirmarSenhaAtom.context.enforceReadPolicy(_$confirmarSenhaAtom);
    _$confirmarSenhaAtom.reportObserved();
    return super.confirmarSenha;
  }

  @override
  set confirmarSenha(String value) {
    _$confirmarSenhaAtom.context.conditionallyRunInAction(() {
      super.confirmarSenha = value;
      _$confirmarSenhaAtom.reportChanged();
    }, _$confirmarSenhaAtom, name: '${_$confirmarSenhaAtom.name}_set');
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
  void mudarNome(String nome) {
    final _$actionInfo =
        _$_FormulariosControllerBaseActionController.startAction();
    try {
      return super.mudarNome(nome);
    } finally {
      _$_FormulariosControllerBaseActionController.endAction(_$actionInfo);
    }
  }

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
  void mudarConfirmarSenha(String confirmarSenha) {
    final _$actionInfo =
        _$_FormulariosControllerBaseActionController.startAction();
    try {
      return super.mudarConfirmarSenha(confirmarSenha);
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
        'nome: ${nome.toString()},username: ${username.toString()},senha: ${senha.toString()},confirmarSenha: ${confirmarSenha.toString()},showhideSenha: ${showhideSenha.toString()},logineValido: ${logineValido.toString()}';
    return '{$string}';
  }
}
