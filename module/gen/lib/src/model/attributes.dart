import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:json_annotation/json_annotation.dart';

part 'attributes.g.dart';

/// Attributes modeli
@JsonSerializable()
@immutable
final class Attributes with EquatableMixin {
  /// Attributes constructor
  const Attributes({
    this.title,
    this.body,
    this.created,
    this.updated,
  });

  /// Attributes from json
  factory Attributes.fromJson(Map<String, dynamic> json) =>
      _$AttributesFromJson(json);

  /// Attributes title
  final String? title;

  /// Attributes body
  final String? body;

  /// Attributes created
  final DateTime? created;

  /// Attributes updated
  final DateTime? updated;

  /// Attributes to json
  Map<String, dynamic> toJson() => _$AttributesToJson(this);

  /// Attributes props
  @override
  List<Object?> get props => [title, body, created, updated];

  /// Attributes copy with
  Attributes copyWith({
    String? title,
    String? body,
    DateTime? created,
    DateTime? updated,
  }) {
    return Attributes(
      title: title ?? this.title,
      body: body ?? this.body,
      created: created ?? this.created,
      updated: updated ?? this.updated,
    );
  }
}
