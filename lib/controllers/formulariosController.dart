import "package:mobx/mobx.dart";
//import "package:flutter_mobx/flutter_mobx.dart";

part "formulariosController.g.dart";

// flutter pub run build_runner build

class FormulariosController= _FormulariosControllerBase with _$FormulariosController;

abstract class _FormulariosControllerBase with Store
{
  @observable
  String nome= '';

  @action
  void mudarNome(String nome)=> this.nome= nome;

  @observable
  String username= '';

  @action
  void mudarUsername(String nusername)=> this.username= nusername;

  @observable
  String senha= '';

  @action
  void mudarSenha(String nsenha)=> this.senha= nsenha;

  @observable
  String confirmarSenha= '';

  @action
  void mudarConfirmarSenha(String confirmarSenha)=> this.confirmarSenha= confirmarSenha;

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


  String validarNome()
  {
    if ( this.nome == null || this.nome.isEmpty )
      return "campo obrigatório";

    return null;
  }

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

  String validarSenhaCadastro()
  {
    if ( this.senha == null || this.senha.isEmpty )
      return "campo obrigatório";
    else if ( this.senha.length < 3 )
      return "senha deve ter no mínimo 3 caracteres";
    else if ( this.senha != this.confirmarSenha )
      return "senha e confirmação devem ser iguais";

    return null;
  }

  String validarConfirmarSenhaCadastro()
  {
    if ( this.confirmarSenha == null || this.confirmarSenha.isEmpty )
      return "campo obrigatório";
    else if ( this.confirmarSenha.length < 3 )
      return "senha deve ter no mínimo 3 caracteres";
    else if ( this.senha != this.confirmarSenha )
      return "senha e confirmação devem ser iguais";

    return null;
  }

  @computed
  bool get logineValido=> validarUsername() == null && validarSenha() == null;

  @computed
  bool get cadastrareValido=> validarNome() == null && validarUsername() == null && validarSenhaCadastro() == null && validarConfirmarSenhaCadastro() == null;
}