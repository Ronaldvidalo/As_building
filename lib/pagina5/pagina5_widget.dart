import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:provider/provider.dart';
import 'pagina5_model.dart';
export 'pagina5_model.dart';

class Pagina5Widget extends StatefulWidget {
  const Pagina5Widget({
    Key? key,
    this.dertallesdeservicio,
  }) : super(key: key);

  final DocumentReference? dertallesdeservicio;

  @override
  _Pagina5WidgetState createState() => _Pagina5WidgetState();
}

class _Pagina5WidgetState extends State<Pagina5Widget> {
  late Pagina5Model _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  final _unfocusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => Pagina5Model());
  }

  @override
  void dispose() {
    _model.dispose();

    _unfocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return StreamBuilder<MapsUbicacionClienteRecord>(
      stream:
          MapsUbicacionClienteRecord.getDocument(widget.dertallesdeservicio!),
      builder: (context, snapshot) {
        // Customize what your widget looks like when it's loading.
        if (!snapshot.hasData) {
          return Center(
            child: SizedBox(
              width: 50.0,
              height: 50.0,
              child: CircularProgressIndicator(
                color: FlutterFlowTheme.of(context).primary,
              ),
            ),
          );
        }
        final pagina5MapsUbicacionClienteRecord = snapshot.data!;
        return GestureDetector(
          onTap: () => FocusScope.of(context).requestFocus(_unfocusNode),
          child: Scaffold(
            key: scaffoldKey,
            backgroundColor: Color(0xAC303841),
            appBar: AppBar(
              backgroundColor: Color(0xFFFFF200),
              automaticallyImplyLeading: false,
              title: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'ubicacion ',
                    textAlign: TextAlign.center,
                    style: FlutterFlowTheme.of(context).titleMedium.override(
                          fontFamily: 'Poppins',
                          color: FlutterFlowTheme.of(context).black600,
                          fontSize: 22.0,
                          fontWeight: FontWeight.w600,
                        ),
                  ),
                  Text(
                    pagina5MapsUbicacionClienteRecord.adressObra!,
                    textAlign: TextAlign.center,
                    style: FlutterFlowTheme.of(context).titleMedium.override(
                          fontFamily: 'Poppins',
                          color: FlutterFlowTheme.of(context).black600,
                          fontSize: 16.0,
                          fontWeight: FontWeight.w500,
                        ),
                  ),
                ],
              ),
              actions: [],
              centerTitle: true,
              elevation: 2.0,
            ),
            body: SafeArea(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(5.0, 5.0, 5.0, 5.0),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  12.0, 8.0, 12.0, 0.0),
                              child: Container(
                                height: 45.2,
                                decoration: BoxDecoration(
                                  color: Color(0xFFD6E6F2),
                                  shape: BoxShape.rectangle,
                                ),
                                child: Visibility(
                                  visible: pagina5MapsUbicacionClienteRecord
                                          .isOperarioAssingned ??
                                      true,
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            2.0, 2.0, 2.0, 2.0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Expanded(
                                              child: Text(
                                                'Operario  encontrado',
                                                textAlign: TextAlign.center,
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .titleMedium
                                                        .override(
                                                          fontFamily: 'Poppins',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .black600,
                                                        ),
                                              ),
                                            ),
                                            Icon(
                                              Icons
                                                  .check_circle_outline_outlined,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .black600,
                                              size: 30.0,
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  12.0, 8.0, 12.0, 0.0),
                              child: Container(
                                height: 100.0,
                                decoration: BoxDecoration(
                                  color: Color(0xFFD6E6F2),
                                ),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    if (pagina5MapsUbicacionClienteRecord
                                            .isOperarioAssingned ??
                                        true)
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            12.0, 8.0, 12.0, 0.0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Expanded(
                                              child: Align(
                                                alignment: AlignmentDirectional(
                                                    0.7, 0.0),
                                                child: Text(
                                                  'enviar solicitud',
                                                  textAlign: TextAlign.center,
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .titleMedium,
                                                ),
                                              ),
                                            ),
                                            Expanded(
                                              child: Container(
                                                width: 100.0,
                                                height: 100.0,
                                                decoration: BoxDecoration(
                                                  color: Color(0xF0000007),
                                                  shape: BoxShape.circle,
                                                ),
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: [
                                                    Align(
                                                      alignment:
                                                          AlignmentDirectional(
                                                              -0.05, -1.0),
                                                      child: Text(
                                                        '4 operarios',
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Poppins',
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .primaryBtnText,
                                                                ),
                                                      ),
                                                    ),
                                                    Text(
                                                      '2 km',
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Poppins',
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .primaryBtnText,
                                                              ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                  ],
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  12.0, 8.0, 12.0, 0.0),
                              child: Container(
                                height: 100.0,
                                decoration: BoxDecoration(
                                  color: Color(0xFFD6E6F2),
                                ),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Expanded(
                                      child: Container(
                                        width: 100.0,
                                        height: 100.0,
                                        decoration: BoxDecoration(
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryBackground,
                                        ),
                                      ),
                                    ),
                                    if (pagina5MapsUbicacionClienteRecord
                                            .isOperarioAssingned ??
                                        true)
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            2.0, 2.0, 2.0, 2.0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceEvenly,
                                          children: [
                                            Container(
                                              width: 55.0,
                                              height: 55.0,
                                              clipBehavior: Clip.antiAlias,
                                              decoration: BoxDecoration(
                                                shape: BoxShape.circle,
                                              ),
                                              child: Image.network(
                                                'https://picsum.photos/seed/134/600',
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                            Container(
                                              width: 100.0,
                                              height: 100.0,
                                              decoration: BoxDecoration(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryBtnText,
                                                shape: BoxShape.rectangle,
                                              ),
                                              child: Column(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Align(
                                                    alignment:
                                                        AlignmentDirectional(
                                                            -0.05, -1.0),
                                                    child: Text(
                                                      pagina5MapsUbicacionClienteRecord
                                                          .operioName!,
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Poppins',
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .primaryText,
                                                              ),
                                                    ),
                                                  ),
                                                  Text(
                                                    ' Nombre',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Poppins',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primaryText,
                                                        ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  if (!pagina5MapsUbicacionClienteRecord.isOperarioAssingned!)
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(12.0, 8.0, 12.0, 0.0),
                      child: Container(
                        height: 45.2,
                        decoration: BoxDecoration(
                          color: Color(0xFFD6E6F2),
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  2.0, 2.0, 2.0, 2.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Expanded(
                                    child: Text(
                                      'ver perfiles',
                                      textAlign: TextAlign.center,
                                      style: FlutterFlowTheme.of(context)
                                          .displaySmall,
                                    ),
                                  ),
                                  Lottie.asset(
                                    'assets/lottie_animations/lf20_3w1whxz5.json',
                                    width: 50.0,
                                    height: 50.0,
                                    fit: BoxFit.cover,
                                    animate: true,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  if (!pagina5MapsUbicacionClienteRecord.isOperarioAssingned!)
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(12.0, 8.0, 12.0, 0.0),
                      child: Container(
                        height: 45.2,
                        decoration: BoxDecoration(
                          color: Color(0xFFD6E6F2),
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  2.0, 2.0, 2.0, 2.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Expanded(
                                    child: Text(
                                      'aceptar',
                                      textAlign: TextAlign.center,
                                      style: FlutterFlowTheme.of(context)
                                          .displaySmall,
                                    ),
                                  ),
                                  Lottie.asset(
                                    'assets/lottie_animations/lf20_3w1whxz5.json',
                                    width: 50.0,
                                    height: 50.0,
                                    fit: BoxFit.cover,
                                    animate: true,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  if (!pagina5MapsUbicacionClienteRecord.isOperarioAssingned!)
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(12.0, 8.0, 12.0, 0.0),
                      child: Container(
                        height: 45.2,
                        decoration: BoxDecoration(
                          color: Color(0xFFD6E6F2),
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  2.0, 2.0, 2.0, 2.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Expanded(
                                    child: InkWell(
                                      onTap: () async {
                                        context.pushNamed('pagina4_maps');
                                      },
                                      child: Text(
                                        'regresar',
                                        textAlign: TextAlign.center,
                                        style: FlutterFlowTheme.of(context)
                                            .displaySmall,
                                      ),
                                    ),
                                  ),
                                  Lottie.asset(
                                    'assets/lottie_animations/lf20_3w1whxz5.json',
                                    width: 50.0,
                                    height: 50.0,
                                    fit: BoxFit.cover,
                                    animate: true,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
