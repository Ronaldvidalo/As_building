import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class FormularioModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  // State field(s) for nombredelatareagf widget.
  TextEditingController? nombredelatareagfController;
  String? Function(BuildContext, String?)? nombredelatareagfControllerValidator;
  // State field(s) for shortBio widget.
  TextEditingController? shortBioController;
  String? Function(BuildContext, String?)? shortBioControllerValidator;
  // State field(s) for ubicacion_servicio widget.
  TextEditingController? ubicacionServicioController;
  String? Function(BuildContext, String?)? ubicacionServicioControllerValidator;
  // State field(s) for TextField widget.
  TextEditingController? textController4;
  String? Function(BuildContext, String?)? textController4Validator;
  // State field(s) for TextField widget.
  TextEditingController? textController5;
  String? Function(BuildContext, String?)? textController5Validator;
  // State field(s) for materiales widget.
  bool? materialesValue;
  // State field(s) for inspeccion widget.
  bool? inspeccionValue;
  // State field(s) for forma_de_pago widget.
  String? formaDePagoValue;
  FormFieldController<String>? formaDePagoValueController;
  // State field(s) for SwitchListTile widget.
  bool? switchListTileValue;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    nombredelatareagfController?.dispose();
    shortBioController?.dispose();
    ubicacionServicioController?.dispose();
    textController4?.dispose();
    textController5?.dispose();
  }

  /// Additional helper methods are added here.

}
