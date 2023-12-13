import 'package:demo/shared/typedef.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'data/generated/CategoryModel.freezed.dart';
part 'CategoryModel.g.dart';

@freezed
@JsonSerializable(nullable: false)
abstract class CategoryModel with _$CategoryModel {
  factory CategoryModel({
    required int id,
    required String name,
    required String image,
  }) = _CategoryModel;

  factory CategoryModel.fromJson(JSON json) => _$CategoryModelFromJson(json);
}
