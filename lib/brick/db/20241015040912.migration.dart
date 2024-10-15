// GENERATED CODE EDIT WITH CAUTION
// THIS FILE **WILL NOT** BE REGENERATED
// This file should be version controlled and can be manually edited.
part of 'schema.g.dart';

// While migrations are intelligently created, the difference between some commands, such as
// DropTable vs. RenameTable, cannot be determined. For this reason, please review migrations after
// they are created to ensure the correct inference was made.

// The migration version must **always** mirror the file name

const List<MigrationCommand> _migration_20241015040912_up = [
  InsertTable('Scenario'),
  InsertTable('_brick_Topic_scenario'),
  InsertTable('Topic'),
  InsertTable('TransalationPair'),
  InsertTable('User'),
  InsertColumn('id', Column.varchar, onTable: 'Scenario', unique: true),
  InsertForeignKey('Scenario', 'TransalationPair', foreignKeyColumn: 'title_TransalationPair_brick_id', onDeleteCascade: false, onDeleteSetDefault: false),
  InsertForeignKey('Scenario', 'TransalationPair', foreignKeyColumn: 'description_TransalationPair_brick_id', onDeleteCascade: false, onDeleteSetDefault: false),
  InsertColumn('level', Column.varchar, onTable: 'Scenario'),
  InsertColumn('image_url', Column.varchar, onTable: 'Scenario'),
  InsertColumn('order', Column.integer, onTable: 'Scenario'),
  InsertColumn('task_completed', Column.integer, onTable: 'Scenario'),
  InsertForeignKey('_brick_Topic_scenario', 'Topic', foreignKeyColumn: 'l_Topic_brick_id', onDeleteCascade: true, onDeleteSetDefault: false),
  InsertForeignKey('_brick_Topic_scenario', 'Scenario', foreignKeyColumn: 'f_Scenario_brick_id', onDeleteCascade: true, onDeleteSetDefault: false),
  InsertColumn('id', Column.varchar, onTable: 'Topic', unique: true),
  InsertForeignKey('Topic', 'TransalationPair', foreignKeyColumn: 'title_TransalationPair_brick_id', onDeleteCascade: false, onDeleteSetDefault: false),
  InsertForeignKey('Topic', 'TransalationPair', foreignKeyColumn: 'description_TransalationPair_brick_id', onDeleteCascade: false, onDeleteSetDefault: false),
  InsertColumn('color', Column.varchar, onTable: 'Topic'),
  InsertColumn('image_url', Column.varchar, onTable: 'Topic'),
  InsertColumn('cover_image_url', Column.varchar, onTable: 'Topic'),
  InsertColumn('level', Column.varchar, onTable: 'Topic'),
  InsertColumn('language', Column.varchar, onTable: 'Topic'),
  InsertColumn('updated_at', Column.datetime, onTable: 'Topic'),
  InsertColumn('sentence', Column.varchar, onTable: 'TransalationPair'),
  InsertColumn('translation', Column.varchar, onTable: 'TransalationPair'),
  InsertColumn('id', Column.varchar, onTable: 'User', unique: true),
  InsertColumn('is_vip', Column.boolean, onTable: 'User'),
  InsertColumn('heart', Column.integer, onTable: 'User'),
  InsertColumn('heart_recovery_time', Column.datetime, onTable: 'User'),
  CreateIndex(columns: ['l_Topic_brick_id', 'f_Scenario_brick_id'], onTable: '_brick_Topic_scenario', unique: true)
];

const List<MigrationCommand> _migration_20241015040912_down = [
  DropTable('Scenario'),
  DropTable('_brick_Topic_scenario'),
  DropTable('Topic'),
  DropTable('TransalationPair'),
  DropTable('User'),
  DropColumn('id', onTable: 'Scenario'),
  DropColumn('title_TransalationPair_brick_id', onTable: 'Scenario'),
  DropColumn('description_TransalationPair_brick_id', onTable: 'Scenario'),
  DropColumn('level', onTable: 'Scenario'),
  DropColumn('image_url', onTable: 'Scenario'),
  DropColumn('order', onTable: 'Scenario'),
  DropColumn('task_completed', onTable: 'Scenario'),
  DropColumn('l_Topic_brick_id', onTable: '_brick_Topic_scenario'),
  DropColumn('f_Scenario_brick_id', onTable: '_brick_Topic_scenario'),
  DropColumn('id', onTable: 'Topic'),
  DropColumn('title_TransalationPair_brick_id', onTable: 'Topic'),
  DropColumn('description_TransalationPair_brick_id', onTable: 'Topic'),
  DropColumn('color', onTable: 'Topic'),
  DropColumn('image_url', onTable: 'Topic'),
  DropColumn('cover_image_url', onTable: 'Topic'),
  DropColumn('level', onTable: 'Topic'),
  DropColumn('language', onTable: 'Topic'),
  DropColumn('updated_at', onTable: 'Topic'),
  DropColumn('sentence', onTable: 'TransalationPair'),
  DropColumn('translation', onTable: 'TransalationPair'),
  DropColumn('id', onTable: 'User'),
  DropColumn('is_vip', onTable: 'User'),
  DropColumn('heart', onTable: 'User'),
  DropColumn('heart_recovery_time', onTable: 'User'),
  DropIndex('index__brick_Topic_scenario_on_l_Topic_brick_id_f_Scenario_brick_id')
];

//
// DO NOT EDIT BELOW THIS LINE
//

@Migratable(
  version: '20241015040912',
  up: _migration_20241015040912_up,
  down: _migration_20241015040912_down,
)
class Migration20241015040912 extends Migration {
  const Migration20241015040912()
    : super(
        version: 20241015040912,
        up: _migration_20241015040912_up,
        down: _migration_20241015040912_down,
      );
}
