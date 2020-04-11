import "package:flutter/material.dart";

TextFormField inputSenha
(
  {
    TextInputType keyboardType,
    Widget prefixIcon,
    Widget iconeTextoHide,
    Widget iconeTextoShow,
    //bool obscureText,
    bool ocultarSenha,
    bool showhideSenha,
    String hintText,
    //FormFieldValidator<String> validator,
    ValueChanged<String> onChanged,
    String Function() errorText,
    //bool Function() onPressed,
    VoidCallback onPressed,
  }
)
{
  //showhideSenha= ocultarSenha;
    return TextFormField
    (
      keyboardType: keyboardType,
      obscureText: showhideSenha,
      //autofocus: true,
      cursorColor: Colors.greenAccent,
      style: TextStyle(fontSize: 15,),
      decoration: InputDecoration
      (
        prefixIcon: prefixIcon,
        suffixIcon: IconButton
        (
          icon: showhideSenha == true ? iconeTextoHide : iconeTextoShow,
          onPressed: onPressed,
          //()=> setState( ()=> widget.ocultarSenha= !widget.ocultarSenha ),
        ),
        hintText: hintText,
        contentPadding: EdgeInsets.fromLTRB(20, 10, 20, 10),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(15),),
        fillColor: Colors.blue,
        //focusColor: Colors.blue,
        //hoverColor: Colors.blue,
        labelStyle: TextStyle
        (
          color: Colors.black38,
          fontWeight: FontWeight.w400,
          fontSize: 20,
        ),
        errorText: errorText == null ? null : errorText(),
      ),

      //validator: validator,
      onChanged: onChanged,
    );
  }




/*class InputSenha extends StatefulWidget
{
  TextInputType keyboardType,
  Widget prefixIcon,
  Widget iconeTextoHide,
  Widget iconeTextoShow,
  //bool obscureText,
  bool ocultarSenha;
  String hintText,
  //FormFieldValidator<String> validator,
  ValueChanged<String> onChanged,
  String Function() errorText,

  InputSenha
  (
    {
      this.keyboardType,
      this.prefixIcon,
      this.iconeTextoHide,
      this.iconeTextoShow,
      this.ocultarSenha,
      this.hintText,
      //this.ivalidator,
      this.onChanged,
      this.errorText,
    }
  );

  @override
  _InputSenhaState createState()=> _InputSenhaState();
}

class _InputSenhaState extends State<InputSenha>
{
  @override
  Widget build(BuildContext context)
  {
    return TextFormField
    (
      keyboardType: keyboardType,
      obscureText: ocultarSenha,
      //autofocus: true,
      cursorColor: Colors.greenAccent,
      style: TextStyle(fontSize: 15,),
      decoration: InputDecoration
      (
        prefixIcon: prefixIcon,
        suffixIcon: IconButton
        (
          icon: ocultarSenha == true ? iconeTextoHide : iconeTextoShow,
          onPressed: ()=> setState( ()=> widget.ocultarSenha= !widget.ocultarSenha ),
        ),
        hintText: hintText,
        contentPadding: EdgeInsets.fromLTRB(20, 10, 20, 10),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(15),),
        fillColor: Colors.blue,
        //focusColor: Colors.blue,
        //hoverColor: Colors.blue,
        labelStyle: TextStyle
        (
          color: Colors.black38,
          fontWeight: FontWeight.w400,
          fontSize: 20,
        ),
        errorText: errorText == null ? null : errorText(),
      ),
    );
  }
}*/