import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import '/flutter_flow/permissions_util.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:record/record.dart';
import 'home_page_model.dart';
export 'home_page_model.dart';

class HomePageWidget extends StatefulWidget {
  const HomePageWidget({super.key});

  @override
  State<HomePageWidget> createState() => _HomePageWidgetState();
}

class _HomePageWidgetState extends State<HomePageWidget> {
  late HomePageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => HomePageModel());

    _model.textController ??= TextEditingController();
    _model.textFieldFocusNode ??= FocusNode();
    _model.textFieldFocusNode!.addListener(() => safeSetState(() {}));
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
        backgroundColor: FlutterFlowTheme.of(context).secondaryText,
        appBar: AppBar(
          backgroundColor: Color(0xFF5CADBB),
          automaticallyImplyLeading: false,
          title: Align(
            alignment: AlignmentDirectional(0.0, 0.0),
            child: Text(
              'All Wise Bİ',
              style: FlutterFlowTheme.of(context).headlineMedium.override(
                    fontFamily: 'Inter Tight',
                    color: Colors.white,
                    fontSize: 22.0,
                    letterSpacing: 0.0,
                  ),
            ),
          ),
          actions: [],
          centerTitle: false,
          elevation: 2.0,
        ),
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Align(
                alignment: AlignmentDirectional(0.0, 0.0),
                child: Padding(
                  padding:
                      EdgeInsetsDirectional.fromSTEB(10.0, 20.0, 10.0, 0.0),
                  child: Container(
                    width: 380.0,
                    height: 380.0,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).accent4,
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: Color(0xFF5CADBB),
                        width: 4.0,
                      ),
                    ),
                    child: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(
                          24.0, 24.0, 24.0, 24.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            'Ses ile Ara',
                            style: FlutterFlowTheme.of(context)
                                .displaySmall
                                .override(
                                  fontFamily: 'Inter Tight',
                                  color:
                                      FlutterFlowTheme.of(context).primaryText,
                                  letterSpacing: 0.0,
                                ),
                          ),
                          Text(
                            'Tıkla ve konuş!',
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Inter',
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryText,
                                  letterSpacing: 0.0,
                                ),
                          ),
                          Container(
                            width: 80.0,
                            height: 80.0,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(30.0),
                                bottomRight: Radius.circular(30.0),
                                topLeft: Radius.circular(30.0),
                                topRight: Radius.circular(30.0),
                              ),
                            ),
                            child: Builder(
                              builder: (context) {
                                if (_model.isActivity) {
                                  return FlutterFlowIconButton(
                                    borderColor: Colors.transparent,
                                    borderRadius: 30.0,
                                    buttonSize: 40.0,
                                    fillColor:
                                        FlutterFlowTheme.of(context).primary,
                                    icon: Icon(
                                      Icons.stop_sharp,
                                      color: FlutterFlowTheme.of(context).info,
                                      size: 30.0,
                                    ),
                                    onPressed: () async {
                                      await stopAudioRecording(
                                        audioRecorder: _model.audioRecorder,
                                        audioName: 'recordedFileBytes',
                                        onRecordingComplete:
                                            (audioFilePath, audioBytes) {
                                          _model.stopAudioResulttCopy =
                                              audioFilePath;
                                          _model.recordedFileBytes = audioBytes;
                                        },
                                      );

                                      _model.isActivity = false;
                                      safeSetState(() {});
                                      _model.uploadFile = functions.newFunction(
                                          _model.recordedFileBytes);
                                      safeSetState(() {});
                                      _model.newChatVoiceeOutputHomeCopy =
                                          await NewChatIDCall.call();

                                      if ((_model.newChatVoiceeOutputHomeCopy
                                              ?.succeeded ??
                                          true)) {
                                        _model.apiResultVoiceeCopy =
                                            await VoiceQuestionCall.call(
                                          voice: _model.uploadFile,
                                          chatID: getJsonField(
                                            (_model.newChatVoiceeOutputHomeCopy
                                                    ?.jsonBody ??
                                                ''),
                                            r'''$.ChatID''',
                                          ),
                                        );

                                        if ((_model.apiResultVoiceeCopy
                                                ?.succeeded ??
                                            true)) {
                                          context.pushNamed(
                                            'chatID',
                                            queryParameters: {
                                              'chatID': serializeParam(
                                                getJsonField(
                                                  (_model.newChatVoiceeOutputHomeCopy
                                                          ?.jsonBody ??
                                                      ''),
                                                  r'''$.ChatID''',
                                                ),
                                                ParamType.int,
                                              ),
                                            }.withoutNulls,
                                          );
                                        } else {
                                          ScaffoldMessenger.of(context)
                                              .showSnackBar(
                                            SnackBar(
                                              content: Text(
                                                'Hata VoiceQuestion',
                                                style: TextStyle(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primaryText,
                                                ),
                                              ),
                                              duration:
                                                  Duration(milliseconds: 4000),
                                              backgroundColor:
                                                  FlutterFlowTheme.of(context)
                                                      .secondary,
                                            ),
                                          );
                                        }
                                      } else {
                                        ScaffoldMessenger.of(context)
                                            .showSnackBar(
                                          SnackBar(
                                            content: Text(
                                              'NewChat Başarısız',
                                              style: TextStyle(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryText,
                                              ),
                                            ),
                                            duration:
                                                Duration(milliseconds: 4000),
                                            backgroundColor:
                                                FlutterFlowTheme.of(context)
                                                    .secondary,
                                          ),
                                        );
                                      }

                                      safeSetState(() {});
                                    },
                                  );
                                } else {
                                  return Align(
                                    alignment: AlignmentDirectional(0.0, 0.0),
                                    child: FlutterFlowIconButton(
                                      borderColor: Colors.transparent,
                                      borderRadius: 30.0,
                                      buttonSize: double.infinity,
                                      fillColor: Color(0xFF5CADBB),
                                      icon: Icon(
                                        Icons.keyboard_voice_sharp,
                                        color:
                                            FlutterFlowTheme.of(context).info,
                                        size: 30.0,
                                      ),
                                      onPressed: () async {
                                        await requestPermission(
                                            microphonePermission);
                                        if (await getPermissionStatus(
                                            microphonePermission)) {
                                          _model.isActivity = true;
                                          safeSetState(() {});
                                          await startAudioRecording(
                                            context,
                                            audioRecorder:
                                                _model.audioRecorder ??=
                                                    AudioRecorder(),
                                          );
                                        }
                                      },
                                    ),
                                  );
                                }
                              },
                            ),
                          ),
                        ].divide(SizedBox(height: 16.0)),
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Align(
                  alignment: AlignmentDirectional(0.0, 1.0),
                  child: Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(5.0, 0.0, 5.0, 5.0),
                    child: Container(
                      width: double.infinity,
                      height: 80.0,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).alternate,
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(15.0),
                          bottomRight: Radius.circular(15.0),
                          topLeft: Radius.circular(15.0),
                          topRight: Radius.circular(15.0),
                        ),
                      ),
                      alignment: AlignmentDirectional(0.0, 1.0),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            10.0, 0.0, 10.0, 0.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Expanded(
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 5.0, 0.0),
                                child: Container(
                                  width: 200.0,
                                  child: TextFormField(
                                    controller: _model.textController,
                                    focusNode: _model.textFieldFocusNode,
                                    onChanged: (_) => EasyDebounce.debounce(
                                      '_model.textController',
                                      Duration(milliseconds: 2000),
                                      () => safeSetState(() {}),
                                    ),
                                    autofocus: false,
                                    obscureText: false,
                                    decoration: InputDecoration(
                                      isDense: true,
                                      labelStyle: FlutterFlowTheme.of(context)
                                          .labelMedium
                                          .override(
                                            fontFamily: 'Inter',
                                            letterSpacing: 0.0,
                                          ),
                                      hintText: 'TextField',
                                      hintStyle: FlutterFlowTheme.of(context)
                                          .labelMedium
                                          .override(
                                            fontFamily: 'Inter',
                                            letterSpacing: 0.0,
                                          ),
                                      enabledBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: Color(0x00000000),
                                          width: 1.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: Color(0x00000000),
                                          width: 1.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                      ),
                                      errorBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: FlutterFlowTheme.of(context)
                                              .error,
                                          width: 1.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                      ),
                                      focusedErrorBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: FlutterFlowTheme.of(context)
                                              .error,
                                          width: 1.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                      ),
                                      filled: true,
                                      fillColor: FlutterFlowTheme.of(context)
                                          .alternate,
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Inter',
                                          letterSpacing: 0.0,
                                        ),
                                    maxLines: null,
                                    cursorColor: FlutterFlowTheme.of(context)
                                        .primaryText,
                                    validator: _model.textControllerValidator
                                        .asValidator(context),
                                  ),
                                ),
                              ),
                            ),
                            Builder(
                              builder: (context) {
                                if (_model.textController.text == '12') {
                                  return Align(
                                    alignment: AlignmentDirectional(1.0, 0.0),
                                    child: FlutterFlowIconButton(
                                      borderRadius: 8.0,
                                      buttonSize: 50.0,
                                      fillColor: FlutterFlowTheme.of(context)
                                          .secondaryText,
                                      disabledColor: Color(0xFF5C1515),
                                      icon: Icon(
                                        Icons.arrow_upward,
                                        color:
                                            FlutterFlowTheme.of(context).info,
                                        size: 28.0,
                                      ),
                                      onPressed: (_model.textController.text !=
                                                  null &&
                                              _model.textController.text != '')
                                          ? null
                                          : () {
                                              print('IconGrey pressed ...');
                                            },
                                    ),
                                  );
                                } else {
                                  return Align(
                                    alignment: AlignmentDirectional(1.0, 0.0),
                                    child: FlutterFlowIconButton(
                                      borderColor: Colors.transparent,
                                      borderRadius: 8.0,
                                      buttonSize: 50.0,
                                      fillColor: Color(0xFF5CADBB),
                                      icon: Icon(
                                        Icons.arrow_upward,
                                        color:
                                            FlutterFlowTheme.of(context).info,
                                        size: 28.0,
                                      ),
                                      onPressed: () async {
                                        _model.newChatOutputHomee =
                                            await NewChatIDCall.call();

                                        if ((_model.newChatOutputHomee
                                                ?.succeeded ??
                                            true)) {
                                          _model.questionOutputHome =
                                              await QuestionCall.call(
                                            chatID: getJsonField(
                                              (_model.newChatOutputHomee
                                                      ?.jsonBody ??
                                                  ''),
                                              r'''$.ChatID''',
                                            ),
                                            questions:
                                                _model.textController.text,
                                          );

                                          if ((_model.questionOutputHome
                                                  ?.succeeded ??
                                              true)) {
                                            safeSetState(() {
                                              _model.textController?.clear();
                                            });

                                            context.pushNamed(
                                              'chatID',
                                              queryParameters: {
                                                'chatID': serializeParam(
                                                  getJsonField(
                                                    (_model.newChatOutputHomee
                                                            ?.jsonBody ??
                                                        ''),
                                                    r'''$.ChatID''',
                                                  ),
                                                  ParamType.int,
                                                ),
                                              }.withoutNulls,
                                              extra: <String, dynamic>{
                                                kTransitionInfoKey:
                                                    TransitionInfo(
                                                  hasTransition: true,
                                                  transitionType:
                                                      PageTransitionType.fade,
                                                  duration: Duration(
                                                      milliseconds: 100),
                                                ),
                                              },
                                            );
                                          } else {
                                            ScaffoldMessenger.of(context)
                                                .showSnackBar(
                                              SnackBar(
                                                content: Text(
                                                  'Hata',
                                                  style: TextStyle(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primaryText,
                                                  ),
                                                ),
                                                duration: Duration(
                                                    milliseconds: 4000),
                                                backgroundColor:
                                                    FlutterFlowTheme.of(context)
                                                        .secondary,
                                              ),
                                            );
                                          }
                                        } else {
                                          ScaffoldMessenger.of(context)
                                              .showSnackBar(
                                            SnackBar(
                                              content: Text(
                                                'NewChat Başarısız',
                                                style: TextStyle(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primaryText,
                                                ),
                                              ),
                                              duration:
                                                  Duration(milliseconds: 4000),
                                              backgroundColor:
                                                  FlutterFlowTheme.of(context)
                                                      .secondary,
                                            ),
                                          );
                                        }

                                        safeSetState(() {});
                                      },
                                    ),
                                  );
                                }
                              },
                            ),
                            FFButtonWidget(
                              onPressed: (_model.textController.text == null ||
                                      _model.textController.text == '')
                                  ? null
                                  : () {
                                      print('Button pressed ...');
                                    },
                              text: 'Button',
                              options: FFButtonOptions(
                                height: 40.0,
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    16.0, 0.0, 16.0, 0.0),
                                iconPadding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 0.0),
                                color: FlutterFlowTheme.of(context).primary,
                                textStyle: FlutterFlowTheme.of(context)
                                    .titleSmall
                                    .override(
                                      fontFamily: 'Inter Tight',
                                      color: Colors.white,
                                      letterSpacing: 0.0,
                                    ),
                                elevation: 0.0,
                                borderRadius: BorderRadius.circular(8.0),
                                disabledColor:
                                    FlutterFlowTheme.of(context).error,
                              ),
                            ),
                          ],
                        ),
                      ),
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
