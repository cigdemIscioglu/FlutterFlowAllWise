import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import '/flutter_flow/permissions_util.dart';
import 'home_page_widget.dart' show HomePageWidget;
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:record/record.dart';

class HomePageModel extends FlutterFlowModel<HomePageWidget> {
  ///  Local state fields for this page.

  String? audioVoyageX;

  String? uploadFile;

  bool isActivity = false;

  ///  State fields for stateful widgets in this page.

  String? stopAudioResulttCopy;
  FFUploadedFile recordedFileBytes =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  // Stores action output result for [Backend Call - API (NewChatID)] action in IconStop widget.
  ApiCallResponse? newChatVoiceeOutputHomeCopy;
  // Stores action output result for [Backend Call - API (VoiceQuestion)] action in IconStop widget.
  ApiCallResponse? apiResultVoiceeCopy;
  AudioRecorder? audioRecorder;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // Stores action output result for [Backend Call - API (NewChatID)] action in IconBlue widget.
  ApiCallResponse? newChatOutputHomee;
  // Stores action output result for [Backend Call - API (Question)] action in IconBlue widget.
  ApiCallResponse? questionOutputHome;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
