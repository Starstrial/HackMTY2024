import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'p7_widget.dart' show P7Widget;
import 'package:flutter/material.dart';

class P7Model extends FlutterFlowModel<P7Widget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for Dolares-RB widget.
  FormFieldController<String>? dolaresRBValueController;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}

  /// Additional helper methods.
  String? get dolaresRBValue => dolaresRBValueController?.value;
}
