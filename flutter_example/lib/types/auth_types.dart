import 'package:flutter_example/types/base_data_type.dart';

class AuthInfo extends BaseDataType {
  late String accessToken;
  late String refreshToken;
  late int expiredTimespan;

  AuthInfo();

  @override
  AuthInfo fromJson(Map<String, dynamic> json) {
    accessToken = json["accessToken"];
    refreshToken = json["refreshToken"];
    expiredTimespan = json["expiredTimespan"];
    return this;
  }

  @override
  toJSONEncodable() {
    Map<String, dynamic> mapper = <String, dynamic>{};
    mapper['accessToken'] = accessToken;
    mapper['refreshToken'] = refreshToken;
    mapper['expiredTimespan'] = expiredTimespan;
    return mapper;
  }
}
