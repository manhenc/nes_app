import 'package:flutter_app/api_key/youtube_key.dart';
import 'package:flutter_app/models/channel_info.dart';

class Services {
  static const CHANNEL_ID = 'UCdHiW5HhIjTOb173gyiFz-w';
  static const _baseUrl = 'www.googleapis.com';

  static Future<ChannelInfo> getChannelInfo() async {
    Map<String, String> parameters = {
      'part': 'snippet,contentDetails,statistics',
      'id': CHANNEL_ID,
      'key': Constants.KEY,
    };
    Map<String, String> headers = {
      HttpHeaders.contentTypeHeader: 'application/json',
    };
  }
}
