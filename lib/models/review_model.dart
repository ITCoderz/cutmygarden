class ReviewModel {
  String name, date, time, city, gardener;
  double rating;

  ReviewModel({
    required this.name,
    required this.date,
    required this.time,
    required this.city,
    required this.gardener,
    required this.rating,
  });
}

class CommentModel {
  String reviewerName, date, time, comment;
  double rating;

  CommentModel({
    required this.reviewerName,
    required this.date,
    required this.time,
    required this.comment,
    required this.rating,
  });
}
