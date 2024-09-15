import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_radio_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'p7_model.dart';
export 'p7_model.dart';

class P7Widget extends StatefulWidget {
  const P7Widget({super.key});

  @override
  State<P7Widget> createState() => _P7WidgetState();
}

class _P7WidgetState extends State<P7Widget> {
  late P7Model _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => P7Model());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: const Color(0xFFEC0029),
          automaticallyImplyLeading: true,
          title: Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              Expanded(
                child: Align(
                  alignment: const AlignmentDirectional(0.0, 0.0),
                  child: Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 50.0, 0.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(8.0),
                      child: Image.asset(
                        'assets/images/image_2024-09-14_155139600.png',
                        width: 275.0,
                        height: 60.0,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          actions: const [],
          centerTitle: true,
          elevation: 0.0,
        ),
        body: SafeArea(
          top: true,
          child: Stack(
            children: [
              Align(
                alignment: const AlignmentDirectional(-0.73, -0.92),
                child: Text(
                  '¡Ya es la última pregunta!',
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Inter',
                        color: Colors.black,
                        fontSize: 18.0,
                        letterSpacing: 0.0,
                      ),
                ),
              ),
              Align(
                alignment: const AlignmentDirectional(0.03, -0.72),
                child: CircularPercentIndicator(
                  percent: 0.99,
                  radius: 60.0,
                  lineWidth: 12.0,
                  animation: true,
                  animateFromLastPercent: true,
                  progressColor: const Color(0xFFFF0000),
                  backgroundColor: FlutterFlowTheme.of(context).accent4,
                  center: Text(
                    '99%',
                    style: FlutterFlowTheme.of(context).headlineSmall.override(
                          fontFamily: 'Inter Tight',
                          color: Colors.black,
                          letterSpacing: 0.0,
                        ),
                  ),
                ),
              ),
              Align(
                alignment: const AlignmentDirectional(0.0, -0.23),
                child: Text(
                  '¿Utilizas dólares en \ntu vida diaria?',
                  style: FlutterFlowTheme.of(context).displaySmall.override(
                        fontFamily: 'Inter Tight',
                        color: Colors.black,
                        fontSize: 30.0,
                        letterSpacing: 0.0,
                      ),
                ),
              ),
              Align(
                alignment: const AlignmentDirectional(0.42, 0.13),
                child: FlutterFlowRadioButton(
                  options: ['Si', 'No'].toList(),
                  onChanged: (val) async {
                    safeSetState(() {});
                    if (_model.dolaresRBValue == 'Si') {
                      await currentUserReference!.update(createUsersRecordData(
                        dolares: 0,
                      ));
                    } else {
                      await currentUserReference!.update(createUsersRecordData(
                        dolares: 1,
                      ));
                    }
                  },
                  controller: _model.dolaresRBValueController ??=
                      FormFieldController<String>(null),
                  optionHeight: 50.0,
                  optionWidth: 300.0,
                  textStyle: FlutterFlowTheme.of(context).labelMedium.override(
                        fontFamily: 'Inter',
                        letterSpacing: 0.0,
                      ),
                  selectedTextStyle:
                      FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Inter',
                            color: Colors.black,
                            fontSize: 20.0,
                            letterSpacing: 0.0,
                          ),
                  buttonPosition: RadioButtonPosition.left,
                  direction: Axis.vertical,
                  radioButtonColor: const Color(0xFFFF0000),
                  inactiveRadioButtonColor:
                      FlutterFlowTheme.of(context).secondaryText,
                  toggleable: false,
                  horizontalAlignment: WrapAlignment.start,
                  verticalAlignment: WrapCrossAlignment.start,
                ),
              ),
              Align(
                alignment: const AlignmentDirectional(0.02, 0.59),
                child: FFButtonWidget(
                  onPressed: () async {
                    context.pushNamed('MAIN2');
                  },
                  text: '¡Listo! Se parte de nosotros',
                  options: FFButtonOptions(
                    width: 288.0,
                    height: 65.0,
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                    iconPadding:
                        const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                    color: const Color(0xFFEC0029),
                    textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                          fontFamily: 'Inter Tight',
                          color: Colors.white,
                          fontSize: 25.0,
                          letterSpacing: 0.0,
                          fontWeight: FontWeight.w800,
                        ),
                    elevation: 0.0,
                    borderRadius: BorderRadius.circular(24.0),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
