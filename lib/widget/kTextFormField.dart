import 'package:flutter/material.dart';

class KTextFormField extends StatelessWidget {
  const KTextFormField({
    super.key,
    this.label,
    this.hintText,
    this.prefixIcon,
    this.suffixIcon,
    this.validator,
    this.readonly=false,
    this.obsecureText=false,
    this.controller,
  });
  final  label;
  final hintText;
  final suffixIcon;
  final prefixIcon;
  final bool readonly;
  final obsecureText;
  final dynamic validator;
  final TextEditingController? controller;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onTap: (){},
      validator: validator  ,
      controller: controller,
      obscureText: obsecureText,
      readOnly: readonly,
      decoration: InputDecoration(
        label: label,
        hintText: hintText,
        suffixIcon: suffixIcon,
        prefixIcon: prefixIcon,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
          borderSide: BorderSide(width: 50)),

          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
            borderSide: BorderSide(color: Colors.green,width: 2)
          ), 
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
            borderSide: BorderSide(color: Colors.green,width: 2)
          ),
          errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
            borderSide: BorderSide(color: Color.fromARGB(255, 219, 25, 25),width: 2)
          )
      ),
    );
  }
}
