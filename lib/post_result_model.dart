import 'dart:convert';
import 'package:http/http.dart' as http;

class PostResult {
  String name;
  String job;
  String id;
  String created;

  PostResult({this.id, this.name, this.job, this.created});

  factory PostResult.createPostResult(Map<String, dynamic> object) {
    return PostResult(
        id: object[
            'id'], //ambil data dari object JSON dengan key 'id' ke variabel id PostResult
        name: object[
            'name'], //ambil data dari object JSON dengan key 'name' ke variabel name PostResult
        job: object[
            'job'], //ambil data dari object JSON dengan key 'job' ke variabel job PostResult
        created: object[
            'createdAt'] //ambil data dari object JSON dengan key 'createdAt' ke variabel created PostResult
        );
  }

  static Future<PostResult> connectAPI(String name, String job) async {
    //connectAPI itu cuman nama fungsi/methodnya
    String apiUrl = "https://reqres.in/api/users";
    var apiResult = await http.post(apiUrl, body: {"name": name, "job": job});
    //print('body: [${apiResult.body}]');
    var jsonObject = json.decode(apiResult.body);

    return PostResult.createPostResult(jsonObject);
  }
}
