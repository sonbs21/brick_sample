import 'package:brick_offline_first_with_rest/brick_offline_first_with_rest.dart';
import 'package:brick_rest/brick_rest.dart';
import 'package:brick_sqlite/brick_sqlite.dart';
import 'package:example_brick/brick/model/user.model.request.dart';

@ConnectOfflineFirstWithRest(
  restConfig: RestSerializable(
    requestTransformer: UserRequestTransformer.new,
  ),
)
class User extends OfflineFirstWithRestModel {
  @Sqlite(unique: true)
  final String id;
  final bool isVip;
  final int heart;
  final DateTime? heartRecoveryTime;

  User({
    required this.id,
    required this.isVip,
    required this.heart,
    this.heartRecoveryTime,
  });
}
