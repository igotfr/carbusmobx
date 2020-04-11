import "package:flutter/material.dart";

import "./pages/home.dart";

class Rotas
{
  static Route<dynamic> gerarRotas(RouteSettings settings)
  {
    switch ( settings.name )
    {
      case '/': return MaterialPageRoute(builder: (_)=> Home()); break;
      /*case "/painel-passageiro": return MaterialPageRoute(builder: (_)=> PainelPassageiro()); break;
      case "/painel-motorista": return MaterialPageRoute(builder: (_)=> PainelMotorista()); break;
      case "/painel-administrador": return MaterialPageRoute(builder: (_)=> PainelAdministrador());
      case "/configuracoes": return MaterialPageRoute(builder: (_)=> Perfil());*/
      default: return _erroRota();
    }
  }

  static Route<dynamic> _erroRota()
  {
    return MaterialPageRoute
    (
      builder: (_)
      {
        return Scaffold
        (
          appBar: AppBar(title: Text("Tela não encontrada!"),),
          body: Center(child: Text("Tela não encontrada!"),),
        );
      }
    );
  }
}