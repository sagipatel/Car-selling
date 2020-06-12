import 'dart:convert';
import 'dart:async';
import 'package:http/http.dart' as http;
import 'Common.dart';

// import '../Components/Common.dart';
final String baseUrl = 'http://35.183.109.199:3100';
final String apiEndPoint = baseUrl + '/v1';
final String imageBaseurl = baseUrl + '/uploads/';

// http://52.15.182.92:8000/api/
class ResponseData {
  final int statusCode;
  final data;
  final String message;
  ResponseData({this.statusCode, this.data, this.message});
  factory ResponseData.json(body, [isObject = true]) {
    Map<String, dynamic> obj = json.decode(body);
    return ResponseData(
        data: obj['data'],
        statusCode: obj['status_code'],
        message: obj['message']);
  }
}

jsonD(String body) {
  Map<String, dynamic> obj = json.decode(body);
  return obj;
}

arrayD(String string) {
  return json.decode(string);
}

Future<http.Response> postwithjson(url, Map<String, String> data) async {
  var token = await getPrefs('token');
  print('GET TOKENN');
  print(token);
  return http.post(apiEndPoint + url, body: data, headers: {
    "Content-Type": "application/json",
    'accept': 'application/json;',
    'x-access-token': '$token',
    // 'user_id': '3'
  });
}

Future<http.Response> post(url, data) async {
  var token = await getPrefs('token');
  var userId = await getPrefs('userId', 'int');
  print(userId);
  print('GET TOKENN');
  print(token);
  print("DATA OF LOGIN");
  print(data);
  var post = await http.post(apiEndPoint + url, body: data, headers: {
    'accept': 'application/json;',
    'x-access-token': '$token',
    'user_id': '$userId'
  });
  return post;
}

// Future<http.Response> post(url,data) async {
// var token = await getPrefs('token');
// var request = MultipartRequest();
// request.addFields(data);
// request.addHeader('Authorization', "Bearer $token");
// request.setUrl(apiEndPoint + url);
// Response response = request.send();
// print(response);
// return http.Response(url,body:data);

// }

Future<http.Response> get(url, {Map<String, String> headers}) async {
  var token = await getPrefs('token');
  var userId = await getPrefs('userId', 'int');
  print("ITS MY TOKEN");
  print(token);
  print("USERIDD");
  print(userId);
  print("YUPPU");
  http.Response response = await http.get(apiEndPoint + url, headers: {
    'accept': 'application/json',
    'x-access-token': '$token',
    'user_id': '$userId'
  });
  // print(response);
  return response;
}

Future<StreamSubscription<String>> postWithImage(
    url, data, List imagePath) async {
  var token = await getPrefs('token');
  var uri = Uri.parse(apiEndPoint + url);
  http.MultipartRequest request = new http.MultipartRequest('POST', uri);
  request.headers['Content-Type'] = 'multipart/form-data';
  request.headers['x-access-token'] = token;
  request.fields.addAll(data);

  await Future.wait(imagePath.map((s) async {
    request.files.add(await http.MultipartFile.fromPath(
      s['key'],
      s['url'],
    ));
  }));

  http.StreamedResponse response = await request.send();

  return response.stream.transform(utf8.decoder).listen((value) => value);

  // print(response.statusCode);
  // if (response.statusCode == 200) {
  //   print("Image Uploaded");
  // } else {
  //   print("Upload Failed");
  // }
}
