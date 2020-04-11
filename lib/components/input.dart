import "package:flutter/material.dart";

TextFormField input
(
  {
    TextInputType keyboardType,
    Widget prefixIcon,
    //bool obscureText,
    String hintText,
    //FormFieldValidator<String> validator,
    ValueChanged<String> onChanged,
    String Function() errorText,
  }
)=> TextFormField
    (
      keyboardType: keyboardType,
      //obscureText: obscureText,
      //autofocus: true,
      cursorColor: Colors.greenAccent,
      style: TextStyle(fontSize: 15,),
      decoration: InputDecoration
      (
        prefixIcon: prefixIcon,
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
      //controller.mudarUsername,
    );