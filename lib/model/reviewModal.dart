class ReviewModal {
  late String image;
  late String name;
  late double rating;
  late String comment;

  ReviewModal({required this.image, required this.name, required this.rating, required this.comment});

  ReviewModal.fromJson(Map<String, dynamic> json) {
    image = json['image'] ;
    name = json['name'];
    rating = json['rating'];
    comment = json['comment'] ;
  }
   

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['image'] = this.image;
    data['name'] = this.name;
    data['rating'] = this.rating;
    data['comment'] = this.comment;
    return data;
  }
}
