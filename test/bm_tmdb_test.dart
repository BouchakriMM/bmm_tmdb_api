import 'package:bm_tmdb/tmdb_api_service.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('adds one to input values', () async {
    await TmdbApi.create()
        .getPopularMovies("a018e345cfe1e96dcb757a85767545eb")
        .then((value) => print(value.body));
  }, onPlatform: {
    // This test is especially slow on Windows.
    'windows': Timeout.factor(2),
    'browser': [
      Skip('add browser support'),
      // This will be slow on browsers once it works on them.
      Timeout.factor(2)
    ]
  });
}
