// GENERATED CODE DO NOT EDIT
// This file should be version controlled
import 'package:brick_sqlite/db.dart';
part '20241015040912.migration.dart';

/// All intelligently-generated migrations from all `@Migratable` classes on disk
final migrations = <Migration>{const Migration20241015040912()};

/// A consumable database structure including the latest generated migration.
final schema =
    Schema(20241015040912, generatorVersion: 1, tables: <SchemaTable>{
  SchemaTable('Scenario', columns: <SchemaColumn>{
    SchemaColumn('_brick_id', Column.integer,
        autoincrement: true, nullable: false, isPrimaryKey: true),
    SchemaColumn('id', Column.varchar, unique: true),
    SchemaColumn('title_TransalationPair_brick_id', Column.integer,
        isForeignKey: true,
        foreignTableName: 'TransalationPair',
        onDeleteCascade: false,
        onDeleteSetDefault: false),
    SchemaColumn('description_TransalationPair_brick_id', Column.integer,
        isForeignKey: true,
        foreignTableName: 'TransalationPair',
        onDeleteCascade: false,
        onDeleteSetDefault: false),
    SchemaColumn('level', Column.varchar),
    SchemaColumn('image_url', Column.varchar),
    SchemaColumn('order', Column.integer),
    SchemaColumn('task_completed', Column.integer)
  }, indices: <SchemaIndex>{}),
  SchemaTable('_brick_Topic_scenario', columns: <SchemaColumn>{
    SchemaColumn('_brick_id', Column.integer,
        autoincrement: true, nullable: false, isPrimaryKey: true),
    SchemaColumn('l_Topic_brick_id', Column.integer,
        isForeignKey: true,
        foreignTableName: 'Topic',
        onDeleteCascade: true,
        onDeleteSetDefault: false),
    SchemaColumn('f_Scenario_brick_id', Column.integer,
        isForeignKey: true,
        foreignTableName: 'Scenario',
        onDeleteCascade: true,
        onDeleteSetDefault: false)
  }, indices: <SchemaIndex>{
    SchemaIndex(
        columns: ['l_Topic_brick_id', 'f_Scenario_brick_id'], unique: true)
  }),
  SchemaTable('Topic', columns: <SchemaColumn>{
    SchemaColumn('_brick_id', Column.integer,
        autoincrement: true, nullable: false, isPrimaryKey: true),
    SchemaColumn('id', Column.varchar, unique: true),
    SchemaColumn('title_TransalationPair_brick_id', Column.integer,
        isForeignKey: true,
        foreignTableName: 'TransalationPair',
        onDeleteCascade: false,
        onDeleteSetDefault: false),
    SchemaColumn('description_TransalationPair_brick_id', Column.integer,
        isForeignKey: true,
        foreignTableName: 'TransalationPair',
        onDeleteCascade: false,
        onDeleteSetDefault: false),
    SchemaColumn('color', Column.varchar),
    SchemaColumn('image_url', Column.varchar),
    SchemaColumn('cover_image_url', Column.varchar),
    SchemaColumn('level', Column.varchar),
    SchemaColumn('language', Column.varchar),
    SchemaColumn('updated_at', Column.datetime)
  }, indices: <SchemaIndex>{}),
  SchemaTable('TransalationPair', columns: <SchemaColumn>{
    SchemaColumn('_brick_id', Column.integer,
        autoincrement: true, nullable: false, isPrimaryKey: true),
    SchemaColumn('sentence', Column.varchar),
    SchemaColumn('translation', Column.varchar)
  }, indices: <SchemaIndex>{}),
  SchemaTable('User', columns: <SchemaColumn>{
    SchemaColumn('_brick_id', Column.integer,
        autoincrement: true, nullable: false, isPrimaryKey: true),
    SchemaColumn('id', Column.varchar, unique: true),
    SchemaColumn('is_vip', Column.boolean),
    SchemaColumn('heart', Column.integer),
    SchemaColumn('heart_recovery_time', Column.datetime)
  }, indices: <SchemaIndex>{})
});
