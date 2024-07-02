class LearnItem {
  final String _id;
  final String name;
  final String description;

  LearnItem(this._id, this.name, this.description);
// to get data from api (from json)
  factory LearnItem.fromJson(Map<String, dynamic> json) {
    return LearnItem(
      json['_id'],
      json['name'],
      json['description'],
    );
  }
  //  to send data to api (to json)
  Map<String, dynamic> toJson(){
    return {
      'name': name,
      'description': description,
    };
  }
}
