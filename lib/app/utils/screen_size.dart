import 'package:flutter/material.dart';

getSize(BuildContext context){
  return View.of(context).physicalSize /
      View.of(context).devicePixelRatio;
}