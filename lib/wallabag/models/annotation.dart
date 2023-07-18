import 'package:json_annotation/json_annotation.dart';

part 'annotation.g.dart';

@JsonSerializable()
class WallabagAnnotation {
  final int id;
  @JsonKey(name: 'annotator_schema_version')
  final String annotatorSchemaVersion;
  @JsonKey(name: 'created_at')
  final DateTime createdAt;
  @JsonKey(name: 'updated_at')
  final DateTime updatedAt;
  final String? quote;
  final List<WallabagAnnotationRange> ranges;
  final String text;
  final String? user;

  const WallabagAnnotation(
    this.id,
    this.annotatorSchemaVersion,
    this.createdAt,
    this.updatedAt,
    this.quote,
    this.ranges,
    this.text,
    this.user,
  );

  factory WallabagAnnotation.fromJson(Map<String, dynamic> json) =>
      _$WallabagAnnotationFromJson(json);
  Map<String, dynamic> toJson() => _$WallabagAnnotationToJson(this);
}

@JsonSerializable()
class WallabagAnnotationRange {
  final String? start;
  final String? end;
  @JsonKey(name: 'start_offset')
  final int startOffset;
  @JsonKey(name: 'end_offset')
  final int endOffset;

  const WallabagAnnotationRange(
    this.start,
    this.end,
    this.startOffset,
    this.endOffset,
  );

  factory WallabagAnnotationRange.fromJson(Map<String, dynamic> json) =>
      _$WallabagAnnotationRangeFromJson(json);
  Map<String, dynamic> toJson() => _$WallabagAnnotationRangeToJson(this);
}
