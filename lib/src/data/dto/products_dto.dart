import 'package:json_annotation/json_annotation.dart';
import 'package:softtech_test/src/data/dto/product_dto.dart';

part 'products_dto.g.dart';

@JsonSerializable(
  includeIfNull: false,
  explicitToJson: true,
  fieldRename: FieldRename.snake,
)
class ProductsDto {
  List<ProductDto>? products;

  ProductsDto({this.products});

  factory ProductsDto.fromJson(Map<String, dynamic> json, ProductDto Function(dynamic json) param1) =>
      _$ProductsDtoFromJson(json);

  Map<String, dynamic> toJson() => _$ProductsDtoToJson(this);
}
