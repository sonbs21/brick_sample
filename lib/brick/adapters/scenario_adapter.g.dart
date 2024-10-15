// GENERATED CODE DO NOT EDIT
part of '../brick.g.dart';

Future<Scenario> _$ScenarioFromRest(Map<String, dynamic> data,
    {required RestProvider provider,
    OfflineFirstWithRestRepository? repository}) async {
  return Scenario(
      id: data['id'] as String,
      title: await TransalationPairAdapter()
          .fromRest(data['title'], provider: provider, repository: repository),
      description: await TransalationPairAdapter().fromRest(data['description'],
          provider: provider, repository: repository),
      level: data['level'] as String,
      imageUrl: data['image_url'] as String,
      order: data['order'] as int,
      taskCompleted: data['task_completed'] as int);
}

Future<Map<String, dynamic>> _$ScenarioToRest(Scenario instance,
    {required RestProvider provider,
    OfflineFirstWithRestRepository? repository}) async {
  return {
    'id': instance.id,
    'title': await TransalationPairAdapter()
        .toRest(instance.title, provider: provider, repository: repository),
    'description': await TransalationPairAdapter().toRest(instance.description,
        provider: provider, repository: repository),
    'level': instance.level,
    'image_url': instance.imageUrl,
    'order': instance.order,
    'task_completed': instance.taskCompleted
  };
}

Future<Scenario> _$ScenarioFromSqlite(Map<String, dynamic> data,
    {required SqliteProvider provider,
    OfflineFirstWithRestRepository? repository}) async {
  return Scenario(
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
      level: data['level'] as String,
      imageUrl: data['image_url'] as String,
      order: data['order'] as int,
      taskCompleted: data['task_completed'] as int)
    ..primaryKey = data['_brick_id'] as int;
}

Future<Map<String, dynamic>> _$ScenarioToSqlite(Scenario instance,
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
    'level': instance.level,
    'image_url': instance.imageUrl,
    'order': instance.order,
    'task_completed': instance.taskCompleted
  };
}

/// Construct a [Scenario]
class ScenarioAdapter extends OfflineFirstWithRestAdapter<Scenario> {
  ScenarioAdapter();

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
    'level': const RuntimeSqliteColumnDefinition(
      association: false,
      columnName: 'level',
      iterable: false,
      type: String,
    ),
    'imageUrl': const RuntimeSqliteColumnDefinition(
      association: false,
      columnName: 'image_url',
      iterable: false,
      type: String,
    ),
    'order': const RuntimeSqliteColumnDefinition(
      association: false,
      columnName: 'order',
      iterable: false,
      type: int,
    ),
    'taskCompleted': const RuntimeSqliteColumnDefinition(
      association: false,
      columnName: 'task_completed',
      iterable: false,
      type: int,
    )
  };
  @override
  Future<int?> primaryKeyByUniqueColumns(
      Scenario instance, DatabaseExecutor executor) async {
    final results = await executor.rawQuery('''
        SELECT * FROM `Scenario` WHERE id = ? LIMIT 1''', [instance.id]);

    // SQFlite returns [{}] when no results are found
    if (results.isEmpty || (results.length == 1 && results.first.isEmpty)) {
      return null;
    }

    return results.first['_brick_id'] as int;
  }

  @override
  final String tableName = 'Scenario';

  @override
  Future<Scenario> fromRest(Map<String, dynamic> input,
          {required provider,
          covariant OfflineFirstWithRestRepository? repository}) async =>
      await _$ScenarioFromRest(input,
          provider: provider, repository: repository);
  @override
  Future<Map<String, dynamic>> toRest(Scenario input,
          {required provider,
          covariant OfflineFirstWithRestRepository? repository}) async =>
      await _$ScenarioToRest(input, provider: provider, repository: repository);
  @override
  Future<Scenario> fromSqlite(Map<String, dynamic> input,
          {required provider,
          covariant OfflineFirstWithRestRepository? repository}) async =>
      await _$ScenarioFromSqlite(input,
          provider: provider, repository: repository);
  @override
  Future<Map<String, dynamic>> toSqlite(Scenario input,
          {required provider,
          covariant OfflineFirstWithRestRepository? repository}) async =>
      await _$ScenarioToSqlite(input,
          provider: provider, repository: repository);
}
