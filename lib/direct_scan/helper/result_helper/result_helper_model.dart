import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_audio_player.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/upload_data.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ResultHelperModel extends FlutterFlowModel {
  ///  Local state fields for this page.

  bool barcodeSuccess = false;

  bool gptSuccess = false;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));

  // Stores action output result for [Backend Call - API (imgBB)] action in Button widget.
  ApiCallResponse? imgBB;
  // Stores action output result for [Backend Call - API (barcodeScanner)] action in Button widget.
  ApiCallResponse? apiResultBarcode;
  // Stores action output result for [Backend Call - API (flowise)] action in Button widget.
  ApiCallResponse? apiResultmxf;
  // Stores action output result for [Backend Call - API (viettelai)] action in Button widget.
  ApiCallResponse? apiResultVoice;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    unfocusNode.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
