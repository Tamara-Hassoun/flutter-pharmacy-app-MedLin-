class favouritModel{
   int? id;
  String? name;
 

  favouritModel(
      {this.id,
     this.name,
      }
      );

      favouritModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
 name=json["name"];
  }

  

}