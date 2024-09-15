import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'p1_widget.dart' show P1Widget;
import 'package:flutter/material.dart';

class P1Model extends FlutterFlowModel<P1Widget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for Edad-CC widget.
  FormFieldController<List<String>>? edadCCValueController;
  String? get edadCCValue => edadCCValueController?.value?.firstOrNull;
  set edadCCValue(String? val) =>
      edadCCValueController?.value = val != null ? [val] : [];

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
