import 'package:equatable/equatable.dart';

class Review extends Equatable {
  final String authorName;
  final String authorUserName;
  final String avatarUrl;
  final double rating;
  final String content;
  final String publicationDate;

  const Review({
    required this.authorName,
    required this.authorUserName,
    required this.avatarUrl,
    required this.rating,
    required this.content,
    required this.publicationDate,
  });

  @override
  List<Object?> get props => [
        authorName,
        authorUserName,
        avatarUrl,
        rating,
        content,
        publicationDate,
      ];
}
