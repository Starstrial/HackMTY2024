import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_checkbox_group.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'p5_model.dart';
export 'p5_model.dart';

class P5Widget extends StatefulWidget {
  const P5Widget({super.key});

  @override
  State<P5Widget> createState() => _P5WidgetState();
}

class _P5WidgetState extends State<P5Widget> {
  late P5Model _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => P5Model());

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
                alignment: const AlignmentDirectional(-0.72, -0.92),
                child: Text(
                  '¡Te quedan dos preguntas!',
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Inter',
                        color: Colors.black,
                        fontSize: 18.0,
                        letterSpacing: 0.0,
                      ),
                ),
              ),
              Align(
                alignment: const AlignmentDirectional(-0.06, -0.71),
                child: CircularPercentIndicator(
                  percent: 0.75,
                  radius: 60.0,
                  lineWidth: 12.0,
                  animation: true,
                  animateFromLastPercent: true,
                  progressColor: const Color(0xFFFE2704),
                  backgroundColor: FlutterFlowTheme.of(context).accent4,
                  center: Text(
                    '75%',
                    style: FlutterFlowTheme.of(context).headlineSmall.override(
                          fontFamily: 'Inter Tight',
                          color: Colors.black,
                          letterSpacing: 0.0,
                        ),
                  ),
                ),
              ),
              Align(
                alignment: const AlignmentDirectional(-0.06, -0.22),
                child: Text(
                  '¿Qué beneficios te \ninteresan más?',
                  style: FlutterFlowTheme.of(context).displaySmall.override(
                        fontFamily: 'Inter Tight',
                        color: Colors.black,
                        letterSpacing: 0.0,
                      ),
                ),
              ),
              Align(
                alignment: const AlignmentDirectional(-0.13, 0.26),
                child: Container(
                  width: 299.0,
                  height: 150.0,
                  decoration: const BoxDecoration(
                    color: Color(0x3EFFFFFF),
                  ),
                  child: Align(
                    alignment: const AlignmentDirectional(0.0, 0.17),
                    child: FlutterFlowCheckboxGroup(
                      options: const [
                        'Promociones en restaurantes',
                        'Cashback',
                        'Viajes'
                      ],
                      onChanged: (val) async {
                        safeSetState(() => _model.beneficiosCBGValues = val);
                        await currentUserReference!.update({
                          ...mapToFirestore(
                            {
                              'beneficios': _model.beneficiosCBGValues,
                            },
                          ),
                        });
                      },
                      controller: _model.beneficiosCBGValueController ??=
                          FormFieldController<List<String>>(
                        [],
                      ),
                      activeColor: const Color(0xFFF6110A),
                      checkColor: FlutterFlowTheme.of(context).info,
                      checkboxBorderColor:
                          FlutterFlowTheme.of(context).secondaryText,
                      textStyle:
                          FlutterFlowTheme.of(context).bodyMedium.override(
                                fontFamily: 'Inter',
                                color: Colors.black,
                                fontSize: 18.0,
                                letterSpacing: 0.0,
                              ),
                      unselectedTextStyle:
                          FlutterFlowTheme.of(context).bodyMedium.override(
                                fontFamily: 'Inter',
                                color: Colors.black,
                                letterSpacing: 0.0,
                              ),
                      checkboxBorderRadius: BorderRadius.circular(4.0),
                      initialized: _model.beneficiosCBGValues != null,
                    ),
                  ),
                ),
              ),
              Align(
                alignment: const AlignmentDirectional(0.0, 0.64),
                child: FFButtonWidget(
                  onPressed: () async {
                    context.pushNamed('P6');
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
