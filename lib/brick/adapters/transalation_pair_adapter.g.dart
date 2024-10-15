// GENERATED CODE DO NOT EDIT
part of '../brick.g.dart';

Future<TransalationPair> _$TransalationPairFromRest(Map<String, dynamic> data,
    {required RestProvider provider,
    OfflineFirstWithRestRepository? repository}) async {
  return TransalationPair(
      sentence: data['sentence'] as String,
      translation: data['translation'] as String?);
}

Future<Map<String, dynamic>> _$TransalationPairToRest(TransalationPair instance,
    {required RestProvider provider,
    OfflineFirstWithRestRepository? repository}) async {
  return {'sentence': instance.sentence, 'translation': instance.translation};
}

Future<TransalationPair> _$TransalationPairFromSqlite(Map<String, dynamic> data,
    {required SqliteProvider provider,
    OfflineFirstWithRestRepository? repository}) async {
  return TransalationPair(
      sentence: data['sentence'] as String,
      translation:
          data['translation'] == null ? null : data['translation'] as String?)
    ..primaryKey = data['_brick_id'] as int;
}

Future<Map<String, dynamic>> _$TransalationPairToSqlite(
    TransalationPair instance,
    {required SqliteProvider provider,
    OfflineFirstWithRestRepository? repository}) async {
  return {'sentence': instance.sentence, 'translation': instance.translation};
}

/// Construct a [TransalationPair]
class TransalationPairAdapter
    extends OfflineFirstWithRestAdapter<TransalationPair> {
  TransalationPairAdapter();

  @override
  final Map<String, RuntimeSqliteColumnDefinition> fieldsToSqliteColumns = {
    'primaryKey': const RuntimeSqliteColumnDefinition(
      association: false,
      columnName: '_brick_id',
      iterable: false,
      type: int,
    ),
    'sentence': const RuntimeSqliteColumnDefinition(
      association: false,
      columnName: 'sentence',
      iterable: false,
      type: String,
    ),
    'translation': const RuntimeSqliteColumnDefinition(
      association: false,
      columnName: 'translation',
      iterable: false,
      type: String,
    )
  };
  @override
  Future<int?> primaryKeyByUniqueColumns(
          TransalationPair instance, DatabaseExecutor executor) async =>
      instance.primaryKey;
  @override
  final String tableName = 'TransalationPair';

  @override
  Future<TransalationPair> fromRest(Map<String, dynamic> input,
          {required provider,
          covariant OfflineFirstWithRestRepository? repository}) async =>
      await _$TransalationPairFromRest(input,
          provider: provider, repository: repository);
  @override
  Future<Map<String, dynamic>> toRest(TransalationPair input,
          {required provider,
          covariant OfflineFirstWithRestRepository? repository}) async =>
      await _$TransalationPairToRest(input,
          provider: provider, repository: repository);
  @override
  Future<TransalationPair> fromSqlite(Map<String, dynamic> input,
          {required provider,
          covariant OfflineFirstWithRestRepository? repository}) async =>
      await _$TransalationPairFromSqlite(input,
          provider: provider, repository: repository);
  @override
  Future<Map<String, dynamic>> toSqlite(TransalationPair input,
          {required provider,
          covariant OfflineFirstWithRestRepository? repository}) async =>
      await _$TransalationPairToSqlite(input,
          provider: provider, repository: repository);
}
