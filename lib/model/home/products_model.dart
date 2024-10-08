class ProductsModel {
  bool? status;
  ProductsDataModel? data;
  ProductsModel.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    data = ProductsDataModel.fromJson(json['data']);
  }
}

class ProductsDataModel {
  List<BannerModel> banners = [];
  List<ProductModel> products = [];

  ProductsDataModel.fromJson(Map<String, dynamic> json) {
    json['banners'].forEach((element) {
      banners.add(BannerModel.fromJson(element));
    });

    json['products'].forEach((element) {
      products.add(ProductModel.fromJson(element));
    });
  }
}

class BannerModel {
  dynamic id;
  String image = '';
  BannerModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    image = json['image'];
  }
}

class ProductModel {
  dynamic id;
  dynamic price;
  dynamic oldPrice;
  dynamic discount;
  String image = '';
  String name = '';
  bool inFavorites = false;
  bool? inCart;
  ProductModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    price = json['price'];
    oldPrice = json['old_price'];
    discount = json['discount'];
    image = json['image'];
    name = json['name'];
    inFavorites = json['in_favorites'];
    inCart = json['in_cart'];
  }
}
