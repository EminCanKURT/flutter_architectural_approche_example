import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:gen/src/model/attributes.dart';
import 'package:json_annotation/json_annotation.dart';

part 'book.g.dart';

/// Book modeli
@JsonSerializable()
@immutable
final class Book with EquatableMixin {
  /// Book constructor
  const Book({
    this.type,
    this.id,
    this.attributes,
  });

  /// Book from json
  factory Book.fromJson(Map<String, dynamic> json) => _$BookFromJson(json);

  /// Book type
  final String? type;

  /// Book id
  final String? id;

  /// Book attributes
  final Attributes? attributes;

  /// Book to json
  Map<String, dynamic> toJson() => _$BookToJson(this);

  @override
  List<Object?> get props => [type, id, attributes];

  /// Book copy with
  Book copyWith({
    String? type,
    String? id,
    Attributes? attributes,
  }) {
    return Book(
      type: type ?? this.type,
      id: id ?? this.id,
      attributes: attributes ?? this.attributes,
    );
  }
}
