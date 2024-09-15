import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'aviso_de_crear_cuenta_model.dart';
export 'aviso_de_crear_cuenta_model.dart';

class AvisoDeCrearCuentaWidget extends StatefulWidget {
  const AvisoDeCrearCuentaWidget({super.key});

  @override
  State<AvisoDeCrearCuentaWidget> createState() =>
      _AvisoDeCrearCuentaWidgetState();
}

class _AvisoDeCrearCuentaWidgetState extends State<AvisoDeCrearCuentaWidget> {
  late AvisoDeCrearCuentaModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AvisoDeCrearCuentaModel());

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
          child: Align(
            alignment: const AlignmentDirectional(0.0, 0.0),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0.0, 150.0, 0.0, 0.0),
                  child: Text(
                    'Importante',
                    style: FlutterFlowTheme.of(context).headlineLarge.override(
                          fontFamily: 'Inter Tight',
                          color: Colors.black,
                          letterSpacing: 0.0,
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                ),
                Text(
                  'Este proceso puede tardar 15 minutos\nTen tu identificación oficial a la mano\nVamos a necesitar tu camara\nVe a un espacio sin muchas personas',
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Inter',
                        color: Colors.black,
                        fontSize: 17.5,
                        letterSpacing: 0.0,
                        lineHeight: 1.5,
                      ),
                ),
                FFButtonWidget(
                  onPressed: () async {
                    context.pushNamed('CrearCuenta');
                  },
                  text: 'CONTINUAR',
                  options: FFButtonOptions(
                    height: 40.0,
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                    iconPadding:
                        const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                    color: const Color(0xFFEC0029),
                    textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                          fontFamily: 'Inter Tight',
                          color: Colors.white,
                          fontSize: 20.0,
                          letterSpacing: 0.0,
                          fontWeight: FontWeight.w800,
                        ),
                    elevation: 0.0,
                    borderRadius: BorderRadius.circular(24.0),
                  ),
                ),
              ].divide(const SizedBox(height: 30.0)),
            ),
          ),
        ),
      ),
    );
  }
}
