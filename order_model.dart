class orderModel {
  int? id;
  int? totalPrice;
  int? userId;
  int? quantity;
  String? status;
  String? createdAt;
  String? updatedAt;

  orderModel(
      {this.id,
      this.totalPrice,
      this.userId,
      this.status,
      this.createdAt,
      this.updatedAt,
      this.quantity
      });

  orderModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    totalPrice = json['totalPrice'];
    userId = json['user_id'];
    status = json['status'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    quantity=json["quantity"];
  }


}