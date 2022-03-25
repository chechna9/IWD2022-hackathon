import 'dart:convert';


class ProductDataModel{

  String? name;
  String? category;
  String? imageURL;
  String? description;
  String? ingredient;

  ProductDataModel(
      {
 
      this.name,
      this.category,
      this.imageURL,
      this.description,
      this.ingredient
      });

  ProductDataModel.fromJson(Map<String,dynamic> json)
  {
  
    name =json['name'];
    category = json['category'];
    imageURL = json['imageUrl'];
    description = json['description'];
    ingredient = json['ingredient'];
  }
}
