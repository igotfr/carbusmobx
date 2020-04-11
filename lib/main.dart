import "package:flutter/material.dart";

import "./rotas.dart";
import "./pages/home.dart";

void main()=> runApp(MyApp());

class MyApp extends StatelessWidget
{
  @override
  Widget build(BuildContext context)
  {
    return new MaterialApp
    (
      debugShowCheckedModeBanner: false,
      title: "Carbus",
      theme: ThemeData(primaryColor: Color(0xff8B4513), /*0xff075E54*/ accentColor: Color(0xffD37682), /*0xff25D366*/),
      onGenerateRoute: Rotas.gerarRotas,
      initialRoute: '/',
      //home: Home(),
    );
  }
}