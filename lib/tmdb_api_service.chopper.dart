// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tmdb_api_service.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

// ignore_for_file: always_put_control_body_on_new_line, always_specify_types, prefer_const_declarations, unnecessary_brace_in_string_interps
class _$TmdbApi extends TmdbApi {
  _$TmdbApi([ChopperClient? client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final definitionType = TmdbApi;

  @override
  Future<Response<dynamic>> getPopularMovies(String key) {
    final Uri $url = Uri.parse('/3/movie/popular');
    final Map<String, dynamic> $params = <String, dynamic>{'api_key': key};
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client.send<dynamic, dynamic>($request);
  }
}
