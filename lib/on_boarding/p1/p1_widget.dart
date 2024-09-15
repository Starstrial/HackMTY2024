import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_choice_chips.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'p1_model.dart';
export 'p1_model.dart';

class P1Widget extends StatefulWidget {
  const P1Widget({super.key});

  @override
  State<P1Widget> createState() => _P1WidgetState();
}

class _P1WidgetState extends State<P1Widget> {
  late P1Model _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => P1Model());

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
                  alignment: const AlignmentDirectional(-1.0, 0.0),
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
                alignment: const AlignmentDirectional(-0.01, -0.72),
                child: CircularPercentIndicator(
                  percent: 0.1,
                  radius: 60.0,
                  lineWidth: 12.0,
                  animation: true,
                  animateFromLastPercent: true,
                  progressColor: const Color(0xFFFF0A0A),
                  backgroundColor: FlutterFlowTheme.of(context).accent4,
                  center: Text(
                    '10%',
                    style: FlutterFlowTheme.of(context).headlineSmall.override(
                          fontFamily: 'Inter Tight',
                          color: Colors.black,
                          letterSpacing: 0.0,
                        ),
                  ),
                ),
              ),
              Align(
                alignment: const AlignmentDirectional(-0.75, -0.92),
                child: Text(
                  '¡Te quedan seis preguntas!',
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Inter',
                        color: Colors.black,
                        fontSize: 18.0,
                        letterSpacing: 0.0,
                      ),
                ),
              ),
              Align(
                alignment: const AlignmentDirectional(-0.1, -0.29),
                child: Text(
                  'Selecciona tu edad',
                  style: FlutterFlowTheme.of(context).displaySmall.override(
                        fontFamily: 'Inter Tight',
                        color: Colors.black,
                        letterSpacing: 0.0,
                      ),
                ),
              ),
              Align(
                alignment: const AlignmentDirectional(-0.16, 0.1),
                child: FlutterFlowChoiceChips(
                  options: const [
                    ChipData('18-25'),
                    ChipData('25-32'),
                    ChipData('32-40'),
                    ChipData('41-62'),
                    ChipData('62+')
                  ],
                  onChanged: (val) async {
                    safeSetState(() => _model.edadCCValue = val?.firstOrNull);
                    if (_model.edadCCValue == '18-25') {
                      await currentUserReference!.update(createUsersRecordData(
                        edad: 0,
                      ));
                    } else {
                      if (_model.edadCCValue == '25-32') {
                        await currentUserReference!
                            .update(createUsersRecordData(
                          edad: 1,
                        ));
                      } else {
                        if (_model.edadCCValue == '32-40') {
                          await currentUserReference!
                              .update(createUsersRecordData(
                            edad: 3,
                          ));
                        } else {
                          if (_model.edadCCValue == '41-62') {
                            await currentUserReference!
                                .update(createUsersRecordData(
                              edad: 3,
                            ));
                          } else {
                            await currentUserReference!
                                .update(createUsersRecordData(
                              edad: 4,
                            ));
                          }
                        }
                      }
                    }
                  },
                  selectedChipStyle: ChipStyle(
                    backgroundColor: const Color(0xFFFB1009),
                    textStyle: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Inter',
                          color: FlutterFlowTheme.of(context).info,
                          letterSpacing: 0.0,
                        ),
                    iconColor: FlutterFlowTheme.of(context).info,
                    iconSize: 16.0,
                    elevation: 0.0,
                    borderWidth: 20.0,
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  unselectedChipStyle: ChipStyle(
                    backgroundColor:
                        FlutterFlowTheme.of(context).secondaryBackground,
                    textStyle: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Inter',
                          color: FlutterFlowTheme.of(context).secondaryText,
                          letterSpacing: 0.0,
                        ),
                    iconColor: FlutterFlowTheme.of(context).secondaryText,
                    iconSize: 16.0,
                    elevation: 0.0,
                    borderWidth: 20.0,
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  chipSpacing: 8.0,
                  rowSpacing: 8.0,
                  multiselect: false,
                  alignment: WrapAlignment.start,
                  controller: _model.edadCCValueController ??=
                      FormFieldController<List<String>>(
                    [],
                  ),
                  wrapped: true,
                ),
              ),
              Align(
                alignment: const AlignmentDirectional(-0.04, 0.57),
                child: FFButtonWidget(
                  onPressed: () async {
                    context.pushNamed('P2');
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
