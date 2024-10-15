import 'package:brick_offline_first_with_rest/brick_offline_first_with_rest.dart';
import 'package:brick_rest/brick_rest.dart';
import 'package:brick_sqlite/brick_sqlite.dart';
import 'package:brick_sqlite/memory_cache_provider.dart';
import 'package:example_brick/brick/brick.g.dart';
import 'package:example_brick/brick/db/schema.g.dart';
import 'package:example_brick/brick/model/scenario.model.dart';
import 'package:example_brick/brick/model/topic.model.dart';
import 'package:example_brick/brick/model/translation_pair.model.dart';
import 'package:example_brick/brick/model/user.model.dart';
import 'package:sqflite/sqflite.dart' show databaseFactory;

final Map<Type, RestAdapter<RestModel>> restMappings = {
  Scenario: ScenarioAdapter(),
  Topic: TopicAdapter(),
  TransalationPair: TransalationPairAdapter(),
  User: UserAdapter()
};
final restModelDictionary = RestModelDictionary(restMappings);

/// Sqlite mappings should only be used when initializing a [SqliteProvider]
final Map<Type, SqliteAdapter<SqliteModel>> sqliteMappings = {
  Scenario: ScenarioAdapter(),
  Topic: TopicAdapter(),
  TransalationPair: TransalationPairAdapter(),
  User: UserAdapter()
};
final sqliteModelDictionary = SqliteModelDictionary(sqliteMappings);

class BrickRest extends OfflineFirstWithRestRepository {
  factory BrickRest() => _singleton!;

  BrickRest._(String endpoint)
      : super(
          // autoHydrate: true,

          restProvider: RestProvider(
            endpoint,
            modelDictionary: restModelDictionary,
          ),
          sqliteProvider: SqliteProvider(
            'cory.sqlite',
            databaseFactory: databaseFactory,
            modelDictionary: sqliteModelDictionary,
          ),
          offlineQueueManager: RestRequestSqliteCacheManager(
            'brick_offline_queue.sqlite',
            databaseFactory: databaseFactory,
          ),
          // as both models store each other as associations, we should
          // cache neither
          memoryCacheProvider: MemoryCacheProvider(),
          migrations: migrations,
        );

  static BrickRest? _singleton;

  static void configure(String endpoint) {
    _singleton = BrickRest._(endpoint);
  }
}
