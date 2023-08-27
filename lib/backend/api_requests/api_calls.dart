import 'dart:convert';
import 'dart:typed_data';

import '../../flutter_flow/flutter_flow_util.dart';

import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

class AuthenticlRecognizationCall {
  static Future<ApiCallResponse> call({
    String? url = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'authenticlRecognization',
      apiUrl:
          'https://jellyfish-app-uq2na.ondigitalocean.app/?apikey=1234&url=${url}',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      bodyType: BodyType.NONE,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  static dynamic className(dynamic response) => getJsonField(
        response,
        r'''$.class_name''',
      );
  static dynamic confidenceScore(dynamic response) => getJsonField(
        response,
        r'''$.confidence_score''',
      );
}

class ImgBBCall {
  static Future<ApiCallResponse> call({
    FFUploadedFile? image,
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'imgBB',
      apiUrl:
          'https://api.imgbb.com/1/upload?key=e941bf827ee034be3d80c0d350f380be',
      callType: ApiCallType.POST,
      headers: {},
      params: {
        'image': image,
      },
      bodyType: BodyType.MULTIPART,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  static dynamic imageUrl(dynamic response) => getJsonField(
        response,
        r'''$.data.url''',
      );
}

class BarcodeScannerCall {
  static Future<ApiCallResponse> call({
    String? url = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'barcodeScanner',
      apiUrl: 'https://hammerhead-app-qlv3d.ondigitalocean.app/?url=${url}',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      bodyType: BodyType.MULTIPART,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  static dynamic barcode(dynamic response) => getJsonField(
        response,
        r'''$.product.barcode''',
      );
  static dynamic price(dynamic response) => getJsonField(
        response,
        r'''$.product.price''',
      );
  static dynamic publisher(dynamic response) => getJsonField(
        response,
        r'''$.product.publisher''',
      );
  static dynamic title(dynamic response) => getJsonField(
        response,
        r'''$.product.title''',
      );
  static dynamic searchresult(dynamic response) => getJsonField(
        response,
        r'''$.search_result''',
        true,
      );
}

class FlowiseCall {
  static Future<ApiCallResponse> call({
    String? product = '',
  }) {
    final body = '''
{
  "question": "Lam the nao de phan biet ${product}, tra loi theo ngon ngu Tieng Viet"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'flowise',
      apiUrl:
          'https://flowiseai-railway-production-8552.up.railway.app/api/v1/prediction/0efdbd64-069c-4c09-8e9d-649a78bed67a',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: body,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
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

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list);
  } catch (_) {
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar);
  } catch (_) {
    return isList ? '[]' : '{}';
  }
}
