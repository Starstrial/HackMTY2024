import '/auth/firebase_auth/auth_util.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'main2_model.dart';
export 'main2_model.dart';

class Main2Widget extends StatefulWidget {
  const Main2Widget({super.key});

  @override
  State<Main2Widget> createState() => _Main2WidgetState();
}

class _Main2WidgetState extends State<Main2Widget>
    with TickerProviderStateMixin {
  late Main2Model _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = <String, AnimationInfo>{};

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => Main2Model());

    animationsMap.addAll({
      'iconButtonOnPageLoadAnimation1': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
      'iconButtonOnPageLoadAnimation2': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
      'iconButtonOnPageLoadAnimation3': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
      'iconButtonOnPageLoadAnimation4': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
      'iconButtonOnPageLoadAnimation5': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
      'iconButtonOnPageLoadAnimation6': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
    });

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
              FlutterFlowIconButton(
                borderRadius: 8.0,
                fillColor: const Color(0x004B39EF),
                icon: Icon(
                  Icons.cancel_presentation,
                  color: FlutterFlowTheme.of(context).info,
                  size: 50.0,
                ),
                onPressed: () async {
                  GoRouter.of(context).prepareAuthEvent();
                  await authManager.signOut();
                  GoRouter.of(context).clearRedirectLocation();

                  context.goNamedAuth('LogInSignUp-Page', context.mounted);
                },
              ),
              Expanded(
                child: Align(
                  alignment: const AlignmentDirectional(0.0, 0.0),
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
          child: SizedBox(
            height: MediaQuery.sizeOf(context).height * 1.0,
            child: Stack(
              alignment: const AlignmentDirectional(0.0, -1.0),
              children: [
                Align(
                  alignment: const AlignmentDirectional(-0.47, 0.28),
                  child: FlutterFlowIconButton(
                    borderRadius: 8.0,
                    buttonSize: 88.0,
                    fillColor: const Color(0xFFFF4848),
                    icon: FaIcon(
                      FontAwesomeIcons.audible,
                      color: FlutterFlowTheme.of(context).info,
                      size: 50.0,
                    ),
                    onPressed: () {
                      print('IconButton pressed ...');
                    },
                  ).animateOnPageLoad(
                      animationsMap['iconButtonOnPageLoadAnimation1']!),
                ),
                Align(
                  alignment: const AlignmentDirectional(0.48, -0.2),
                  child: FlutterFlowIconButton(
                    borderRadius: 8.0,
                    buttonSize: 93.0,
                    fillColor: const Color(0xFFFF4848),
                    icon: FaIcon(
                      FontAwesomeIcons.donate,
                      color: FlutterFlowTheme.of(context).info,
                      size: 50.0,
                    ),
                    onPressed: () {
                      print('IconButton pressed ...');
                    },
                  ).animateOnPageLoad(
                      animationsMap['iconButtonOnPageLoadAnimation2']!),
                ),
                Align(
                  alignment: const AlignmentDirectional(0.27, -0.53),
                  child: Text(
                    'Hola _____ \n(nombre del usuario)',
                    style: FlutterFlowTheme.of(context).displaySmall.override(
                          fontFamily: 'Inter Tight',
                          color: Colors.black,
                          fontSize: 30.0,
                          letterSpacing: 0.0,
                        ),
                  ),
                ),
                Align(
                  alignment: const AlignmentDirectional(-0.46, 0.02),
                  child: Text(
                    'Mis cuentas',
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Inter',
                          color: Colors.black,
                          letterSpacing: 0.0,
                        ),
                  ),
                ),
                Align(
                  alignment: const AlignmentDirectional(0.51, 0.02),
                  child: Text(
                    'Transferencias',
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Inter',
                          color: Colors.black,
                          letterSpacing: 0.0,
                        ),
                  ),
                ),
                Align(
                  alignment: const AlignmentDirectional(-0.48, -0.19),
                  child: FlutterFlowIconButton(
                    borderColor: Colors.transparent,
                    borderRadius: 8.0,
                    buttonSize: 93.0,
                    fillColor: const Color(0xFFFF4848),
                    icon: FaIcon(
                      FontAwesomeIcons.solidUser,
                      color: FlutterFlowTheme.of(context).info,
                      size: 50.0,
                    ),
                    onPressed: () {
                      print('IconButton pressed ...');
                    },
                  ).animateOnPageLoad(
                      animationsMap['iconButtonOnPageLoadAnimation3']!),
                ),
                Align(
                  alignment: const AlignmentDirectional(-0.46, 0.71),
                  child: FlutterFlowIconButton(
                    borderRadius: 8.0,
                    buttonSize: 87.0,
                    fillColor: const Color(0xFFFF4848),
                    icon: FaIcon(
                      FontAwesomeIcons.phone,
                      color: FlutterFlowTheme.of(context).info,
                      size: 50.0,
                    ),
                    onPressed: () {
                      print('IconButton pressed ...');
                    },
                  ).animateOnPageLoad(
                      animationsMap['iconButtonOnPageLoadAnimation4']!),
                ),
                Align(
                  alignment: const AlignmentDirectional(0.49, 0.72),
                  child: FlutterFlowIconButton(
                    borderRadius: 8.0,
                    buttonSize: 89.0,
                    fillColor: const Color(0xFFFF4848),
                    icon: FaIcon(
                      FontAwesomeIcons.solidBell,
                      color: FlutterFlowTheme.of(context).info,
                      size: 50.0,
                    ),
                    onPressed: () {
                      print('IconButton pressed ...');
                    },
                  ).animateOnPageLoad(
                      animationsMap['iconButtonOnPageLoadAnimation5']!),
                ),
                Align(
                  alignment: const AlignmentDirectional(-0.46, 0.45),
                  child: Text(
                    'Tarjeta digital',
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Inter',
                          color: Colors.black,
                          letterSpacing: 0.0,
                        ),
                  ),
                ),
                Align(
                  alignment: const AlignmentDirectional(0.65, 0.44),
                  child: Text(
                    'Inversión de ahorro',
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Inter',
                          color: Colors.black,
                          letterSpacing: 0.0,
                        ),
                  ),
                ),
                Align(
                  alignment: const AlignmentDirectional(-0.46, 0.85),
                  child: Text(
                    'Ayuda',
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Inter',
                          color: Colors.black,
                          letterSpacing: 0.0,
                        ),
                  ),
                ),
                Align(
                  alignment: const AlignmentDirectional(0.47, 0.85),
                  child: Text(
                    'Notificaciones',
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Inter',
                          color: Colors.black,
                          letterSpacing: 0.0,
                        ),
                  ),
                ),
                Align(
                  alignment: const AlignmentDirectional(0.52, 0.28),
                  child: FlutterFlowIconButton(
                    borderRadius: 8.0,
                    buttonSize: 93.0,
                    fillColor: const Color(0xFFFF4848),
                    icon: FaIcon(
                      FontAwesomeIcons.balanceScale,
                      color: FlutterFlowTheme.of(context).info,
                      size: 50.0,
                    ),
                    onPressed: () async {
                      context.pushNamed('crea_meta');
                    },
                  ).animateOnPageLoad(
                      animationsMap['iconButtonOnPageLoadAnimation6']!),
                ),
                Align(
                  alignment: const AlignmentDirectional(0.01, -0.9),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(8.0),
                    child: Image.asset(
                      'assets/images/plus_sign.jpg',
                      width: 103.0,
                      height: 104.0,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Align(
                  alignment: const AlignmentDirectional(0.06, -0.97),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(8.0),
                    child: Image.network(
                      'https://picsum.photos/seed/31/600',
                      width: 168.0,
                      height: 148.0,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
