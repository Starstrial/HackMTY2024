import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_checkbox_group.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'p4_model.dart';
export 'p4_model.dart';

class P4Widget extends StatefulWidget {
  const P4Widget({super.key});

  @override
  State<P4Widget> createState() => _P4WidgetState();
}

class _P4WidgetState extends State<P4Widget> {
  late P4Model _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => P4Model());

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
                alignment: const AlignmentDirectional(-0.76, -0.92),
                child: Text(
                  '¡Te quedan tres preguntas!',
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Inter',
                        color: Colors.black,
                        fontSize: 18.0,
                        letterSpacing: 0.0,
                      ),
                ),
              ),
              Align(
                alignment: const AlignmentDirectional(-0.01, -0.75),
                child: CircularPercentIndicator(
                  percent: 0.55,
                  radius: 60.0,
                  lineWidth: 12.0,
                  animation: true,
                  animateFromLastPercent: true,
                  progressColor: const Color(0xFFFF0000),
                  backgroundColor: FlutterFlowTheme.of(context).accent4,
                  center: Text(
                    '60%',
                    style: FlutterFlowTheme.of(context).headlineSmall.override(
                          fontFamily: 'Inter Tight',
                          color: Colors.black,
                          letterSpacing: 0.0,
                        ),
                  ),
                ),
              ),
              Align(
                alignment: const AlignmentDirectional(-0.05, -0.25),
                child: Text(
                  '¿Cuál de las siguientes \nopciones es tu\n prinicipal objetivo \ncon nosotros?',
                  textAlign: TextAlign.center,
                  style: FlutterFlowTheme.of(context).displaySmall.override(
                        fontFamily: 'Inter Tight',
                        color: Colors.black,
                        fontSize: 28.0,
                        letterSpacing: 0.0,
                      ),
                ),
              ),
              Align(
                alignment: const AlignmentDirectional(0.12, 0.76),
                child: FFButtonWidget(
                  onPressed: () async {
                    context.pushNamed('P5');
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
              Align(
                alignment: const AlignmentDirectional(-0.18, 0.34),
                child: Container(
                  width: 230.0,
                  height: 166.0,
                  decoration: const BoxDecoration(
                    color: Color(0x00FFFFFF),
                  ),
                  child: Align(
                    alignment: const AlignmentDirectional(0.0, 0.41),
                    child: FlutterFlowCheckboxGroup(
                      options: const [
                        'Crédito',
                        'Débito',
                        'Ahorro',
                        'Préstamos',
                        'Inversiones'
                      ],
                      onChanged: (val) async {
                        safeSetState(() => _model.objetivoCBGValues = val);
                        await currentUserReference!.update({
                          ...mapToFirestore(
                            {
                              'objetivo': _model.objetivoCBGValues,
                            },
                          ),
                        });
                      },
                      controller: _model.objetivoCBGValueController ??=
                          FormFieldController<List<String>>(
                        [],
                      ),
                      activeColor: FlutterFlowTheme.of(context).error,
                      checkColor: FlutterFlowTheme.of(context).info,
                      checkboxBorderColor: Colors.black,
                      textStyle:
                          FlutterFlowTheme.of(context).bodyMedium.override(
                                fontFamily: 'Inter',
                                color: Colors.black,
                                letterSpacing: 0.0,
                              ),
                      checkboxBorderRadius: const BorderRadius.only(
                        bottomLeft: Radius.circular(0.0),
                        bottomRight: Radius.circular(0.0),
                        topLeft: Radius.circular(0.0),
                        topRight: Radius.circular(0.0),
                      ),
                      initialized: _model.objetivoCBGValues != null,
                    ),
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
