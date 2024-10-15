// GENERATED CODE DO NOT EDIT
part of '../brick.g.dart';

Future<User> _$UserFromRest(Map<String, dynamic> data,
    {required RestProvider provider,
    OfflineFirstWithRestRepository? repository}) async {
  return User(
      id: data['id'] as String,
      isVip: data['is_vip'] as bool,
      heart: data['heart'] as int,
      heartRecoveryTime: data['heart_recovery_time'] == null
          ? null
          : DateTime.tryParse(data['heart_recovery_time'] as String));
}

Future<Map<String, dynamic>> _$UserToRest(User instance,
    {required RestProvider provider,
    OfflineFirstWithRestRepository? repository}) async {
  return {
    'id': instance.id,
    'is_vip': instance.isVip,
    'heart': instance.heart,
    'heart_recovery_time': instance.heartRecoveryTime?.toIso8601String()
  };
}

Future<User> _$UserFromSqlite(Map<String, dynamic> data,
    {required SqliteProvider provider,
    OfflineFirstWithRestRepository? repository}) async {
  return User(
      id: data['id'] as String,
      isVip: data['is_vip'] == 1,
      heart: data['heart'] as int,
      heartRecoveryTime: data['heart_recovery_time'] == null
          ? null
          : data['heart_recovery_time'] == null
              ? null
              : DateTime.tryParse(data['heart_recovery_time'] as String))
    ..primaryKey = data['_brick_id'] as int;
}

Future<Map<String, dynamic>> _$UserToSqlite(User instance,
    {required SqliteProvider provider,
    OfflineFirstWithRestRepository? repository}) async {
  return {
    'id': instance.id,
    'is_vip': instance.isVip ? 1 : 0,
    'heart': instance.heart,
    'heart_recovery_time': instance.heartRecoveryTime?.toIso8601String()
  };
}

/// Construct a [User]
class UserAdapter extends OfflineFirstWithRestAdapter<User> {
  UserAdapter();

  @override
  final restRequest = UserRequestTransformer.new;
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
    'isVip': const RuntimeSqliteColumnDefinition(
      association: false,
      columnName: 'is_vip',
      iterable: false,
      type: bool,
    ),
    'heart': const RuntimeSqliteColumnDefinition(
      association: false,
      columnName: 'heart',
      iterable: false,
      type: int,
    ),
    'heartRecoveryTime': const RuntimeSqliteColumnDefinition(
      association: false,
      columnName: 'heart_recovery_time',
      iterable: false,
      type: DateTime,
    )
  };
  @override
  Future<int?> primaryKeyByUniqueColumns(
      User instance, DatabaseExecutor executor) async {
    final results = await executor.rawQuery('''
        SELECT * FROM `User` WHERE id = ? LIMIT 1''', [instance.id]);

    // SQFlite returns [{}] when no results are found
    if (results.isEmpty || (results.length == 1 && results.first.isEmpty)) {
      return null;
    }

    return results.first['_brick_id'] as int;
  }

  @override
  final String tableName = 'User';

  @override
  Future<User> fromRest(Map<String, dynamic> input,
          {required provider,
          covariant OfflineFirstWithRestRepository? repository}) async =>
      await _$UserFromRest(input, provider: provider, repository: repository);
  @override
  Future<Map<String, dynamic>> toRest(User input,
          {required provider,
          covariant OfflineFirstWithRestRepository? repository}) async =>
      await _$UserToRest(input, provider: provider, repository: repository);
  @override
  Future<User> fromSqlite(Map<String, dynamic> input,
          {required provider,
          covariant OfflineFirstWithRestRepository? repository}) async =>
      await _$UserFromSqlite(input, provider: provider, repository: repository);
  @override
  Future<Map<String, dynamic>> toSqlite(User input,
          {required provider,
          covariant OfflineFirstWithRestRepository? repository}) async =>
      await _$UserToSqlite(input, provider: provider, repository: repository);
}
