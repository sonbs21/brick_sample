import 'package:brick_rest/brick_rest.dart';

class UserRequestTransformer extends RestRequestTransformer {
  @override
  RestRequest get get {
    return RestRequest(
      url: '/user/me',
    );
  }

  const UserRequestTransformer(super.query, super.instance);
}
