
import 'package:equatable/equatable.dart';

class Doc extends Equatable {
  final List<String>? authorKey;
  final List<String>? authorName;
  final String? coverEditionKey;
  final int? coverI;
  final String? ebookAccess;
  final int? editionCount;
  final int? firstPublishYear;
  final bool? hasFulltext;
  final String? key;
  final List<String>? language;
  final bool? publicScanB;
  final String? title;
  final int? coverHeight;
  final int? coverWidth;
  final List<String>? ia;
  final List<String>? iaCollection;
  final String? lendingEditionS;
  final String? lendingIdentifierS;

  const Doc({
    this.authorKey,
    this.authorName,
    this.coverEditionKey,
    this.coverI,
    this.ebookAccess,
    this.editionCount,
    this.firstPublishYear,
    this.hasFulltext,
    this.key,
    this.language,
    this.publicScanB,
    this.title,
    this.coverHeight,
    this.coverWidth,
    this.ia,
    this.iaCollection,
    this.lendingEditionS,
    this.lendingIdentifierS,
  });

  factory Doc.fromJson(Map<String, dynamic> json) => Doc(
        authorKey: (json['author_key'] as List?)
            ?.map((e) => e.toString())
            .toList(),
        authorName: (json['author_name'] as List?)
            ?.map((e) => e.toString())
            .toList(),
        coverEditionKey: json['cover_edition_key'] as String?,
        coverI: json['cover_i'] as int?,
        ebookAccess: json['ebook_access'] as String?,
        editionCount: json['edition_count'] as int?,
        firstPublishYear: json['first_publish_year'] as int?,
        hasFulltext: json['has_fulltext'] as bool?,
        key: json['key'] as String?,
        language: (json['language'] as List?)
            ?.map((e) => e.toString())
            .toList(),
        publicScanB: json['public_scan_b'] as bool?,
        title: json['title'] as String?,
        coverHeight: json['cover_height'] as int?,
        coverWidth: json['cover_width'] as int?,
        ia: (json['ia'] as List?)
            ?.map((e) => e.toString())
            .toList(),
        iaCollection: (json['ia_collection'] as List?)
            ?.map((e) => e.toString())
            .toList(),
        lendingEditionS: json['lending_edition_s'] as String?,
        lendingIdentifierS: json['lending_identifier_s'] as String?,
      );

  Map<String, dynamic> toJson() => {
        'author_key': authorKey,
        'author_name': authorName,
        'cover_edition_key': coverEditionKey,
        'cover_i': coverI,
        'ebook_access': ebookAccess,
        'edition_count': editionCount,
        'first_publish_year': firstPublishYear,
        'has_fulltext': hasFulltext,
        'key': key,
        'language': language,
        'public_scan_b': publicScanB,
        'title': title,
        'cover_height': coverHeight,
        'cover_width': coverWidth,
        'ia': ia,
        'ia_collection': iaCollection,
        'lending_edition_s': lendingEditionS,
        'lending_identifier_s': lendingIdentifierS,
      };

  @override
  List<Object?> get props => [
        authorKey,
        authorName,
        coverEditionKey,
        coverI,
        ebookAccess,
        editionCount,
        firstPublishYear,
        hasFulltext,
        key,
        language,
        publicScanB,
        title,
        coverHeight,
        coverWidth,
        ia,
        iaCollection,
        lendingEditionS,
        lendingIdentifierS,
      ];
}
