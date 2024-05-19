import 'package:agro_app/src/core/base/base_request_model.dart';

class DeleteProductRequestModel extends BaseRequestModel {
  final String id;
  const DeleteProductRequestModel({required this.id});
}
