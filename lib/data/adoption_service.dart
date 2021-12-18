import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart';
import 'package:petbes/domain/models/adopt_post/adopt_post.dart';

class AdoptionService {
  final apiKey = 'pBUbuguV';
  final _baseUrl = 'https://api.rescuegroups.org/v5/';

  Map<String, String> _getHeaders() {
    final Map<String, String> headers = {
      HttpHeaders.contentTypeHeader: 'application/vnd.api+json',
      HttpHeaders.authorizationHeader: apiKey,
    };
    return headers;
  }

  Future<List<AdoptPost>> getPets(int page) async {
    final response = await _get(
        path: 'public/animals/search/available/haspic/?include[]&page=$page');
    if (response.statusCode == 200) {
      final body = jsonDecode(response.body);
      final pets = (body['data'] as List).map((e) {
        e['imageUrl'] = e['attributes']['pictureThumbnailUrl'];
        e['petName'] = e['attributes']['name'];
        e['petAge'] = e['attributes']['birthDate'];
        e['sex'] = e['attributes']['sex'];
        return AdoptPost.fromJson(e);
      }).toList();
      return pets;
    }
    throw 'Unexpected http status code';
  }

  /// Make a GET call
  Future<Response> _get({required String path}) async {
    final url = '$_baseUrl$path';
    return get(Uri.parse(url), headers: _getHeaders());
  }
}
