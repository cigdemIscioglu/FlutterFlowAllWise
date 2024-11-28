import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import '/flutter_flow/permissions_util.dart';
import 'home_page2_widget.dart' show HomePage2Widget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:record/record.dart';

class HomePage2Model extends FlutterFlowModel<HomePage2Widget> {
  ///  Local state fields for this page.

  String? audioVoyage;

  ///  State fields for stateful widgets in this page.

  AudioRecorder? audioRecorder;
  String? stopAudioResult;
  FFUploadedFile recordedFileBytes =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  // Stores action output result for [Backend Call - API (VoiceQuestion)] action in Button widget.
  ApiCallResponse? apiResultm3z;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // Stores action output result for [Backend Call - API (NewChatID)] action in IconButton widget.
  ApiCallResponse? newChatOutputHomee;
  // Stores action output result for [Backend Call - API (Question)] action in IconButton widget.
  ApiCallResponse? questionOutputHome;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
