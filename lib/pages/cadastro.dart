import "package:flutter/material.dart";
import 'package:flutter_mobx/flutter_mobx.dart';

import "../components/input.dart";
import "../components/inputSenha.dart";

import "../controllers/formulariosController.dart";

class Cadastro extends StatefulWidget
{
  @override
  _CadastroState createState()=> _CadastroState();
}

class _CadastroState extends State<Cadastro>
{
  final controller= FormulariosController();

  @override
  Widget build(BuildContext context)
  {
    return Scaffold
    (
      body: Container
      (
        color: Colors.white,
        padding: EdgeInsets.only(top: 60, left: 40, right: 40,),

        child: ListView
        (
          children: <Widget>
          [
            SizedBox(width: 128, height: 128, child: Icon(Icons.person),),
            SizedBox(height: 20,),
            //Padding(padding: EdgeInsets.only(top: 20, bottom: 8), child: ),
            Observer
            (
              builder: (_)=> input
              (
                keyboardType: TextInputType.emailAddress,
                prefixIcon: Icon(Icons.person,),
                hintText: "username",
                onChanged: controller.mudarUsername,
                errorText: controller.validarUsername,
              ),
            ),
            SizedBox(height: 20,),
            //Padding(padding: EdgeInsets.only(bottom: 0), child: ),
            /*Observer
            (
              builder: (_)=> InputSenha
              (
                keyboardType: TextInputType.visiblePassword,
                prefixIcon: Icon(Icons.lock,),
                coneTextoHide: Icon(Icons.visibility_off,),
                coneTextoShow: Icon(Icons.visibility,),
                ocultarSenha: true,
                hintText: "senha",
              ),
            ),*/
          ]
        )
      )
    );
  }
} 
