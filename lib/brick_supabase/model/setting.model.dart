import 'package:brick_offline_first_with_supabase/brick_offline_first_with_supabase.dart';
import 'package:brick_sqlite/brick_sqlite.dart';
import 'package:brick_supabase/brick_supabase.dart';

@ConnectOfflineFirstWithSupabase(
  supabaseConfig: SupabaseSerializable(),
)
class Setting extends OfflineFirstWithSupabaseModel {
  @Sqlite(unique: true)
  final String id;

  final String level;
  final String nativeLanguage;

  Setting({
    required this.id,
    required this.level,
    required this.nativeLanguage,
  });
}
