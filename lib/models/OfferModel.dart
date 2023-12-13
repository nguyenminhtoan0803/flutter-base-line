import 'package:demo/shared/typedef.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'data/generated/OfferModel.freezed.dart';
part 'OfferModel.g.dart';

@freezed
@JsonSerializable(nullable: false)
abstract class OfferModel with _$OfferModel {
  factory OfferModel({
    required int id,
    required String title,
    required String description,
    required String image,
    required String price,
    required String discount,
    required String discountPrice,
  }) = _OfferModel;

  factory OfferModel.fromJson(JSON json) => _$OfferModelFromJson(json);
}