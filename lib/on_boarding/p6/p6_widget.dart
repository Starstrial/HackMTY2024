import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_radio_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'p6_model.dart';
export 'p6_model.dart';

class P6Widget extends StatefulWidget {
  const P6Widget({super.key});

  @override
  State<P6Widget> createState() => _P6WidgetState();
}

class _P6WidgetState extends State<P6Widget> {
  late P6Model _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => P6Model());

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
                alignment: const AlignmentDirectional(-0.38, -0.89),
                child: Text(
                  '¡Ya casi! Te queda una pregunta más',
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Inter',
                        color: Colors.black,
                        fontSize: 18.0,
                        letterSpacing: 0.0,
                      ),
                ),
              ),
              Align(
                alignment: const AlignmentDirectional(0.03, -0.65),
                child: CircularPercentIndicator(
                  percent: 0.8,
                  radius: 60.0,
                  lineWidth: 12.0,
                  animation: true,
                  animateFromLastPercent: true,
                  progressColor: const Color(0xFFEC0029),
                  backgroundColor: FlutterFlowTheme.of(context).accent4,
                  center: Text(
                    '80%',
                    style: FlutterFlowTheme.of(context).headlineSmall.override(
                          fontFamily: 'Inter Tight',
                          color: Colors.black,
                          letterSpacing: 0.0,
                        ),
                  ),
                ),
              ),
              Align(
                alignment: const AlignmentDirectional(0.0, -0.15),
                child: Padding(
                  padding: const EdgeInsets.all(6.0),
                  child: Text(
                    '¿Qué tan frecuentamente entras a tu banco para gestionar y controlar tus finanzas dentro de la misma plataforma?',
                    textAlign: TextAlign.center,
                    style: FlutterFlowTheme.of(context).displaySmall.override(
                          fontFamily: 'Inter Tight',
                          color: Colors.black,
                          fontSize: 20.0,
                          letterSpacing: 0.0,
                        ),
                  ),
                ),
              ),
              Align(
                alignment: const AlignmentDirectional(-0.06, 0.26),
                child: FlutterFlowRadioButton(
                  options:
                      ['Diariamente', 'Semanalmente ', 'Mensualmente'].toList(),
                  onChanged: (val) async {
                    safeSetState(() {});
                    if (_model.frecuenciaRBValue == 'Diariamente') {
                      await currentUserReference!.update(createUsersRecordData(
                        frecuencia: 0,
                      ));
                    } else {
                      if (_model.frecuenciaRBValue == 'Semanalmente') {
                        await currentUserReference!
                            .update(createUsersRecordData(
                          frecuencia: 1,
                        ));
                      } else {
                        await currentUserReference!
                            .update(createUsersRecordData(
                          frecuencia: 2,
                        ));
                      }
                    }
                  },
                  controller: _model.frecuenciaRBValueController ??=
                      FormFieldController<String>(null),
                  optionHeight: 32.0,
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
                          ),
                  buttonPosition: RadioButtonPosition.left,
                  direction: Axis.vertical,
                  radioButtonColor: const Color(0xFFEC0029),
                  inactiveRadioButtonColor:
                      FlutterFlowTheme.of(context).secondaryText,
                  toggleable: false,
                  horizontalAlignment: WrapAlignment.start,
                  verticalAlignment: WrapCrossAlignment.start,
                ),
              ),
              Align(
                alignment: const AlignmentDirectional(-0.05, 0.61),
                child: FFButtonWidget(
                  onPressed: () async {
                    context.pushNamed('P7');
                  },
                  text: 'CONTINUAR',
                  options: FFButtonOptions(
                    width: 288.0,
                    height: 66.0,
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
