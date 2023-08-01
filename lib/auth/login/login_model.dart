import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class LoginModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for nameCreate widget.
  TextEditingController? nameCreateController;
  String? Function(BuildContext, String?)? nameCreateControllerValidator;
  // State field(s) for emailCreate widget.
  TextEditingController? emailCreateController;
  String? Function(BuildContext, String?)? emailCreateControllerValidator;
  // State field(s) for passwordCreate widget.
  TextEditingController? passwordCreateController;
  String? Function(BuildContext, String?)? passwordCreateControllerValidator;
  // State field(s) for passwordConf widget.
  TextEditingController? passwordConfController;
  String? Function(BuildContext, String?)? passwordConfControllerValidator;
  // State field(s) for emailAddress widget.
  TextEditingController? emailAddressController;
  String? Function(BuildContext, String?)? emailAddressControllerValidator;
  // State field(s) for password widget.
  TextEditingController? passwordController;
  late bool passwordVisibility;
  String? Function(BuildContext, String?)? passwordControllerValidator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    passwordVisibility = false;
  }

  void dispose() {
    unfocusNode.dispose();
    nameCreateController?.dispose();
    emailCreateController?.dispose();
    passwordCreateController?.dispose();
    passwordConfController?.dispose();
    emailAddressController?.dispose();
    passwordController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
