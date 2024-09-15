import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'p5_widget.dart' show P5Widget;
import 'package:flutter/material.dart';

class P5Model extends FlutterFlowModel<P5Widget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for Beneficios-CBG widget.
  FormFieldController<List<String>>? beneficiosCBGValueController;
  List<String>? get beneficiosCBGValues => beneficiosCBGValueController?.value;
  set beneficiosCBGValues(List<String>? v) =>
      beneficiosCBGValueController?.value = v;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
