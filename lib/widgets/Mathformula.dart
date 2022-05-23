import 'package:flutter/material.dart';
import '../models/FormulapdfMaths.dart';

class MathFormula extends StatelessWidget {
  const MathFormula({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Formulapdf('Math');
  }
}
