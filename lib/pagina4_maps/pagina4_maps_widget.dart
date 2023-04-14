import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_google_map.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_place_picker.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/flutter_flow/place.dart';
import 'dart:io';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'pagina4_maps_model.dart';
export 'pagina4_maps_model.dart';

class Pagina4MapsWidget extends StatefulWidget {
  const Pagina4MapsWidget({Key? key}) : super(key: key);

  @override
  _Pagina4MapsWidgetState createState() => _Pagina4MapsWidgetState();
}

class _Pagina4MapsWidgetState extends State<Pagina4MapsWidget> {
  late Pagina4MapsModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  final _unfocusNode = FocusNode();
  LatLng? currentUserLocationValue;

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => Pagina4MapsModel());

    getCurrentUserLocation(defaultLocation: LatLng(0.0, 0.0), cached: true)
        .then((loc) => setState(() => currentUserLocationValue = loc));
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
    if (currentUserLocationValue == null) {
      return Container(
        color: FlutterFlowTheme.of(context).primaryBackground,
        child: Center(
          child: SizedBox(
            width: 50.0,
            height: 50.0,
            child: CircularProgressIndicator(
              color: FlutterFlowTheme.of(context).primary,
            ),
          ),
        ),
      );
    }

    return GestureDetector(
      onTap: () => FocusScope.of(context).requestFocus(_unfocusNode),
      child: Scaffold(
        key: scaffoldKey,
        resizeToAvoidBottomInset: false,
        backgroundColor: Color(0xFF303841),
        appBar: AppBar(
          backgroundColor: Color(0xFFFFF200),
          automaticallyImplyLeading: false,
          leading: FlutterFlowIconButton(
            borderColor: Colors.transparent,
            borderRadius: 30.0,
            borderWidth: 1.0,
            buttonSize: 60.0,
            icon: Icon(
              Icons.arrow_back_rounded,
              color: Colors.white,
              size: 30.0,
            ),
            onPressed: () async {
              context.pop();
            },
          ),
          title: FlutterFlowPlacePicker(
            iOSGoogleMapsApiKey: 'AIzaSyA_lfseDDl2TNLcPHQAEPrjE9b8KjkSTSM',
            androidGoogleMapsApiKey: 'AIzaSyDTq0Lir1wIYBNdXTcEKKfNCHrOa8MNrA4',
            webGoogleMapsApiKey: 'AIzaSyDkADBYmFJ29wXYvrgQ7V7pHj_doW6PQkA',
            onSelect: (place) async {
              setState(() => _model.placePickerValue = place);
            },
            defaultText: 'Select Location',
            icon: Icon(
              Icons.place,
              color: Colors.white,
              size: 16.0,
            ),
            buttonOptions: FFButtonOptions(
              width: 200.0,
              height: 40.0,
              color: Color(0xFF303841),
              textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                    fontFamily: 'Poppins',
                    color: Colors.white,
                  ),
              borderSide: BorderSide(
                color: Colors.transparent,
                width: 1.0,
              ),
              borderRadius: BorderRadius.circular(12.0),
            ),
          ),
          actions: [
            InkWell(
              onTap: () async {
                GoRouter.of(context).prepareAuthEvent();
                await authManager.signOut();
                GoRouter.of(context).clearRedirectLocation();

                context.goNamedAuth('registro', mounted);
              },
              child: Icon(
                Icons.login_outlined,
                color: FlutterFlowTheme.of(context).primaryBtnText,
                size: 40.0,
              ),
            ),
          ],
          centerTitle: true,
          elevation: 2.0,
        ),
        body: SafeArea(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Expanded(
                child: FlutterFlowGoogleMap(
                  controller: _model.googleMapsController,
                  onCameraIdle: (latLng) => _model.googleMapsCenter = latLng,
                  initialLocation: _model.googleMapsCenter ??=
                      currentUserLocationValue!,
                  markerColor: GoogleMarkerColor.violet,
                  mapType: MapType.normal,
                  style: GoogleMapStyle.standard,
                  initialZoom: 14.0,
                  allowInteraction: true,
                  allowZoom: true,
                  showZoomControls: true,
                  showLocation: true,
                  showCompass: false,
                  showMapToolbar: false,
                  showTraffic: false,
                  centerMapOnMarkerTap: true,
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(5.0, 5.0, 5.0, 5.0),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    if (_model.placePickerValue.address != null &&
                        _model.placePickerValue.address != '')
                      Container(
                        height: 100.0,
                        decoration: BoxDecoration(
                          color: Color(0xFF303841),
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  12.0, 16.0, 12.0, 0.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Icon(
                                    Icons.construction_outlined,
                                    color: Color(0xFFF5F5F5),
                                    size: 30.0,
                                  ),
                                  Expanded(
                                    child: Text(
                                      'Operarios activos ',
                                      textAlign: TextAlign.center,
                                      style: FlutterFlowTheme.of(context)
                                          .titleMedium
                                          .override(
                                            fontFamily: 'Poppins',
                                            color: Color(0xFFF5F5F5),
                                          ),
                                    ),
                                  ),
                                  Text(
                                    '6',
                                    style: FlutterFlowTheme.of(context)
                                        .titleMedium
                                        .override(
                                          fontFamily: 'Poppins',
                                          color: Color(0xFFF5F5F5),
                                        ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  12.0, 16.0, 12.0, 0.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Icon(
                                    Icons.festival,
                                    color: Color(0xFFF5F5F5),
                                    size: 30.0,
                                  ),
                                  Expanded(
                                    child: Text(
                                      'empresas activas',
                                      textAlign: TextAlign.center,
                                      style: FlutterFlowTheme.of(context)
                                          .titleMedium
                                          .override(
                                            fontFamily: 'Poppins',
                                            color: Color(0xFFF5F5F5),
                                          ),
                                    ),
                                  ),
                                  Text(
                                    '8',
                                    style: FlutterFlowTheme.of(context)
                                        .titleMedium
                                        .override(
                                          fontFamily: 'Poppins',
                                          color: Color(0xFFF5F5F5),
                                        ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(12.0, 16.0, 12.0, 0.0),
                      child: Container(
                        width: double.infinity,
                        height: 60.0,
                        decoration: BoxDecoration(
                          color: Color(0xFFD6E6F2),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        alignment: AlignmentDirectional(-0.0, 0.0),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              16.0, 12.0, 16.0, 0.0),
                          child: FlutterFlowDropDown<String>(
                            controller: _model.formaDePagoValueController ??=
                                FormFieldController<String>(null),
                            options: [
                              'todos',
                              'empresas',
                              'particular',
                              'seleccionar'
                            ],
                            onChanged: (val) =>
                                setState(() => _model.formaDePagoValue = val),
                            width: double.infinity,
                            height: double.infinity,
                            textStyle: FlutterFlowTheme.of(context).bodyMedium,
                            hintText: 'enviar solicitud a',
                            icon: Icon(
                              Icons.keyboard_arrow_down_rounded,
                              color: FlutterFlowTheme.of(context).secondaryText,
                              size: 15.0,
                            ),
                            fillColor: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                            elevation: 2.0,
                            borderColor:
                                FlutterFlowTheme.of(context).primaryBackground,
                            borderWidth: 2.0,
                            borderRadius: 8.0,
                            margin: EdgeInsetsDirectional.fromSTEB(
                                10.0, 4.0, 12.0, 4.0),
                            hidesUnderline: true,
                            isSearchable: false,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(12.0, 16.0, 12.0, 0.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Expanded(
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  12.0, 16.0, 12.0, 0.0),
                              child: FFButtonWidget(
                                onPressed: () async {
                                  currentUserLocationValue =
                                      await getCurrentUserLocation(
                                          defaultLocation: LatLng(0.0, 0.0));

                                  final mapsUbicacionClienteCreateData =
                                      createMapsUbicacionClienteRecordData(
                                    isOperarioAssingned: false,
                                    userLocation: currentUserLocationValue,
                                    useUid: currentUserUid,
                                    adressObra: _model.placePickerValue.address,
                                    userName: currentUserDisplayName,
                                  );
                                  var mapsUbicacionClienteRecordReference =
                                      MapsUbicacionClienteRecord.collection
                                          .doc();
                                  await mapsUbicacionClienteRecordReference
                                      .set(mapsUbicacionClienteCreateData);
                                  _model.dertallesdeservicio =
                                      MapsUbicacionClienteRecord
                                          .getDocumentFromData(
                                              mapsUbicacionClienteCreateData,
                                              mapsUbicacionClienteRecordReference);

                                  context.pushNamed(
                                    'confirmacion_solicitud',
                                    queryParams: {
                                      'dertallesdeservicio': serializeParam(
                                        _model.dertallesdeservicio!.reference,
                                        ParamType.DocumentReference,
                                      ),
                                    }.withoutNulls,
                                  );

                                  setState(() {});
                                },
                                text: 'siguiente',
                                options: FFButtonOptions(
                                  width: 130.0,
                                  height: 40.0,
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 0.0, 0.0),
                                  iconPadding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 0.0, 0.0),
                                  color: Color(0xF0000007),
                                  textStyle: FlutterFlowTheme.of(context)
                                      .titleSmall
                                      .override(
                                        fontFamily: 'Poppins',
                                        color: Colors.white,
                                      ),
                                  elevation: 2.0,
                                  borderSide: BorderSide(
                                    color: Colors.transparent,
                                    width: 1.0,
                                  ),
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                              ),
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
    );
  }
}
