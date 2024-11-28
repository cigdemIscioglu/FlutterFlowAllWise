import 'dart:convert';
import 'dart:typed_data';
import 'package:flutter/foundation.dart';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

class QuestionCall {
  static Future<ApiCallResponse> call({
    int? chatID,
    String? questions = '',
  }) async {
    final ffApiRequestBody = '''
{
  "UDID": "ASD456",
  "ChatID": ${chatID},
  "Text": "${escapeStringForJson(questions)}",
  "Data": [
    {
      "File": "Test",
      "FileExtension": "BMP"
    }
  ]
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Question',
      apiUrl: 'https://api.allwise.live/ALLWISE_DLL.dll/Questions',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'Accept': 'application/json',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static String? text(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.Text''',
      ));
  static List? data(dynamic response) => getJsonField(
        response,
        r'''$.Data''',
        true,
      ) as List?;
}

class QuestionCopyyyCall {
  static Future<ApiCallResponse> call({
    int? chatID,
    String? questions = '',
  }) async {
    final ffApiRequestBody = '''
{
  "UDID": "ASD456",
  "ChatID": ${chatID},
  "Text": "${escapeStringForJson(questions)}",
  "Data": [
    {
      "File": "Test",
      "FileExtension": "BMP"
    }
  ]
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Question Copyyy',
      apiUrl: 'https://api.allwise.live/ALLWISE_DLL.dll/Questions',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'Accept': 'application/json',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static String? text(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.Text''',
      ));
  static List? data(dynamic response) => getJsonField(
        response,
        r'''$.Data''',
        true,
      ) as List?;
}

class QuestionCopyyyCopyCall {
  static Future<ApiCallResponse> call({
    int? chatID,
    String? questions = '',
  }) async {
    final ffApiRequestBody = '''
{
  "UDID": "ASD456",
  "ChatID": ${chatID},
  "Text": "${escapeStringForJson(questions)}",
  "Data": [
    {
      "File": "Test",
      "FileExtension": "BMP"
    }
  ]
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Question Copyyy Copy',
      apiUrl: 'https://api.allwise.live/ALLWISE_DLL.dll/Questions',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'Accept': 'application/json',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static String? text(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.Text''',
      ));
  static List? data(dynamic response) => getJsonField(
        response,
        r'''$.Data''',
        true,
      ) as List?;
}

class QuestionCopyCopyCopyCopyCopyCopyCopyCall {
  static Future<ApiCallResponse> call({
    int? chatID,
    String? questions = '',
  }) async {
    final ffApiRequestBody = '''
{
  "UDID": "ASD456",
  "ChatID": ${chatID},
  "Text": "${escapeStringForJson(questions)}",
  "Data": [
    {
      "File": "Test",
      "FileExtension": "BMP"
    }
  ]
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Question Copy Copy Copy Copy Copy Copy Copy',
      apiUrl: 'https://api.allwise.live/ALLWISE_DLL.dll/Questions',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'Accept': 'application/json',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static String? text(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.Text''',
      ));
  static List? data(dynamic response) => getJsonField(
        response,
        r'''$.Data''',
        true,
      ) as List?;
}

class QuestionCopyCopyCopyCopyCopyCopyCall {
  static Future<ApiCallResponse> call({
    int? chatID,
    String? questions = '',
  }) async {
    final ffApiRequestBody = '''
{
  "UDID": "ASD456",
  "ChatID": ${chatID},
  "Text": "${escapeStringForJson(questions)}",
  "Data": [
    {
      "File": "Test",
      "FileExtension": "BMP"
    }
  ]
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Question Copy Copy Copy Copy Copy Copy',
      apiUrl: 'https://api.allwise.live/ALLWISE_DLL.dll/Questions',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'Accept': 'application/json',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static String? text(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.Text''',
      ));
  static List? data(dynamic response) => getJsonField(
        response,
        r'''$.Data''',
        true,
      ) as List?;
}

class QuestionCopyCopyCopyCopyCopyCall {
  static Future<ApiCallResponse> call({
    int? chatID,
    String? questions = '',
  }) async {
    final ffApiRequestBody = '''
{
  "UDID": "ASD456",
  "ChatID": ${chatID},
  "Text": "${escapeStringForJson(questions)}",
  "Data": [
    {
      "File": "Test",
      "FileExtension": "BMP"
    }
  ]
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Question Copy Copy Copy Copy Copy',
      apiUrl: 'https://api.allwise.live/ALLWISE_DLL.dll/Questions',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'Accept': 'application/json',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static String? text(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.Text''',
      ));
  static List? data(dynamic response) => getJsonField(
        response,
        r'''$.Data''',
        true,
      ) as List?;
}

class QuestionCopyCopyCopyCopyCall {
  static Future<ApiCallResponse> call({
    int? chatID,
    String? questions = '',
  }) async {
    final ffApiRequestBody = '''
{
  "UDID": "ASD456",
  "ChatID": ${chatID},
  "Text": "${escapeStringForJson(questions)}",
  "Data": [
    {
      "File": "Test",
      "FileExtension": "BMP"
    }
  ]
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Question Copy Copy Copy Copy',
      apiUrl: 'https://api.allwise.live/ALLWISE_DLL.dll/Questions',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'Accept': 'application/json',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static String? text(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.Text''',
      ));
  static List? data(dynamic response) => getJsonField(
        response,
        r'''$.Data''',
        true,
      ) as List?;
}

class QuestionCopyCopyCopyCall {
  static Future<ApiCallResponse> call({
    int? chatID,
    String? questions = '',
  }) async {
    final ffApiRequestBody = '''
{
  "UDID": "ASD456",
  "ChatID": ${chatID},
  "Text": "${escapeStringForJson(questions)}",
  "Data": [
    {
      "File": "Test",
      "FileExtension": "BMP"
    }
  ]
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Question Copy Copy Copy',
      apiUrl: 'https://api.allwise.live/ALLWISE_DLL.dll/Questions',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'Accept': 'application/json',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static String? text(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.Text''',
      ));
  static List? data(dynamic response) => getJsonField(
        response,
        r'''$.Data''',
        true,
      ) as List?;
}

class QuestionCopyCopyCall {
  static Future<ApiCallResponse> call({
    int? chatID,
    String? questions = '',
  }) async {
    final ffApiRequestBody = '''
{
  "UDID": "ASD456",
  "ChatID": ${chatID},
  "Text": "${escapeStringForJson(questions)}",
  "Data": [
    {
      "File": "Test",
      "FileExtension": "BMP"
    }
  ]
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Question Copy Copy',
      apiUrl: 'https://api.allwise.live/ALLWISE_DLL.dll/Questions',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'Accept': 'application/json',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static String? text(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.Text''',
      ));
  static List? data(dynamic response) => getJsonField(
        response,
        r'''$.Data''',
        true,
      ) as List?;
}

class QuestionCopyCall {
  static Future<ApiCallResponse> call({
    int? chatID,
    String? questions = '',
  }) async {
    final ffApiRequestBody = '''
{
  "UDID": "ASD456",
  "ChatID": ${chatID},
  "Text": "${escapeStringForJson(questions)}",
  "Data": [
    {
      "File": "Test",
      "FileExtension": "BMP"
    }
  ]
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Question Copy',
      apiUrl: 'https://api.allwise.live/ALLWISE_DLL.dll/Questions',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'Accept': 'application/json',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static String? text(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.Text''',
      ));
  static List? data(dynamic response) => getJsonField(
        response,
        r'''$.Data''',
        true,
      ) as List?;
}

class VoiceQuestionCall {
  static Future<ApiCallResponse> call({
    String? voice = '',
    int? chatID,
  }) async {
    final ffApiRequestBody = '''
{
  "UDID": "ASD456",
  "ChatID": ${chatID},
  "Voice": "${escapeStringForJson(voice)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'VoiceQuestion',
      apiUrl: 'https://api.allwise.live/ALLWISE_DLL.dll/VoiceToText',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class HistoryTitleCall {
  static Future<ApiCallResponse> call() async {
    final ffApiRequestBody = '''
{
  "UDID": "ASD456"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'HistoryTitle',
      apiUrl: 'https://api.allwise.live/ALLWISE_DLL.dll/HistoryTitle',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static List? data(dynamic response) => getJsonField(
        response,
        r'''$.Data''',
        true,
      ) as List?;
  static List<String>? chatID(dynamic response) => (getJsonField(
        response,
        r'''$.Data[:].ChatID''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? question(dynamic response) => (getJsonField(
        response,
        r'''$.Data[:].Question''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
}

class HistoryDetailCall {
  static Future<ApiCallResponse> call({
    int? chatID,
  }) async {
    final ffApiRequestBody = '''
{
  "UDID": "ASD456",
  "ChatID": ${chatID}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'HistoryDetail',
      apiUrl: 'https://api.allwise.live/ALLWISE_DLL.dll/HistoryDetail',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static String? question(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.Data[:].Question''',
      ));
  static String? answer(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.Data[:].Answer''',
      ));
  static List? data(dynamic response) => getJsonField(
        response,
        r'''$.Data''',
        true,
      ) as List?;
}

class NewChatIDCall {
  static Future<ApiCallResponse> call() async {
    final ffApiRequestBody = '''
{
  "UDID": "ASD456"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'NewChatID',
      apiUrl: 'https://api.allwise.live/ALLWISE_DLL.dll/NewChatID',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static int? chatID(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.ChatID''',
      ));
}

class ApiPagingParams {
  int nextPageNumber = 0;
  int numItems = 0;
  dynamic lastResponse;

  ApiPagingParams({
    required this.nextPageNumber,
    required this.numItems,
    required this.lastResponse,
  });

  @override
  String toString() =>
      'PagingParams(nextPageNumber: $nextPageNumber, numItems: $numItems, lastResponse: $lastResponse,)';
}

String _toEncodable(dynamic item) {
  return item;
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("List serialization failed. Returning empty list.");
    }
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("Json serialization failed. Returning empty json.");
    }
    return isList ? '[]' : '{}';
  }
}

String? escapeStringForJson(String? input) {
  if (input == null) {
    return null;
  }
  return input
      .replaceAll('\\', '\\\\')
      .replaceAll('"', '\\"')
      .replaceAll('\n', '\\n')
      .replaceAll('\t', '\\t');
}
