import 'package:chopper/chopper.dart';

part 'tmdb_api_service.chopper.dart';

@ChopperApi(baseUrl: '/3')
abstract class TmdbApi extends ChopperService {
  @Get(path: '/movie/popular')
  Future<Response> getPopularMovies(@Query('api_key') String key);

  static TmdbApi create() {
    final client = ChopperClient(
        baseUrl: Uri.parse("https://api.themoviedb.org"),
        services: [_$TmdbApi()],
        converter: const JsonConverter());
    return _$TmdbApi(client);
  }
}
