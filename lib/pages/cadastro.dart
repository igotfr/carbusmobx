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
  final controller= FormulariosController()
    ..showhideSenha= true;

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
            Observer
            (
              builder: (_)=> input
              (
                keyboardType: TextInputType.text,
                prefixIcon: Icon(Icons.person_outline,),
                hintText: "nome",
                onChanged: controller.mudarNome,
                errorText: controller.validarNome,
              ),
            ),
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
            //Observer(builder: (_)=> Text(controller.username)),
            SizedBox(height: 20,),
            //Padding(padding: EdgeInsets.only(bottom: 0), child: ),
            Observer
            (
              builder: (_)=> inputSenha
              (
                keyboardType: TextInputType.visiblePassword,
                prefixIcon: Icon(Icons.lock,),
                iconeTextoHide: Icon(Icons.visibility_off,),
                iconeTextoShow: Icon(Icons.visibility,),
                hintText: "senha",
                onChanged: controller.mudarSenha,
                errorText: controller.validarSenhaCadastro,
                //ocultarSenha: controller.ocultarSenha(true),
                ocultarSenha: true,
                showhideSenha: controller.showhideSenha,
                onPressed: controller.alternarVisibilidadeSenha,
              ),
            ),
            //Observer(builder: (_)=> Text("ocultarSenha: ${controller.b}")),
            //Observer(builder: (_)=> Text("focultarSenha: ${controller.ocultarSenha.toString()}")),
            SizedBox(height: 20,),
            Observer
            (
              builder: (_)=> inputSenha
              (
                keyboardType: TextInputType.visiblePassword,
                prefixIcon: Icon(Icons.lock,),
                iconeTextoHide: Icon(Icons.visibility_off,),
                iconeTextoShow: Icon(Icons.visibility,),
                hintText: "confirmar senha",
                onChanged: controller.mudarConfirmarSenha,
                errorText: controller.validarConfirmarSenhaCadastro,
                //ocultarSenha: controller.ocultarSenha(true),
                ocultarSenha: true,
                showhideSenha: controller.showhideSenha,
                onPressed: controller.alternarVisibilidadeSenha,
              ),
            ),
            Observer
            (
              builder: (_)=> RaisedButton
              (
                onPressed: controller.cadastrareValido ? (){} : null,
                child: Text("CADASTRAR"),
              ),
            ),
          ]
        )
      )
    );
  }
}