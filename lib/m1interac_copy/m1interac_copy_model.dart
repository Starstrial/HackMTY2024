import '/flutter_flow/flutter_flow_util.dart';
import 'm1interac_copy_widget.dart' show M1interacCopyWidget;
import 'package:flutter/material.dart';

class M1interacCopyModel extends FlutterFlowModel<M1interacCopyWidget> {
  ///  Local state fields for this page.

  bool token = true;

  ///  State fields for stateful widgets in this page.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // State field(s) for PageView widget.
  PageController? pageViewController;

  int get pageViewCurrentIndex => pageViewController != null &&
          pageViewController!.hasClients &&
          pageViewController!.page != null
      ? pageViewController!.page!.round()
      : 0;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
