import 'package:http/http.dart' as http;
import 'package:resend/resend.dart';

Future requestUrl(String postBody) async {
  Uri url = Uri.parse("https://api.resend.com");
  final response = await http.post(
    url,
    headers: {
      "Accept": "application/json",
      "Content-Type": "application/json",
      "Authorization": "Bearer ${Resend.instance.apiKey}",
    },
    body: postBody,
  );

  if (response.statusCode == 200) {
    return true;
  } else {
    return false;
  }
}
