class reportModel {
  int? id;
  int? totalPrice;
  int? userId;
  String? status;
  String? paymentStatus;
  String? colour;
  String? createdAt;
  String? updatedAt;

  reportModel(
      {this.id,
      this.totalPrice,
      this.userId,
      this.status,
      this.paymentStatus,
      this.colour,
      this.createdAt,
      this.updatedAt});

  reportModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    totalPrice = json['totalPrice'];
    userId = json['user_id'];
    status = json['status'];
    paymentStatus = json['PaymentStatus'];
    colour = json['colour'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['totalPrice'] = this.totalPrice;
    data['user_id'] = this.userId;
    data['status'] = this.status;
    data['PaymentStatus'] = this.paymentStatus;
    data['colour'] = this.colour;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    return data;
  }
}