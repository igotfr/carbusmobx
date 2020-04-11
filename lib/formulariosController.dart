import "package:mobx/mobx.dart";
//import "package:flutter_mobx/flutter_mobx.dart";

part "controller.g.dart";

// flutter pub run build_runner build

class FormulariosController= _FormulariosControllerBase with _$FormulariosController;

abstract class _FormulariosControllerBase with Store
{
  @observable
  String username= '';

  @observable
  String senha= '';

  String validarUsername()
  {
    //return null;
    if ( username == null || username.isEmpty )
      return "campo obrigatório";
    else if ( this.username.length < 3 )
      return "username precisa ser maior qe 3 caracteres";

    return null;
  }

  @action
  void mudarUsername(String nusername)=> this.username= nusername;

  @action
  void mudarSenha(String nsenha)=> this.senha= nsenha;
}