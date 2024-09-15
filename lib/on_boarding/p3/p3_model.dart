import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'p3_widget.dart' show P3Widget;
import 'package:flutter/material.dart';

class P3Model extends FlutterFlowModel<P3Widget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for Ocupacion-RB widget.
  FormFieldController<String>? ocupacionRBValueController;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}

  /// Additional helper methods.
  String? get ocupacionRBValue => ocupacionRBValueController?.value;
}
