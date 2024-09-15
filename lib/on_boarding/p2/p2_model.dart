import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'p2_widget.dart' show P2Widget;
import 'package:flutter/material.dart';

class P2Model extends FlutterFlowModel<P2Widget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for FirstTime-RB widget.
  FormFieldController<String>? firstTimeRBValueController;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}

  /// Additional helper methods.
  String? get firstTimeRBValue => firstTimeRBValueController?.value;
}
