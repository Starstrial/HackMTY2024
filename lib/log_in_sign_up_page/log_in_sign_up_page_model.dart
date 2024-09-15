import '/flutter_flow/flutter_flow_util.dart';
import 'log_in_sign_up_page_widget.dart' show LogInSignUpPageWidget;
import 'package:flutter/material.dart';

class LogInSignUpPageModel extends FlutterFlowModel<LogInSignUpPageWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for AccesoTabBar widget.
  TabController? accesoTabBarController;
  int get accesoTabBarCurrentIndex =>
      accesoTabBarController != null ? accesoTabBarController!.index : 0;

  // State field(s) for EmailField widget.
  FocusNode? emailFieldFocusNode;
  TextEditingController? emailFieldTextController;
  String? Function(BuildContext, String?)? emailFieldTextControllerValidator;
  // State field(s) for PasswordField widget.
  FocusNode? passwordFieldFocusNode;
  TextEditingController? passwordFieldTextController;
  late bool passwordFieldVisibility;
  String? Function(BuildContext, String?)? passwordFieldTextControllerValidator;
  bool biometria = false;

  @override
  void initState(BuildContext context) {
    passwordFieldVisibility = false;
  }

  @override
  void dispose() {
    accesoTabBarController?.dispose();
    emailFieldFocusNode?.dispose();
    emailFieldTextController?.dispose();

    passwordFieldFocusNode?.dispose();
    passwordFieldTextController?.dispose();
  }
}
