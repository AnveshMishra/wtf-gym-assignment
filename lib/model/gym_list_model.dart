// To parse this JSON data, do
//
//     final gymList = gymListFromJson(jsonString);

import 'dart:convert';

GymList gymListFromJson(String str) => GymList.fromJson(json.decode(str));

String gymListToJson(GymList data) => json.encode(data.toJson());

class GymList {
  List<Pagination>? pagination;
  bool? status;
  String? message;
  List<GymData>? data;

  GymList({
    this.pagination,
    this.status,
    this.message,
    this.data,
  });

  GymList copyWith({
    List<Pagination>? pagination,
    bool? status,
    String? message,
    List<GymData>? data,
  }) =>
      GymList(
        pagination: pagination ?? this.pagination,
        status: status ?? this.status,
        message: message ?? this.message,
        data: data ?? this.data,
      );

  factory GymList.fromJson(Map<String, dynamic> json) => GymList(
        pagination: json["pagination"] == null
            ? []
            : List<Pagination>.from(
                json["pagination"]!.map((x) => Pagination.fromJson(x))),
        status: json["status"],
        message: json["message"],
        data: json["data"] == null
            ? []
            : List<GymData>.from(json["data"]!.map((x) => GymData.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "pagination": pagination == null
            ? []
            : List<dynamic>.from(pagination!.map((x) => x.toJson())),
        "status": status,
        "message": message,
        "data": data == null
            ? []
            : List<dynamic>.from(data!.map((x) => x.toJson())),
      };
}

class GymData {
  List<SeoContent>? seoContent;
  PocName? pocName;
  String? pocMobile;
  String? userId;
  String? gymName;
  String? address1;
  String? address2;
  City? city;
  String? state;
  String? latitude;
  String? longitude;
  String? pin;
  Country? country;
  String? name;
  String? distance;
  dynamic addonCategory;
  dynamic addonCatId;
  dynamic offerType;
  dynamic offerValue;
  String? distanceText;
  String? durationText;
  String? duration;
  double? rating;
  dynamic text1;
  dynamic text2;
  dynamic planName;
  dynamic planDuration;
  dynamic planPrice;
  dynamic planDescription;
  String? coverImage;
  List<Gallery>? gallery;
  List<Benefit>? benefits;
  Type? type;
  String? description;
  Status? status;
  String? slug;
  String? categoryId;
  int? totalRating;
  String? isPartial;
  int? isCash;
  CategoryName? categoryName;
  List<dynamic>? offerDetails;
  double? wtfShare;
  int? isDiscount;

  GymData({
    this.seoContent,
    this.pocName,
    this.pocMobile,
    this.userId,
    this.gymName,
    this.address1,
    this.address2,
    this.city,
    this.state,
    this.latitude,
    this.longitude,
    this.pin,
    this.country,
    this.name,
    this.distance,
    this.addonCategory,
    this.addonCatId,
    this.offerType,
    this.offerValue,
    this.distanceText,
    this.durationText,
    this.duration,
    this.rating,
    this.text1,
    this.text2,
    this.planName,
    this.planDuration,
    this.planPrice,
    this.planDescription,
    this.coverImage,
    this.gallery,
    this.benefits,
    this.type,
    this.description,
    this.status,
    this.slug,
    this.categoryId,
    this.totalRating,
    this.isPartial,
    this.isCash,
    this.categoryName,
    this.offerDetails,
    this.wtfShare,
    this.isDiscount,
  });

  GymData copyWith({
    List<SeoContent>? seoContent,
    PocName? pocName,
    String? pocMobile,
    String? userId,
    String? gymName,
    String? address1,
    String? address2,
    City? city,
    String? state,
    String? latitude,
    String? longitude,
    String? pin,
    Country? country,
    String? name,
    String? distance,
    dynamic addonCategory,
    dynamic addonCatId,
    dynamic offerType,
    dynamic offerValue,
    String? distanceText,
    String? durationText,
    String? duration,
    double? rating,
    dynamic text1,
    dynamic text2,
    dynamic planName,
    dynamic planDuration,
    dynamic planPrice,
    dynamic planDescription,
    String? coverImage,
    List<Gallery>? gallery,
    List<Benefit>? benefits,
    Type? type,
    String? description,
    Status? status,
    String? slug,
    String? categoryId,
    int? totalRating,
    String? isPartial,
    int? isCash,
    CategoryName? categoryName,
    List<dynamic>? offerDetails,
    double? wtfShare,
    int? isDiscount,
  }) =>
      GymData(
        seoContent: seoContent ?? this.seoContent,
        pocName: pocName ?? this.pocName,
        pocMobile: pocMobile ?? this.pocMobile,
        userId: userId ?? this.userId,
        gymName: gymName ?? this.gymName,
        address1: address1 ?? this.address1,
        address2: address2 ?? this.address2,
        city: city ?? this.city,
        state: state ?? this.state,
        latitude: latitude ?? this.latitude,
        longitude: longitude ?? this.longitude,
        pin: pin ?? this.pin,
        country: country ?? this.country,
        name: name ?? this.name,
        distance: distance ?? this.distance,
        addonCategory: addonCategory ?? this.addonCategory,
        addonCatId: addonCatId ?? this.addonCatId,
        offerType: offerType ?? this.offerType,
        offerValue: offerValue ?? this.offerValue,
        distanceText: distanceText ?? this.distanceText,
        durationText: durationText ?? this.durationText,
        duration: duration ?? this.duration,
        rating: rating ?? this.rating,
        text1: text1 ?? this.text1,
        text2: text2 ?? this.text2,
        planName: planName ?? this.planName,
        planDuration: planDuration ?? this.planDuration,
        planPrice: planPrice ?? this.planPrice,
        planDescription: planDescription ?? this.planDescription,
        coverImage: coverImage ?? this.coverImage,
        gallery: gallery ?? this.gallery,
        benefits: benefits ?? this.benefits,
        type: type ?? this.type,
        description: description ?? this.description,
        status: status ?? this.status,
        slug: slug ?? this.slug,
        categoryId: categoryId ?? this.categoryId,
        totalRating: totalRating ?? this.totalRating,
        isPartial: isPartial ?? this.isPartial,
        isCash: isCash ?? this.isCash,
        categoryName: categoryName ?? this.categoryName,
        offerDetails: offerDetails ?? this.offerDetails,
        wtfShare: wtfShare ?? this.wtfShare,
        isDiscount: isDiscount ?? this.isDiscount,
      );

  factory GymData.fromJson(Map<String, dynamic> json) => GymData(
        seoContent: json["seo_content"] == null
            ? []
            : List<SeoContent>.from(
                json["seo_content"]!.map((x) => SeoContent.fromJson(x))),
        pocName: pocNameValues.map[json["poc_name"]]!,
        pocMobile: json["poc_mobile"],
        userId: json["user_id"],
        gymName: json["gym_name"],
        address1: json["address1"],
        address2: json["address2"],
        city: cityValues.map[json["city"]]!,
        state: json["state"],
        latitude: json["latitude"],
        longitude: json["longitude"],
        pin: json["pin"],
        country: countryValues.map[json["country"]]!,
        name: json["name"],
        distance: json["distance"],
        addonCategory: json["addon_category"],
        addonCatId: json["addon_cat_id"],
        offerType: json["offer_type"],
        offerValue: json["offer_value"],
        distanceText: json["distance_text"],
        durationText: json["duration_text"],
        duration: json["duration"],
        rating: json["rating"]?.toDouble(),
        text1: json["text1"],
        text2: json["text2"],
        planName: json["plan_name"],
        planDuration: json["plan_duration"],
        planPrice: json["plan_price"],
        planDescription: json["plan_description"],
        coverImage: json["cover_image"],
        gallery: json["gallery"] == null
            ? []
            : List<Gallery>.from(
                json["gallery"]!.map((x) => Gallery.fromJson(x))),
        benefits: json["benefits"] == null
            ? []
            : List<Benefit>.from(
                json["benefits"]!.map((x) => Benefit.fromJson(x))),
        type: typeValues.map[json["type"]]!,
        description: json["description"],
        status: statusValues.map[json["status"]]!,
        slug: json["slug"],
        categoryId: json["category_id"],
        totalRating: json["total_rating"],
        isPartial: json["is_partial"],
        isCash: json["is_cash"],
        categoryName: categoryNameValues.map[json["category_name"]],
        offerDetails: json["offer_details"] == null
            ? []
            : List<dynamic>.from(json["offer_details"]!.map((x) => x)),
        wtfShare: json["wtf_share"]?.toDouble(),
        isDiscount: json["is_discount"],
      );

  Map<String, dynamic> toJson() => {
        "seo_content": seoContent == null
            ? []
            : List<dynamic>.from(seoContent!.map((x) => x.toJson())),
        "poc_name": pocNameValues.reverse[pocName],
        "poc_mobile": pocMobile,
        "user_id": userId,
        "gym_name": gymName,
        "address1": address1,
        "address2": address2,
        "city": cityValues.reverse[city],
        "state": state,
        "latitude": latitude,
        "longitude": longitude,
        "pin": pin,
        "country": countryValues.reverse[country],
        "name": name,
        "distance": distance,
        "addon_category": addonCategory,
        "addon_cat_id": addonCatId,
        "offer_type": offerType,
        "offer_value": offerValue,
        "distance_text": distanceText,
        "duration_text": durationText,
        "duration": duration,
        "rating": rating,
        "text1": text1,
        "text2": text2,
        "plan_name": planName,
        "plan_duration": planDuration,
        "plan_price": planPrice,
        "plan_description": planDescription,
        "cover_image": coverImage,
        "gallery": gallery == null
            ? []
            : List<dynamic>.from(gallery!.map((x) => x.toJson())),
        "benefits": benefits == null
            ? []
            : List<dynamic>.from(benefits!.map((x) => x.toJson())),
        "type": typeValues.reverse[type],
        "description": description,
        "status": statusValues.reverse[status],
        "slug": slug,
        "category_id": categoryId,
        "total_rating": totalRating,
        "is_partial": isPartial,
        "is_cash": isCash,
        "category_name": categoryNameValues.reverse[categoryName],
        "offer_details": offerDetails == null
            ? []
            : List<dynamic>.from(offerDetails!.map((x) => x)),
        "wtf_share": wtfShare,
        "is_discount": isDiscount,
      };
}

class Benefit {
  int? id;
  String? uid;
  String? gymId;
  String? name;
  String? breif;
  String? image;
  Status? status;
  String? dateAdded;
  String? lastUpdated;
  String? images;

  Benefit({
    this.id,
    this.uid,
    this.gymId,
    this.name,
    this.breif,
    this.image,
    this.status,
    this.dateAdded,
    this.lastUpdated,
    this.images,
  });

  Benefit copyWith({
    int? id,
    String? uid,
    String? gymId,
    String? name,
    String? breif,
    String? image,
    Status? status,
    String? dateAdded,
    String? lastUpdated,
    String? images,
  }) =>
      Benefit(
        id: id ?? this.id,
        uid: uid ?? this.uid,
        gymId: gymId ?? this.gymId,
        name: name ?? this.name,
        breif: breif ?? this.breif,
        image: image ?? this.image,
        status: status ?? this.status,
        dateAdded: dateAdded ?? this.dateAdded,
        lastUpdated: lastUpdated ?? this.lastUpdated,
        images: images ?? this.images,
      );

  factory Benefit.fromJson(Map<String, dynamic> json) => Benefit(
        id: json["id"],
        uid: json["uid"],
        gymId: json["gym_id"],
        name: json["name"],
        breif: json["breif"],
        image: json["image"],
        status: statusValues.map[json["status"]]!,
        dateAdded: json["date_added"],
        lastUpdated: json["last_updated"],
        images: json["images"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "uid": uid,
        "gym_id": gymId,
        "name": name,
        "breif": breif,
        "image": image,
        "status": statusValues.reverse[status],
        "date_added": dateAdded,
        "last_updated": lastUpdated,
        "images": images,
      };
}

enum Status { ACTIVE }

final statusValues = EnumValues({"active": Status.ACTIVE});

enum CategoryName { EXCLUSIVE, POWERED, YOGA }

final categoryNameValues = EnumValues({
  "Exclusive": CategoryName.EXCLUSIVE,
  "Powered": CategoryName.POWERED,
  "Yoga": CategoryName.YOGA
});

enum City { CHARLOTTE, DELHI, NOIDA }

final cityValues = EnumValues(
    {"Charlotte": City.CHARLOTTE, "Delhi": City.DELHI, "Noida": City.NOIDA});

enum Country { INDIA, UNITED_STATES }

final countryValues = EnumValues(
    {"India": Country.INDIA, "United States": Country.UNITED_STATES});

class Gallery {
  int? id;
  String? uid;
  String? gymId;
  String? categoryId;
  String? images;
  Status? status;
  String? dateAdded;
  String? lastUpdated;
  String? type;

  Gallery({
    this.id,
    this.uid,
    this.gymId,
    this.categoryId,
    this.images,
    this.status,
    this.dateAdded,
    this.lastUpdated,
    this.type,
  });

  Gallery copyWith({
    int? id,
    String? uid,
    String? gymId,
    String? categoryId,
    String? images,
    Status? status,
    String? dateAdded,
    String? lastUpdated,
    String? type,
  }) =>
      Gallery(
        id: id ?? this.id,
        uid: uid ?? this.uid,
        gymId: gymId ?? this.gymId,
        categoryId: categoryId ?? this.categoryId,
        images: images ?? this.images,
        status: status ?? this.status,
        dateAdded: dateAdded ?? this.dateAdded,
        lastUpdated: lastUpdated ?? this.lastUpdated,
        type: type ?? this.type,
      );

  factory Gallery.fromJson(Map<String, dynamic> json) => Gallery(
        id: json["id"],
        uid: json["uid"],
        gymId: json["gym_id"],
        categoryId: json["category_id"],
        images: json["images"],
        status: statusValues.map[json["status"]]!,
        dateAdded: json["date_added"],
        lastUpdated: json["last_updated"],
        type: json["type"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "uid": uid,
        "gym_id": gymId,
        "category_id": categoryId,
        "images": images,
        "status": statusValues.reverse[status],
        "date_added": dateAdded,
        "last_updated": lastUpdated,
        "type": type,
      };
}

enum PocName { NARESH, N_A }

final pocNameValues =
    EnumValues({"Naresh": PocName.NARESH, "N/A": PocName.N_A});

class SeoContent {
  int? id;
  String? uid;
  String? gymId;
  String? htmlContent;
  Status? status;
  String? dateAdded;
  String? addedBy;
  String? lastUpdated;
  String? pageName;
  dynamic className;

  SeoContent({
    this.id,
    this.uid,
    this.gymId,
    this.htmlContent,
    this.status,
    this.dateAdded,
    this.addedBy,
    this.lastUpdated,
    this.pageName,
    this.className,
  });

  SeoContent copyWith({
    int? id,
    String? uid,
    String? gymId,
    String? htmlContent,
    Status? status,
    String? dateAdded,
    String? addedBy,
    String? lastUpdated,
    String? pageName,
    dynamic className,
  }) =>
      SeoContent(
        id: id ?? this.id,
        uid: uid ?? this.uid,
        gymId: gymId ?? this.gymId,
        htmlContent: htmlContent ?? this.htmlContent,
        status: status ?? this.status,
        dateAdded: dateAdded ?? this.dateAdded,
        addedBy: addedBy ?? this.addedBy,
        lastUpdated: lastUpdated ?? this.lastUpdated,
        pageName: pageName ?? this.pageName,
        className: className ?? this.className,
      );

  factory SeoContent.fromJson(Map<String, dynamic> json) => SeoContent(
        id: json["id"],
        uid: json["uid"],
        gymId: json["gym_id"],
        htmlContent: json["html_content"],
        status: statusValues.map[json["status"]]!,
        dateAdded: json["date_added"],
        addedBy: json["added_by"],
        lastUpdated: json["last_updated"],
        pageName: json["page_name"],
        className: json["class_name"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "uid": uid,
        "gym_id": gymId,
        "html_content": htmlContent,
        "status": statusValues.reverse[status],
        "date_added": dateAdded,
        "added_by": addedBy,
        "last_updated": lastUpdated,
        "page_name": pageName,
        "class_name": className,
      };
}

enum Type { GYM, STUDIO }

final typeValues = EnumValues({"gym": Type.GYM, "studio": Type.STUDIO});

class Pagination {
  int? pagination;
  int? limit;
  int? pages;

  Pagination({
    this.pagination,
    this.limit,
    this.pages,
  });

  Pagination copyWith({
    int? pagination,
    int? limit,
    int? pages,
  }) =>
      Pagination(
        pagination: pagination ?? this.pagination,
        limit: limit ?? this.limit,
        pages: pages ?? this.pages,
      );

  factory Pagination.fromJson(Map<String, dynamic> json) => Pagination(
        pagination: json["pagination"],
        limit: json["limit"],
        pages: json["pages"],
      );

  Map<String, dynamic> toJson() => {
        "pagination": pagination,
        "limit": limit,
        "pages": pages,
      };
}

class EnumValues<T> {
  Map<String, T> map;
  late Map<T, String> reverseMap;

  EnumValues(this.map);

  Map<T, String> get reverse {
    reverseMap = map.map((k, v) => MapEntry(v, k));
    return reverseMap;
  }
}
