import 'package:flutter/material.dart';

// This function calculates and returns the logical screen size based on the device's physical size and pixel ratio.


getSize(BuildContext context){
  return View.of(context).physicalSize /
      View.of(context).devicePixelRatio;
}