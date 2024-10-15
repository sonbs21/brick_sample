import 'package:brick_offline_first_with_rest/brick_offline_first_with_rest.dart';
import 'package:brick_rest/brick_rest.dart';
import 'package:example_brick/brick/model/topic.model.request.dart';
import 'package:example_brick/brick/model/translation_pair.model.dart';
import 'package:brick_sqlite/brick_sqlite.dart';

@ConnectOfflineFirstWithRest(
  restConfig: RestSerializable(
    requestTransformer: TopicRequestTransformer.new,
  ),
)
class Scenario extends OfflineFirstWithRestModel {
  @Sqlite(unique: true)
  final String id;
  final TransalationPair title;
  final TransalationPair description;
  final String level;
  final String imageUrl;
  final int order;
  final int taskCompleted;

  // @OfflineFirst(where: {'id': "data['pizza_ids']"})
  // @Rest(name: 'pizza_ids')
  // final List<Pizza>? pizzas;

  Scenario({
    required this.id,
    required this.title,
    required this.description,
    required this.level,
    required this.imageUrl,
    required this.order,
    required this.taskCompleted,
  });
}
