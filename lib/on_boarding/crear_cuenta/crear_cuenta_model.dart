import '/flutter_flow/flutter_flow_util.dart';
import 'crear_cuenta_widget.dart' show CrearCuentaWidget;
import 'package:flutter/material.dart';

class CrearCuentaModel extends FlutterFlowModel<CrearCuentaWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for Email-Field widget.
  FocusNode? emailFieldFocusNode;
  TextEditingController? emailFieldTextController;
  String? Function(BuildContext, String?)? emailFieldTextControllerValidator;
  String? _emailFieldTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    if (!RegExp(kTextValidatorEmailRegex).hasMatch(val)) {
      return 'Has to be a valid email address.';
    }
    return null;
  }

  // State field(s) for Contrasea-Field widget.
  FocusNode? contraseaFieldFocusNode;
  TextEditingController? contraseaFieldTextController;
  late bool contraseaFieldVisibility;
  String? Function(BuildContext, String?)?
      contraseaFieldTextControllerValidator;
  String? _contraseaFieldTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    if (val.length < 7) {
      return 'Requires at least 7 characters.';
    }

    return null;
  }

  // State field(s) for VerificarContrasea-Field widget.
  FocusNode? verificarContraseaFieldFocusNode;
  TextEditingController? verificarContraseaFieldTextController;
  late bool verificarContraseaFieldVisibility;
  String? Function(BuildContext, String?)?
      verificarContraseaFieldTextControllerValidator;
  String? _verificarContraseaFieldTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    if (val.length < 7) {
      return 'Requires at least 7 characters.';
    }

    return null;
  }

  @override
  void initState(BuildContext context) {
    emailFieldTextControllerValidator = _emailFieldTextControllerValidator;
    contraseaFieldVisibility = false;
    contraseaFieldTextControllerValidator =
        _contraseaFieldTextControllerValidator;
    verificarContraseaFieldVisibility = false;
    verificarContraseaFieldTextControllerValidator =
        _verificarContraseaFieldTextControllerValidator;
  }

  @override
  void dispose() {
    emailFieldFocusNode?.dispose();
    emailFieldTextController?.dispose();

    contraseaFieldFocusNode?.dispose();
    contraseaFieldTextController?.dispose();

    verificarContraseaFieldFocusNode?.dispose();
    verificarContraseaFieldTextController?.dispose();
  }
}
