import 'package:yes_no_app/domain/entities/api_products.dart';

class ProductsModel {
  final List<Result> results;
  final int pages;
  final int records;
  final int current;
  final String filter;

  ProductsModel({
    required this.results,
    required this.pages,
    required this.records,
    required this.current,
    required this.filter,
  });

  factory ProductsModel.fromJson(Map<String, dynamic> json) => ProductsModel(
    results: List<Result>.from(json["results"].map((x) => Result.fromJson(x))),
    pages: json["pages"],
    records: json["records"],
    current: json["current"],
    filter: json["filter"],
  );

  Map<String, dynamic> toJson() => {
    "results": List<dynamic>.from(results.map((x) => x.toJson())),
    "pages": pages,
    "records": records,
    "current": current,
    "filter": filter,
  };

  Product toProductEntity(value) => Product(
    productBrand: results[value].brand,
    productName: results[value].title,
    productRegularPrice: results[value].regularPrice,
    productImgUrl: results[value].image.image
  );
}

class Result {
  final String id;
  final String title;
  final dynamic description;
  final String sku;
  final double regularPrice;
  final String idMarketplaceStoreCategory;
  final List<Image> images;
  final Status status;
  final int idProduct;
  final int idDepot;
  final List<Medium> medium;
  final List<Medium> small;
  final IdMarketplaceStoreBrand? idMarketplaceStoreBrand;
  final bool amenityAdd;
  final bool bookingDetail;
  final bool hasBooking;
  final bool hasDaypass;
  final dynamic unit;
  final bool orderAnonymous;
  final bool featured;
  final dynamic offerPercent;
  final dynamic offerPrice;
  final dynamic dateOnSaleFrom;
  final dynamic dateOnSaleTo;
  final int stockQuantity;
  final String factor;
  final double regularUsd;
  final double taxRate;
  final bool print;
  final List<dynamic> variations;
  final List<Large> large;
  final Image image;
  final bool variation;
  final bool size;
  final bool color1;
  final bool color2;
  final bool model;
  final int reviewsAverage;
  final List<dynamic> pickup;
  final bool checkPickup;
  final bool hasVariation;
  final Hash hash;
  final SiteName siteName;
  final String marketplace;
  final Store store;
  final Ico ico;
  final Flag flag;
  final String url;
  final dynamic offerUsd;
  final dynamic offerMin;
  final String brand;

  Result({
    required this.id,
    required this.title,
    required this.description,
    required this.sku,
    required this.regularPrice,
    required this.idMarketplaceStoreCategory,
    required this.images,
    required this.status,
    required this.idProduct,
    required this.idDepot,
    required this.medium,
    required this.small,
    required this.idMarketplaceStoreBrand,
    required this.amenityAdd,
    required this.bookingDetail,
    required this.hasBooking,
    required this.hasDaypass,
    required this.unit,
    required this.orderAnonymous,
    required this.featured,
    required this.offerPercent,
    required this.offerPrice,
    required this.dateOnSaleFrom,
    required this.dateOnSaleTo,
    required this.stockQuantity,
    required this.factor,
    required this.regularUsd,
    required this.taxRate,
    required this.print,
    required this.variations,
    required this.large,
    required this.image,
    required this.variation,
    required this.size,
    required this.color1,
    required this.color2,
    required this.model,
    required this.reviewsAverage,
    required this.pickup,
    required this.checkPickup,
    required this.hasVariation,
    required this.hash,
    required this.siteName,
    required this.marketplace,
    required this.store,
    required this.ico,
    required this.flag,
    required this.url,
    required this.offerUsd,
    required this.offerMin,
    required this.brand,
  });

  factory Result.fromJson(Map<String, dynamic> json) => Result(
    id: json["_id"],
    title: json["title"],
    description: json["description"],
    sku: json["sku"],
    regularPrice: json["regular_price"]?.toDouble(),
    idMarketplaceStoreCategory: json["id_marketplace_store_category"],
    images: List<Image>.from(json["images"].map((x) => Image.fromJson(x))),
    status: statusValues.map[json["status"]]!,
    idProduct: json["id_product"],
    idDepot: json["id_depot"],
    medium: List<Medium>.from(json["medium"].map((x) => Medium.fromJson(x))),
    small: List<Medium>.from(json["small"].map((x) => Medium.fromJson(x))),
    idMarketplaceStoreBrand:
        json["id_marketplace_store_brand"] == null
            ? null
            : IdMarketplaceStoreBrand.fromJson(
              json["id_marketplace_store_brand"],
            ),
    amenityAdd: json["amenity_add"],
    bookingDetail: json["booking_detail"],
    hasBooking: json["has_booking"],
    hasDaypass: json["has_daypass"],
    unit: json["unit"],
    orderAnonymous: json["order_anonymous"],
    featured: json["featured"],
    offerPercent: json["offer_percent"],
    offerPrice: json["offer_price"],
    dateOnSaleFrom: json["date_on_sale_from"],
    dateOnSaleTo: json["date_on_sale_to"],
    stockQuantity: json["stock_quantity"],
    factor: json["factor"],
    regularUsd: json["regular_usd"]?.toDouble(),
    taxRate: json["tax_rate"]?.toDouble(),
    print: json["print"],
    variations: List<dynamic>.from(json["variations"].map((x) => x)),
    large: List<Large>.from(json["large"].map((x) => Large.fromJson(x))),
    image: Image.fromJson(json["image"]),
    variation: json["variation"],
    size: json["size"],
    color1: json["color1"],
    color2: json["color2"],
    model: json["model"],
    reviewsAverage: json["reviews_average"],
    pickup: List<dynamic>.from(json["pickup"].map((x) => x)),
    checkPickup: json["check_pickup"],
    hasVariation: json["has_variation"],
    hash: hashValues.map[json["hash"]]!,
    siteName: siteNameValues.map[json["site_name"]]!,
    marketplace: json["marketplace"],
    store: storeValues.map[json["store"]]!,
    ico: icoValues.map[json["ico"]]!,
    flag: flagValues.map[json["flag"]]!,
    url: json["url"],
    offerUsd: json["offer_usd"],
    offerMin: json["offer_min"],
    brand: json["brand"],
  );

  Map<String, dynamic> toJson() => {
    "_id": id,
    "title": title,
    "description": description,
    "sku": sku,
    "regular_price": regularPrice,
    "id_marketplace_store_category": idMarketplaceStoreCategory,
    "images": List<dynamic>.from(images.map((x) => x.toJson())),
    "status": statusValues.reverse[status],
    "id_product": idProduct,
    "id_depot": idDepot,
    "medium": List<dynamic>.from(medium.map((x) => x.toJson())),
    "small": List<dynamic>.from(small.map((x) => x.toJson())),
    "id_marketplace_store_brand": idMarketplaceStoreBrand?.toJson(),
    "amenity_add": amenityAdd,
    "booking_detail": bookingDetail,
    "has_booking": hasBooking,
    "has_daypass": hasDaypass,
    "unit": unit,
    "order_anonymous": orderAnonymous,
    "featured": featured,
    "offer_percent": offerPercent,
    "offer_price": offerPrice,
    "date_on_sale_from": dateOnSaleFrom,
    "date_on_sale_to": dateOnSaleTo,
    "stock_quantity": stockQuantity,
    "factor": factor,
    "regular_usd": regularUsd,
    "tax_rate": taxRate,
    "print": print,
    "variations": List<dynamic>.from(variations.map((x) => x)),
    "large": List<dynamic>.from(large.map((x) => x.toJson())),
    "image": image.toJson(),
    "variation": variation,
    "size": size,
    "color1": color1,
    "color2": color2,
    "model": model,
    "reviews_average": reviewsAverage,
    "pickup": List<dynamic>.from(pickup.map((x) => x)),
    "check_pickup": checkPickup,
    "has_variation": hasVariation,
    "hash": hashValues.reverse[hash],
    "site_name": siteNameValues.reverse[siteName],
    "marketplace": marketplace,
    "store": storeValues.reverse[store],
    "ico": icoValues.reverse[ico],
    "flag": flagValues.reverse[flag],
    "url": url,
    "offer_usd": offerUsd,
    "offer_min": offerMin,
    "brand": brand,
  };
}

// ignore: constant_identifier_names
enum Flag { THE_0078_AB }

final flagValues = EnumValues({"#0078AB": Flag.THE_0078_AB});

enum Hash {
  // ignore: constant_identifier_names
  B5_LJNR_SJJI_UW_Q_XBZ_C0_A_H7_QE_C_PW_JHH_XAE_XG_OR_QI_OAK0_D7_W90_D930_TQ_I6_J_YBR,
}

final hashValues = EnumValues({
  "b5ljnrSjji_Uw_qXbzC0A_H7QeCPwJhhXAEXgOrQI-Oak0D7w90D930Tq-I6jYBR":
      Hash.B5_LJNR_SJJI_UW_Q_XBZ_C0_A_H7_QE_C_PW_JHH_XAE_XG_OR_QI_OAK0_D7_W90_D930_TQ_I6_J_YBR,
});

// ignore: constant_identifier_names
enum Ico { OBJECT_HTML_COLLECTION }

final icoValues = EnumValues({
  "[object HTMLCollection]": Ico.OBJECT_HTML_COLLECTION,
});

class IdMarketplaceStoreBrand {
  final String id;

  IdMarketplaceStoreBrand({required this.id});

  factory IdMarketplaceStoreBrand.fromJson(Map<String, dynamic> json) =>
      IdMarketplaceStoreBrand(id: json["\u0024id"]);

  Map<String, dynamic> toJson() => {"\u0024id": id};
}

class Image {
  final IdMarketplaceStoreBrand id;
  final String name;
  final String image;
  final int position;
  final Mime mime;
  final int idProduct;
  final bool? massive;

  Image({
    required this.id,
    required this.name,
    required this.image,
    required this.position,
    required this.mime,
    required this.idProduct,
    this.massive,
  });

  factory Image.fromJson(Map<String, dynamic> json) => Image(
    id: IdMarketplaceStoreBrand.fromJson(json["_id"]),
    name: json["name"],
    image: json["image"],
    position: json["position"],
    mime: mimeValues.map[json["mime"]]!,
    idProduct: json["id_product"],
    massive: json["massive"],
  );

  Map<String, dynamic> toJson() => {
    "_id": id.toJson(),
    "name": name,
    "image": image,
    "position": position,
    "mime": mimeValues.reverse[mime],
    "id_product": idProduct,
    "massive": massive,
  };
}

// ignore: constant_identifier_names
enum Mime { APPLICATION_OCTET_STREAM, IMAGE_JPEG, IMAGE_PNG }

final mimeValues = EnumValues({
  "application/octet-stream": Mime.APPLICATION_OCTET_STREAM,
  "image/jpeg": Mime.IMAGE_JPEG,
  "image/png": Mime.IMAGE_PNG,
});

class Large {
  final int position;
  final String image;
  final String text;

  Large({required this.position, required this.image, required this.text});

  factory Large.fromJson(Map<String, dynamic> json) => Large(
    position: json["position"],
    image: json["image"],
    text: json["text"],
  );

  Map<String, dynamic> toJson() => {
    "position": position,
    "image": image,
    "text": text,
  };
}

class Medium {
  final String image;
  final String text;

  Medium({required this.image, required this.text});

  factory Medium.fromJson(Map<String, dynamic> json) =>
      Medium(image: json["image"], text: json["text"]);

  Map<String, dynamic> toJson() => {"image": image, "text": text};
}

// ignore: constant_identifier_names
enum SiteName { ALIMENTOS_GLOBAL }

final siteNameValues = EnumValues({
  "alimentos global": SiteName.ALIMENTOS_GLOBAL,
});

// ignore: constant_identifier_names
enum Status { PUBLISH }

final statusValues = EnumValues({"publish": Status.PUBLISH});

// ignore: constant_identifier_names
enum Store { TIENDA_1 }

final storeValues = EnumValues({"Tienda 1": Store.TIENDA_1});

class EnumValues<T> {
  Map<String, T> map;
  late Map<T, String> reverseMap;

  EnumValues(this.map);

  Map<T, String> get reverse {
    reverseMap = map.map((k, v) => MapEntry(v, k));
    return reverseMap;
  }
}
