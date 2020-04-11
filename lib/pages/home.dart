import "package:flutter/material.dart";

import "./login.dart";
import "./cadastro.dart";

class Home extends StatefulWidget
{
  @override
  _HomeState createState()=> _HomeState();
}

class _HomeState extends State<Home>
{
  int _indiceAtual= 0;
  List<Widget> telas= [Login(), Cadastro(),];

  @override
  Widget build(BuildContext context)
  {
    return /*Stack
    (
      children: <Widget>
      [*/
        Scaffold
        (
          body: this.telas[this._indiceAtual],
          bottomNavigationBar: BottomNavigationBar
          (
            currentIndex: this._indiceAtual,
            onTap: (indice)=> setState( ()=> this._indiceAtual= indice ),
            //type: BottomNavigationBarType.shifting,
            //fixedColor: Colors.blue,
            backgroundColor: Colors.transparent,
            items:
            [
              BottomNavigationBarItem
              (
                title: Text("logar", /*style: TextStyle(color: Colors.white,),*/),
                icon: Icon
                (
                  Icons.person,
                  color: this._indiceAtual == 0 ? Colors.blue : Colors.white,
                ),
                backgroundColor: Colors.blue
              ),
              BottomNavigationBarItem
              (
                title: Text("cadastrar", /*style: TextStyle(color: Colors.white),*/),
                icon: Icon
                (
                  Icons.person_add,
                  color: this._indiceAtual == 1 ? Colors.blue : Colors.white,
                ),
                backgroundColor: Colors.blue,
              ),
            ],
          ),
        /*)
      ],*/
    );
  }
}