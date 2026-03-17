class ProductModel{
   int? id;
  String? classification;
  String? scientificName;
  String? tradeName;
  String? manufacturer;
  int? availableQuantit;
  String? expiryDate;
  int? price;
  String? createdAt;
  String? updatedAt;
  String? image;

  ProductModel(
      {this.id,
      this.classification,
      this.scientificName,
      this.tradeName,
      this.manufacturer,
      this.availableQuantit,
      this.expiryDate,
      this.price,
      this.createdAt,
      this.updatedAt,
      this.image
      });

      ProductModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    classification = json['classification'];
    scientificName = json['scientificName'];
    tradeName = json['TradeName'];
    manufacturer = json['Manufacturer'];
    availableQuantit = json['AvailableQuantit'];
    expiryDate = json['ExpiryDate'];
    price = json['Price'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    image = json['image'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['classification'] = this.classification;
    data['scientificName'] = this.scientificName;
    data['TradeName'] = this.tradeName;
    data['Manufacturer'] = this.manufacturer;
    data['AvailableQuantit'] = this.availableQuantit;
    data['ExpiryDate'] = this.expiryDate;
    data['Price'] = this.price;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    data['image'] = this.image;
    
    return data;
  }

}