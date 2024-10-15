import 'package:brick_offline_first_with_rest/brick_offline_first_with_rest.dart';
import 'package:brick_rest/brick_rest.dart';
import 'package:example_brick/brick/model/scenario.model.dart';
import 'package:example_brick/brick/model/topic.model.request.dart';
import 'package:example_brick/brick/model/translation_pair.model.dart';
import 'package:brick_sqlite/brick_sqlite.dart';

@ConnectOfflineFirstWithRest(
  restConfig: RestSerializable(
    requestTransformer: TopicRequestTransformer.new,
  ),
)
class Topic extends OfflineFirstWithRestModel {
  @Sqlite(unique: true)
  final String id;
  final TransalationPair title;
  final TransalationPair description;
  final String color;
  final String imageUrl;
  final String coverImageUrl;
  final String level;
  final String language;
  final List<Scenario> scenario;

  @Rest(fromGenerator: 'DateTime.now()', ignoreTo: true)
  final DateTime updatedAt;

  // @OfflineFirst(where: {'id': "data['pizza_ids']"})
  // @Rest(name: 'pizza_ids')

  Topic({
    required this.id,
    required this.title,
    required this.description,
    required this.color,
    required this.imageUrl,
    required this.level,
    required this.language,
    required this.coverImageUrl,
    required this.scenario,
    required this.updatedAt,
  });
}
