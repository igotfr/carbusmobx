import "package:mobx/mobx.dart";
//import "package:flutter_mobx/flutter_mobx.dart";

part "formulariosController.g.dart";

// flutter pub run build_runner build

class FormulariosController= _FormulariosControllerBase with _$FormulariosController;

abstract class _FormulariosControllerBase with Store
{
  @observable
  String username= '';

  @action
  void mudarUsername(String nusername)=> this.username= nusername;

  @observable
  String senha= '';

  @action
  void mudarSenha(String nsenha)=> this.senha= nsenha;

  @observable
  bool showhideSenha;

  @action
  void alternarVisibilidadeSenha()
  {
    this.showhideSenha= !this.showhideSenha;
    //focultarSenha(this.b);
  }

  /*@observable
  ocultarSenha(bool s)
  {
    this.b= s;
    return this.b;
  }*/
  
  //bool Function(bool s) ocultarSenha= (bool s)=> b= s;
  /*@observable
  bool focultarSenha(bool s)
  {
    this.b= s;
    return s;
  }*/
  //= true;


  /*@computed
  bool focultarSenha(bool oc)
  {
    this.ocultarSenha= oc;

    return this.ocultarSenha;
  }*/

  /*@computed
  bool get ocultarSenha=> this.ocultarSenha;

  @computed
  set ocultarSenha(bool oc)=> this.ocultarSenha= oc;*/
  /*bool focultarSenha(bool oc)
  {
    this.ocultarSenha= oc;

    return this.ocultarSenha;
  }*/


  /*@action
  bool mudarOcultarSenha(bool oc)
  {
    this.ocultarSenha= oc;

    return this.ocultarSenha;
  }*/


  String validarUsername()
  {
    if ( this.username == null || this.username.isEmpty )
      return "campo obrigatório";

    return null;
  }

  String validarSenha()
  {
    if ( this.senha == null || this.senha.isEmpty )
      return "campo obrigatório";
    else if ( this.senha.length < 3 )
      return "senha deve ter no mínimo 3 caracteres";

    return null;
  }
}