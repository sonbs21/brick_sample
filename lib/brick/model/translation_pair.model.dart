import 'package:brick_offline_first_with_rest/brick_offline_first_with_rest.dart';

@ConnectOfflineFirstWithRest()
class TransalationPair extends OfflineFirstWithRestModel {
  final String sentence;
  String? translation;

  TransalationPair({
    required this.sentence,
    this.translation,
  });
}
