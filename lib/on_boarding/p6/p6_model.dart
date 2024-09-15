import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'p6_widget.dart' show P6Widget;
import 'package:flutter/material.dart';

class P6Model extends FlutterFlowModel<P6Widget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for Frecuencia-RB widget.
  FormFieldController<String>? frecuenciaRBValueController;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}

  /// Additional helper methods.
  String? get frecuenciaRBValue => frecuenciaRBValueController?.value;
}
