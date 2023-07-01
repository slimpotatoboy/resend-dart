library resend;

import 'dart:convert';

import 'package:resend/exception.dart';
import 'package:resend/utils/utils.dart';

/// [Resend] email for Dart.
/// Test Key re_8EpxN4eE_NGTFEd24cYQSNb7HR5Dn5Whk
class Resend {
  static Resend? _instance;
  static Resend get instance {
    _assertInstance();
    return _instance!;
  }

  factory Resend({
    required String apiKey,
  }) {
    _instance = Resend._internal(apiKey);

    return _instance!;
  }

  Resend._internal(this.apiKey);

  final String apiKey;

  static void _assertInstance() {
    assert(
      _instance != null,
      "[Resend] instance needs to be created first.",
    );
  }

  Future sendEmail({
    required String from,
    required List<String> to,
    required String subject,
    List<String>? bcc,
    List<String>? cc,
    List<String>? replyTo,
    String? text,
    String? html,
  }) async {
    _assertInstance();
    try {
      var postBody = jsonEncode({
        "from": from,
        "to": to,
        "subject": subject,
        "bcc": bcc,
        "cc": cc,
        "reply_to": replyTo,
        "text": text,
        "html": html,
      });
      requestUrl(postBody);
    } catch (e) {
      throw ResendException(e.toString());
    }
  }
}
