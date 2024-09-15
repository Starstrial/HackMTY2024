import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'p4_widget.dart' show P4Widget;
import 'package:flutter/material.dart';

class P4Model extends FlutterFlowModel<P4Widget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for Objetivo-CBG widget.
  FormFieldController<List<String>>? objetivoCBGValueController;
  List<String>? get objetivoCBGValues => objetivoCBGValueController?.value;
  set objetivoCBGValues(List<String>? v) =>
      objetivoCBGValueController?.value = v;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
