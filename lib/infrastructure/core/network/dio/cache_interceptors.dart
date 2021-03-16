import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter_cache_manager/flutter_cache_manager.dart';

class CacheInterceptors extends InterceptorsWrapper {
  final _cacheManager = DefaultCacheManager();

  @override
  Future onRequest(RequestOptions options) async {
    if (options.method == "GET" && options.responseType == ResponseType.json) {
      final cacheObject = await _cacheManager.store.retrieveCacheData(options.uri.toString());
      if (cacheObject != null) {
        options.headers["If-None-Match"] = cacheObject.eTag;
      }
    }
    return options;
  }

  @override
  Future onResponse(Response response) async {
    if (response.request.responseType == ResponseType.json) {
      // 304 means response not modified.
      if (response.statusCode == 304) {
        final cacheInfo = await _cacheManager.getFileFromCache(response.request.uri.toString());
        final byteData = await cacheInfo.file.readAsBytes();
        final jsonString = utf8.decode(byteData);
        final data = jsonDecode(jsonString);
        final cacheResponse = Response(
          data: data,
          request: response.request,
          statusCode: 200,
          statusMessage: response.statusMessage,
          extra: response.extra,
        );
        return cacheResponse;
      } else {
        final json = jsonEncode(response.data);
        await _cacheManager.putFile(
          response.request.uri.toString(),
          utf8.encoder.convert(json),
          eTag: response.headers.value("Etag"),
        );
        return super.onResponse(response);
      }
    } else {
      return super.onResponse(response);
    }
  }
}
