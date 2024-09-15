import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_radio_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'p3_model.dart';
export 'p3_model.dart';

class P3Widget extends StatefulWidget {
  const P3Widget({super.key});

  @override
  State<P3Widget> createState() => _P3WidgetState();
}

class _P3WidgetState extends State<P3Widget> {
  late P3Model _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => P3Model());

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
                alignment: const AlignmentDirectional(-0.74, -0.88),
                child: Text(
                  '¡Te quedan cuatro preguntas!',
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Inter',
                        color: Colors.black,
                        fontSize: 18.0,
                        letterSpacing: 0.0,
                      ),
                ),
              ),
              Align(
                alignment: const AlignmentDirectional(0.05, -0.66),
                child: CircularPercentIndicator(
                  percent: 0.3,
                  radius: 65.0,
                  lineWidth: 12.0,
                  animation: true,
                  animateFromLastPercent: true,
                  progressColor: const Color(0xFFFF0000),
                  backgroundColor: FlutterFlowTheme.of(context).accent4,
                  center: Text(
                    '45%',
                    style: FlutterFlowTheme.of(context).headlineSmall.override(
                          fontFamily: 'Inter Tight',
                          color: Colors.black,
                          letterSpacing: 0.0,
                        ),
                  ),
                ),
              ),
              Align(
                alignment: const AlignmentDirectional(-0.24, -0.21),
                child: Text(
                  'Selecciona tu ocupación',
                  style: FlutterFlowTheme.of(context).displaySmall.override(
                        fontFamily: 'Inter Tight',
                        color: Colors.black,
                        fontSize: 28.0,
                        letterSpacing: 0.0,
                      ),
                ),
              ),
              Align(
                alignment: const AlignmentDirectional(-0.52, 0.14),
                child: FlutterFlowRadioButton(
                  options: [
                    'Estudiante',
                    'Trabajador',
                    'Empleador',
                    'Jubilado',
                    'Desempleado'
                  ].toList(),
                  onChanged: (val) => safeSetState(() {}),
                  controller: _model.ocupacionRBValueController ??=
                      FormFieldController<String>(null),
                  optionHeight: 38.0,
                  textStyle: FlutterFlowTheme.of(context).labelMedium.override(
                        fontFamily: 'Inter',
                        letterSpacing: 0.0,
                      ),
                  selectedTextStyle:
                      FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Inter',
                            color: Colors.black,
                            fontSize: 18.0,
                            letterSpacing: 0.0,
                            fontWeight: FontWeight.w500,
                          ),
                  buttonPosition: RadioButtonPosition.left,
                  direction: Axis.vertical,
                  radioButtonColor: const Color(0xFFFF0502),
                  inactiveRadioButtonColor:
                      FlutterFlowTheme.of(context).secondaryText,
                  toggleable: false,
                  horizontalAlignment: WrapAlignment.start,
                  verticalAlignment: WrapCrossAlignment.start,
                ),
              ),
              Align(
                alignment: const AlignmentDirectional(0.02, 0.55),
                child: FFButtonWidget(
                  onPressed: () async {
                    if (_model.ocupacionRBValue == 'Estudiante') {
                      await currentUserReference!.update(createUsersRecordData(
                        job: 0,
                      ));
                    } else {
                      if (_model.ocupacionRBValue == 'Trabajador') {
                        await currentUserReference!
                            .update(createUsersRecordData(
                          job: 1,
                        ));
                      } else {
                        if (_model.ocupacionRBValue == 'Empleador') {
                          await currentUserReference!
                              .update(createUsersRecordData(
                            job: 2,
                          ));
                        } else {
                          if (_model.ocupacionRBValue == 'Jubilado') {
                            await currentUserReference!
                                .update(createUsersRecordData(
                              job: 3,
                            ));
                          } else {
                            await currentUserReference!
                                .update(createUsersRecordData(
                              job: 4,
                            ));
                          }

                          context.pushNamed('P4');
                        }

                        context.pushNamed('P4');
                      }

                      context.pushNamed('P4');
                    }

                    context.pushNamed('P4');
                  },
                  text: 'CONTINUAR',
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
