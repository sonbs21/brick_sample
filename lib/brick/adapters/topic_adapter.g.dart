// GENERATED CODE DO NOT EDIT
part of '../brick.g.dart';

Future<Topic> _$TopicFromRest(Map<String, dynamic> data,
    {required RestProvider provider,
    OfflineFirstWithRestRepository? repository}) async {
  return Topic(
      id: data['id'] as String,
      title: await TransalationPairAdapter()
          .fromRest(data['title'], provider: provider, repository: repository),
      description: await TransalationPairAdapter().fromRest(data['description'],
          provider: provider, repository: repository),
      color: data['color'] as String,
      imageUrl: data['image_url'] as String,
      coverImageUrl: data['cover_image_url'] as String,
      level: data['level'] as String,
      language: data['language'] as String,
      scenario: await Future.wait<Scenario>(data['scenario']
              ?.map((d) => ScenarioAdapter()
                  .fromRest(d, provider: provider, repository: repository))
              .toList()
              .cast<Future<Scenario>>() ??
          []),
      updatedAt: DateTime.now());
}

Future<Map<String, dynamic>> _$TopicToRest(Topic instance,
    {required RestProvider provider,
    OfflineFirstWithRestRepository? repository}) async {
  return {
    'id': instance.id,
    'title': await TransalationPairAdapter()
        .toRest(instance.title, provider: provider, repository: repository),
    'description': await TransalationPairAdapter().toRest(instance.description,
        provider: provider, repository: repository),
    'color': instance.color,
    'image_url': instance.imageUrl,
    'cover_image_url': instance.coverImageUrl,
    'level': instance.level,
    'language': instance.language,
    'scenario': await Future.wait<Map<String, dynamic>>(instance.scenario
        .map((s) => ScenarioAdapter()
            .toRest(s, provider: provider, repository: repository))
        .toList())
  };
}

Future<Topic> _$TopicFromSqlite(Map<String, dynamic> data,
    {required SqliteProvider provider,
    OfflineFirstWithRestRepository? repository}) async {
  return Topic(
      id: data['id'] as String,
      title: (await repository!.getAssociation<TransalationPair>(
        Query.where(
            'primaryKey', data['title_TransalationPair_brick_id'] as int,
            limit1: true),
      ))!
          .first,
      description: (await repository.getAssociation<TransalationPair>(
        Query.where(
            'primaryKey', data['description_TransalationPair_brick_id'] as int,
            limit1: true),
      ))!
          .first,
      color: data['color'] as String,
      imageUrl: data['image_url'] as String,
      coverImageUrl: data['cover_image_url'] as String,
      level: data['level'] as String,
      language: data['language'] as String,
      scenario: (await provider.rawQuery(
              'SELECT DISTINCT `f_Scenario_brick_id` FROM `_brick_Topic_scenario` WHERE l_Topic_brick_id = ?',
              [data['_brick_id'] as int]).then((results) {
        final ids = results.map((r) => r['f_Scenario_brick_id']);
        return Future.wait<Scenario>(ids.map((primaryKey) => repository
            .getAssociation<Scenario>(
              Query.where('primaryKey', primaryKey, limit1: true),
            )
            .then((r) => r!.first)));
      }))
          .toList()
          .cast<Scenario>(),
      updatedAt: DateTime.parse(data['updated_at'] as String))
    ..primaryKey = data['_brick_id'] as int;
}

Future<Map<String, dynamic>> _$TopicToSqlite(Topic instance,
    {required SqliteProvider provider,
    OfflineFirstWithRestRepository? repository}) async {
  return {
    'id': instance.id,
    'title_TransalationPair_brick_id': instance.title.primaryKey ??
        await provider.upsert<TransalationPair>(instance.title,
            repository: repository),
    'description_TransalationPair_brick_id': instance.description.primaryKey ??
        await provider.upsert<TransalationPair>(instance.description,
            repository: repository),
    'color': instance.color,
    'image_url': instance.imageUrl,
    'cover_image_url': instance.coverImageUrl,
    'level': instance.level,
    'language': instance.language,
    'updated_at': instance.updatedAt.toIso8601String()
  };
}

/// Construct a [Topic]
class TopicAdapter extends OfflineFirstWithRestAdapter<Topic> {
  TopicAdapter();

  @override
  final restRequest = TopicRequestTransformer.new;
  @override
  final Map<String, RuntimeSqliteColumnDefinition> fieldsToSqliteColumns = {
    'primaryKey': const RuntimeSqliteColumnDefinition(
      association: false,
      columnName: '_brick_id',
      iterable: false,
      type: int,
    ),
    'id': const RuntimeSqliteColumnDefinition(
      association: false,
      columnName: 'id',
      iterable: false,
      type: String,
    ),
    'title': const RuntimeSqliteColumnDefinition(
      association: true,
      columnName: 'title_TransalationPair_brick_id',
      iterable: false,
      type: TransalationPair,
    ),
    'description': const RuntimeSqliteColumnDefinition(
      association: true,
      columnName: 'description_TransalationPair_brick_id',
      iterable: false,
      type: TransalationPair,
    ),
    'color': const RuntimeSqliteColumnDefinition(
      association: false,
      columnName: 'color',
      iterable: false,
      type: String,
    ),
    'imageUrl': const RuntimeSqliteColumnDefinition(
      association: false,
      columnName: 'image_url',
      iterable: false,
      type: String,
    ),
    'coverImageUrl': const RuntimeSqliteColumnDefinition(
      association: false,
      columnName: 'cover_image_url',
      iterable: false,
      type: String,
    ),
    'level': const RuntimeSqliteColumnDefinition(
      association: false,
      columnName: 'level',
      iterable: false,
      type: String,
    ),
    'language': const RuntimeSqliteColumnDefinition(
      association: false,
      columnName: 'language',
      iterable: false,
      type: String,
    ),
    'scenario': const RuntimeSqliteColumnDefinition(
      association: true,
      columnName: 'scenario',
      iterable: true,
      type: Scenario,
    ),
    'updatedAt': const RuntimeSqliteColumnDefinition(
      association: false,
      columnName: 'updated_at',
      iterable: false,
      type: DateTime,
    )
  };
  @override
  Future<int?> primaryKeyByUniqueColumns(
      Topic instance, DatabaseExecutor executor) async {
    final results = await executor.rawQuery('''
        SELECT * FROM `Topic` WHERE id = ? LIMIT 1''', [instance.id]);

    // SQFlite returns [{}] when no results are found
    if (results.isEmpty || (results.length == 1 && results.first.isEmpty)) {
      return null;
    }

    return results.first['_brick_id'] as int;
  }

  @override
  final String tableName = 'Topic';
  @override
  Future<void> afterSave(instance, {required provider, repository}) async {
    if (instance.primaryKey != null) {
      final scenarioOldColumns = await provider.rawQuery(
          'SELECT `f_Scenario_brick_id` FROM `_brick_Topic_scenario` WHERE `l_Topic_brick_id` = ?',
          [instance.primaryKey]);
      final scenarioOldIds =
          scenarioOldColumns.map((a) => a['f_Scenario_brick_id']);
      final scenarioNewIds =
          instance.scenario.map((s) => s.primaryKey).whereType<int>();
      final scenarioIdsToDelete =
          scenarioOldIds.where((id) => !scenarioNewIds.contains(id));

      await Future.wait<void>(scenarioIdsToDelete.map((id) async {
        return await provider.rawExecute(
            'DELETE FROM `_brick_Topic_scenario` WHERE `l_Topic_brick_id` = ? AND `f_Scenario_brick_id` = ?',
            [instance.primaryKey, id]).catchError((e) => null);
      }));

      await Future.wait<int?>(instance.scenario.map((s) async {
        final id = s.primaryKey ??
            await provider.upsert<Scenario>(s, repository: repository);
        return await provider.rawInsert(
            'INSERT OR IGNORE INTO `_brick_Topic_scenario` (`l_Topic_brick_id`, `f_Scenario_brick_id`) VALUES (?, ?)',
            [instance.primaryKey, id]);
      }));
    }
  }

  @override
  Future<Topic> fromRest(Map<String, dynamic> input,
          {required provider,
          covariant OfflineFirstWithRestRepository? repository}) async =>
      await _$TopicFromRest(input, provider: provider, repository: repository);
  @override
  Future<Map<String, dynamic>> toRest(Topic input,
          {required provider,
          covariant OfflineFirstWithRestRepository? repository}) async =>
      await _$TopicToRest(input, provider: provider, repository: repository);
  @override
  Future<Topic> fromSqlite(Map<String, dynamic> input,
          {required provider,
          covariant OfflineFirstWithRestRepository? repository}) async =>
      await _$TopicFromSqlite(input,
          provider: provider, repository: repository);
  @override
  Future<Map<String, dynamic>> toSqlite(Topic input,
          {required provider,
          covariant OfflineFirstWithRestRepository? repository}) async =>
      await _$TopicToSqlite(input, provider: provider, repository: repository);
}
