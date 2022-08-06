// To parse this JSON data, do
//
//     final prductModel = prductModelFromJson(jsonString);





class ProductModel {
  ProductModel({
    this.seoSetting,
    this.sliderVisibilty,
    this.sliders,
    this.sliderBannerOne,
    this.sliderBannerTwo,
    this.serviceVisibilty,
    this.services,
    this.popularCategorySidebarBanner,
    this.popularCategoryVisibilty,
    this.popularCategories,
    this.popularCategoryProducts,
    this.brandVisibility,
    this.brands,
    this.flashSale,
    this.flashSaleSidebarBanner,
    this.topRatedVisibility,
    this.topRatedProducts,
    this.sellerVisibility,
    this.sellers,
    this.twoColumnBannerOne,
    this.twoColumnBannerTwo,
    this.featuredProductVisibility,
    this.featuredCategorySidebarBanner,
    this.featuredCategories,
    this.featuredCategoryProducts,
    this.singleBannerOne,
    this.newArrivalProductVisibility,
    this.newArrivalProducts,
    this.bestProductVisibility,
    this.singleBannerTwo,
    this.bestProducts,
    this.subscriptionBanner,
  });

  SeoSetting? seoSetting;
  bool? sliderVisibilty;
  List<Sliders>? sliders;
  FeaturedCategorySidebarBanner? sliderBannerOne;
  FeaturedCategorySidebarBanner? sliderBannerTwo;
  bool? serviceVisibilty;
  List<Service>? services;
  FeaturedCategorySidebarBanner? popularCategorySidebarBanner;
  bool? popularCategoryVisibilty;
  List<Category>? popularCategories;
  List<Product>? popularCategoryProducts;
  bool? brandVisibility;
  List<Brand>? brands;
  FlashSale? flashSale;
  FeaturedCategorySidebarBanner? flashSaleSidebarBanner;
  bool? topRatedVisibility;
  List<Product>? topRatedProducts;
  bool? sellerVisibility;
  List<Seller>? sellers;
  FeaturedCategorySidebarBanner? twoColumnBannerOne;
  FeaturedCategorySidebarBanner? twoColumnBannerTwo;
  bool? featuredProductVisibility;
  FeaturedCategorySidebarBanner? featuredCategorySidebarBanner;
  List<Category>? featuredCategories;
  List<Product>? featuredCategoryProducts;
  FeaturedCategorySidebarBanner? singleBannerOne;
  bool? newArrivalProductVisibility;
  List<Product>? newArrivalProducts;
  bool? bestProductVisibility;
  FeaturedCategorySidebarBanner? singleBannerTwo;
  List<Product>? bestProducts;
  SubscriptionBanner? subscriptionBanner;

  factory ProductModel.fromJson(Map<String, dynamic> json) => ProductModel(
        seoSetting: SeoSetting.fromJson(json["seoSetting"]),
        sliderVisibilty: json["sliderVisibilty"],
        sliders:
            List<Sliders>.from(json["sliders"].map((x) => Sliders.fromJson(x))),
        sliderBannerOne:
            FeaturedCategorySidebarBanner.fromJson(json["sliderBannerOne"]),
        sliderBannerTwo:
            FeaturedCategorySidebarBanner.fromJson(json["sliderBannerTwo"]),
        serviceVisibilty: json["serviceVisibilty"],
        services: List<Service>.from(
            json["services"].map((x) => Service.fromJson(x))),
        popularCategorySidebarBanner: FeaturedCategorySidebarBanner.fromJson(
            json["popularCategorySidebarBanner"]),
        popularCategoryVisibilty: json["popularCategoryVisibilty"],
        popularCategories: List<Category>.from(
            json["popularCategories"].map((x) => Category.fromJson(x))),
        popularCategoryProducts: List<Product>.from(
            json["popularCategoryProducts"].map((x) => Product.fromJson(x))),
        brandVisibility: json["brandVisibility"],
        brands: List<Brand>.from(json["brands"].map((x) => Brand.fromJson(x))),
        flashSale: FlashSale.fromJson(json["flashSale"]),
        flashSaleSidebarBanner: FeaturedCategorySidebarBanner.fromJson(
            json["flashSaleSidebarBanner"]),
        topRatedVisibility: json["topRatedVisibility"],
        topRatedProducts: List<Product>.from(
            json["topRatedProducts"].map((x) => Product.fromJson(x))),
        sellerVisibility: json["sellerVisibility"],
        sellers:
            List<Seller>.from(json["sellers"].map((x) => Seller.fromJson(x))),
        twoColumnBannerOne:
            FeaturedCategorySidebarBanner.fromJson(json["twoColumnBannerOne"]),
        twoColumnBannerTwo:
            FeaturedCategorySidebarBanner.fromJson(json["twoColumnBannerTwo"]),
        featuredProductVisibility: json["featuredProductVisibility"],
        featuredCategorySidebarBanner: FeaturedCategorySidebarBanner.fromJson(
            json["featuredCategorySidebarBanner"]),
        featuredCategories: List<Category>.from(
            json["featuredCategories"].map((x) => Category.fromJson(x))),
        featuredCategoryProducts: List<Product>.from(
            json["featuredCategoryProducts"].map((x) => Product.fromJson(x))),
        singleBannerOne:
            FeaturedCategorySidebarBanner.fromJson(json["singleBannerOne"]),
        newArrivalProductVisibility: json["newArrivalProductVisibility"],
        newArrivalProducts: List<Product>.from(
            json["newArrivalProducts"].map((x) => Product.fromJson(x))),
        bestProductVisibility: json["bestProductVisibility"],
        singleBannerTwo:
            FeaturedCategorySidebarBanner.fromJson(json["singleBannerTwo"]),
        bestProducts: List<Product>.from(
            json["bestProducts"].map((x) => Product.fromJson(x))),
        subscriptionBanner:
            SubscriptionBanner.fromJson(json["subscriptionBanner"]),
      );
}

class Product {
  Product({
    this.id,
    this.name,
    this.shortName,
    this.slug,
    this.thumbImage,
    this.qty,
    this.soldQty,
    this.price,
    this.offerPrice,
    this.isUndefine,
    this.isFeatured,
    this.newProduct,
    this.isTop,
    this.isBest,
    this.categoryId,
    this.subCategoryId,
    this.childCategoryId,
    this.brandId,
    this.averageRating,
    this.activeVariants,
  });

  int? id;
  String? name;
  String? shortName;
  String? slug;
  String? thumbImage;
  String? qty;
  String? soldQty;
  String? price;
  String? offerPrice;
  String? isUndefine;
  String? isFeatured;
  String? newProduct;
  String? isTop;
  String? isBest;
  String? categoryId;
  String? subCategoryId;
  String? childCategoryId;
  String? brandId;
  String? averageRating;
  List<ActiveVariant>? activeVariants;

  factory Product.fromJson(Map<String, dynamic> json) => Product(
        id: json["id"],
        name: json["name"],
        shortName: json["short_name"],
        slug: json["slug"],
        thumbImage: json["thumb_image"],
        qty: json["qty"],
        soldQty: json["sold_qty"],
        price: json["price"],
        offerPrice: json["offer_price"] == null ? null : json["offer_price"],
        isUndefine: json["is_undefine"],
        isFeatured: json["is_featured"],
        newProduct: json["new_product"],
        isTop: json["is_top"],
        isBest: json["is_best"],
        categoryId: json["category_id"],
        subCategoryId: json["sub_category_id"],
        childCategoryId: json["child_category_id"],
        brandId: json["brand_id"],
        averageRating: json["averageRating"],
        activeVariants: List<ActiveVariant>.from(
            json["active_variants"].map((x) => ActiveVariant.fromJson(x))),
      );
}

class ActiveVariant {
  ActiveVariant({
    this.id,
    this.name,
    this.productId,
    this.activeVariantItems,
  });

  int? id;
  String? name;
  String? productId;
  List<ActiveVariantItem>? activeVariantItems;

  factory ActiveVariant.fromJson(Map<String, dynamic> json) => ActiveVariant(
        id: json["id"],
        name: json["name"],
        productId: json["product_id"],
        activeVariantItems: List<ActiveVariantItem>.from(
            json["active_variant_items"]
                .map((x) => ActiveVariantItem.fromJson(x))),
      );
}

class ActiveVariantItem {
  ActiveVariantItem({
    this.productVariantId,
    this.name,
    this.price,
    this.id,
  });

  String? productVariantId;
  String? name;
  String? price;
  int? id;

  factory ActiveVariantItem.fromJson(Map<String, dynamic> json) =>
      ActiveVariantItem(
        productVariantId: json["product_variant_id"],
        name: json["name"],
        price: json["price"],
        id: json["id"],
      );

  Map<String, dynamic> toJson() => {
        "product_variant_id": productVariantId,
        "name": name,
        "price": price,
        "id": id,
      };
}

class Brand {
  Brand({
    this.id,
    this.name,
    this.slug,
    this.logo,
    this.status,
    this.createdAt,
    this.updatedAt,
    this.icon,
  });

  int? id;
  String? name;
  String? slug;
  String? logo;
  String? status;
  DateTime? createdAt;
  DateTime? updatedAt;
  String? icon; // string property...
  // font awesome try kore dekhen pleas

  factory Brand.fromJson(Map<String, dynamic> json) => Brand(
        id: json["id"],
        name: json["name"],
        slug: json["slug"],
        logo: json["logo"] == null ? null : json["logo"],
        status: json["status"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
        icon: json["icon"] == null ? null : json["icon"],
      );
}

class Category {
  Category({
    this.id,
    this.categoryId,
    this.createdAt,
    this.updatedAt,
    this.category,
  });

  int? id;
  String? categoryId;
  DateTime? createdAt;
  DateTime? updatedAt;
  Brand? category;

  factory Category.fromJson(Map<String, dynamic> json) => Category(
        id: json["id"],
        categoryId: json["category_id"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
        category: Brand.fromJson(json["category"]),
      );
}

class FeaturedCategorySidebarBanner {
  FeaturedCategorySidebarBanner({
    this.id,
    this.link,
    this.image,
    this.bannerLocation,
    this.status,
  });

  int? id;
  String? link;
  String? image;
  String? bannerLocation;
  String? status;

  factory FeaturedCategorySidebarBanner.fromJson(Map<String, dynamic> json) =>
      FeaturedCategorySidebarBanner(
        id: json["id"],
        link: json["link"],
        image: json["image"],
        bannerLocation: json["banner_location"],
        status: json["status"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "link": link,
        "image": image,
        "banner_location": bannerLocation,
        "status": status,
      };
}

class FlashSale {
  FlashSale({
    this.id,
    this.title,
    this.homepageImage,
    this.flashsalePageImage,
    this.endTime,
    this.offer,
    this.status,
    this.createdAt,
    this.updatedAt,
  });

  int? id;
  String? title;
  String? homepageImage;
  String? flashsalePageImage;
  DateTime? endTime;
  String? offer;
  String? status;
  dynamic createdAt;
  DateTime? updatedAt;

  factory FlashSale.fromJson(Map<String, dynamic> json) => FlashSale(
        id: json["id"],
        title: json["title"],
        homepageImage: json["homepage_image"],
        flashsalePageImage: json["flashsale_page_image"],
        endTime: DateTime.parse(json["end_time"]),
        offer: json["offer"],
        status: json["status"],
        createdAt: json["created_at"],
        updatedAt: DateTime.parse(json["updated_at"]),
      );
}

class Seller {
  Seller({
    this.id,
    this.logo,
    this.bannerImage,
    this.shopName,
    this.slug,
  });

  int? id;
  String? logo;
  String? bannerImage;
  String? shopName;
  String? slug;

  factory Seller.fromJson(Map<String, dynamic> json) => Seller(
        id: json["id"],
        logo: json["logo"],
        bannerImage: json["banner_image"],
        shopName: json["shop_name"],
        slug: json["slug"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "logo": logo,
        "banner_image": bannerImage,
        "shop_name": shopName,
        "slug": slug,
      };
}

class SeoSetting {
  SeoSetting({
    this.id,
    this.pageName,
    this.seoTitle,
    this.seoDescription,
    this.createdAt,
    this.updatedAt,
  });

  int? id;
  String? pageName;
  String? seoTitle;
  String? seoDescription;
  dynamic createdAt;
  DateTime? updatedAt;

  factory SeoSetting.fromJson(Map<String, dynamic> json) => SeoSetting(
        id: json["id"],
        pageName: json["page_name"],
        seoTitle: json["seo_title"],
        seoDescription: json["seo_description"],
        createdAt: json["created_at"],
        updatedAt: DateTime.parse(json["updated_at"]),
      );
}

class Service {
  Service({
    this.id,
    this.title,
    this.icon,
    this.description,
    this.status,
    this.createdAt,
    this.updatedAt,
  });

  int? id;
  String? title;
  String? icon;
  String? description;
  String? status;
  DateTime? createdAt;
  DateTime? updatedAt;

  factory Service.fromJson(Map<String, dynamic> json) => Service(
        id: json["id"],
        title: json["title"],
        icon: json["icon"],
        description: json["description"],
        status: json["status"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
      );
}

class Sliders {
  Sliders({
    this.id,
    this.label,
    this.title,
    this.description,
    this.image,
    this.link,
    this.status,
    this.serial,
    this.sliderLocation,
    this.createdAt,
    this.updatedAt,
  });

  int? id;
  String? label;
  String? title;
  String? description;
  String? image;
  String? link;
  String? status;
  String? serial;
  dynamic sliderLocation;
  DateTime? createdAt;
  DateTime? updatedAt;

  factory Sliders.fromJson(Map<String, dynamic> json) => Sliders(
        id: json["id"],
        label: json["label"],
        title: json["title"],
        description: json["description"],
        image: json["image"],
        link: json["link"],
        status: json["status"],
        serial: json["serial"],
        sliderLocation: json["slider_location"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
      );
}

class SubscriptionBanner {
  SubscriptionBanner({
    this.id,
    this.image,
    this.bannerLocation,
    this.header,
    this.title,
  });

  int? id;
  String? image;
  String? bannerLocation;
  String? header;
  String? title;

  factory SubscriptionBanner.fromJson(Map<String, dynamic> json) =>
      SubscriptionBanner(
        id: json["id"],
        image: json["image"],
        bannerLocation: json["banner_location"],
        header: json["header"],
        title: json["title"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "image": image,
        "banner_location": bannerLocation,
        "header": header,
        "title": title,
      };
}
