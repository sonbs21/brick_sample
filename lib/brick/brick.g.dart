// ignore: unused_import, unused_shown_name, unnecessary_import
import 'package:brick_core/query.dart';
// ignore: unused_import, unused_shown_name, unnecessary_import
import 'package:brick_sqlite/db.dart';
// ignore: unused_import, unused_shown_name, unnecessary_import
import 'package:brick_offline_first_with_rest/brick_offline_first_with_rest.dart';
// ignore: unused_import, unused_shown_name, unnecessary_import
import 'package:brick_rest/brick_rest.dart';
// ignore: unused_import, unused_shown_name, unnecessary_import
import 'package:example_brick/brick/model/topic.model.request.dart';
// ignore: unused_import, unused_shown_name, unnecessary_import
import 'package:example_brick/brick/model/translation_pair.model.dart';
// ignore: unused_import, unused_shown_name, unnecessary_import
import 'package:brick_sqlite/brick_sqlite.dart';
// ignore: unused_import, unused_shown_name, unnecessary_import
import 'package:example_brick/brick/model/scenario.model.dart';
// ignore: unused_import, unused_shown_name, unnecessary_import
import 'package:example_brick/brick/model/user.model.request.dart';
// ignore: unused_import, unused_shown_name, unnecessary_import
import 'package:brick_offline_first_with_supabase/brick_offline_first_with_supabase.dart';
// ignore: unused_import, unused_shown_name, unnecessary_import
import 'package:brick_supabase/brick_supabase.dart';// GENERATED CODE DO NOT EDIT
// ignore: unused_import
import 'dart:convert';
import 'package:brick_sqlite/brick_sqlite.dart' show SqliteModel, SqliteAdapter, SqliteModelDictionary, RuntimeSqliteColumnDefinition, SqliteProvider;
import 'package:brick_rest/brick_rest.dart' show RestProvider, RestModel, RestAdapter, RestModelDictionary;
// ignore: unused_import, unused_shown_name
import 'package:brick_offline_first/brick_offline_first.dart' show RuntimeOfflineFirstDefinition;
// ignore: unused_import, unused_shown_name
import 'package:sqflite_common/sqlite_api.dart' show DatabaseExecutor;

import '../brick/model/scenario.model.dart';
import '../brick/model/topic.model.dart';
import '../brick/model/translation_pair.model.dart';
import '../brick/model/user.model.dart';

part 'adapters/scenario_adapter.g.dart';
part 'adapters/topic_adapter.g.dart';
part 'adapters/transalation_pair_adapter.g.dart';
part 'adapters/user_adapter.g.dart';

/// Rest mappings should only be used when initializing a [RestProvider]
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
