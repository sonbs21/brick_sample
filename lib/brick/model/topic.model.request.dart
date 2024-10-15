import 'package:brick_core/core.dart';
import 'package:brick_rest/brick_rest.dart';

class TopicRequestTransformer extends RestRequestTransformer {
  // A production code base would not forward to another operation
  // but for testing this is convenient
  @override
  RestRequest get delete => get;

  @override
  RestRequest get get {
    if (query?.where != null) {
      final level = Where.firstByField('level', query?.where);
      final language = Where.firstByField('language', query?.where);
      if (level?.value != null && language?.value != null) {
        return RestRequest(url: '/scenarios?level=${level!.value}');
      }
    }
    throw Exception('Invalid query');
  }

  // A production code base would not forward to another operation
  // but for testing this is convenient
  @override
  RestRequest get upsert => const RestRequest(url: '/customers');

  const TopicRequestTransformer(super.query, super.instance);
}
