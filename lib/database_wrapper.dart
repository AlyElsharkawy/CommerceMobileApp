import 'package:cloud_firestore/cloud_firestore.dart';
import 'dart:math';

FirebaseFirestore firestore = FirebaseFirestore.instance;
final int colorsAmount = 4;

//NOTE: THIS IS A LARGE MONOTLITHIC FUNCTION THAT TAKES ALL POSSIBLE ATTRIBUTES FOR A PRODUCT
//IT THEN ADDS ITS ATTRIBUTES IN ITS ASSOCIATED COLLECTIONS
//FOR EXAMPLE, IT WILL TAKE A THUMBNAIL AND PHOTO PATH
//IT WILL THEN USE THIS INFORMATION TO ALSO CREATE A DOCUMENT IN THE MyCard COLLECTION

void addProduct(
    final int productID,
    final String name,
    final String description,
    final double price,
    final double discountPercentage,
    final bool isOnSale,
    final bool isFavorite,
    final String photoPath,
    final String thumbnailPath,
    final Map<String, dynamic> specifications) async {
  List<Map<String, dynamic>> colorsList = [];
  for (int i = 0; i < colorsAmount; i++) {
    double opacity = Random().nextDouble();
    colorsList.add({
      "R": Random().nextInt(256),
      "G": Random().nextInt(256),
      "B": Random().nextInt(256),
      "A": double.parse(opacity.toStringAsFixed(2)),
    });
  }
  double random1 = Random().nextDouble() * 5.0;
  double random2 = Random().nextDouble() * 5.0;
  await firestore.collection("Product").add({
    "ProductID": productID,
    "Name": name,
    "Description": description,
    "BasePrice": price,
    "DiscountPercentage": discountPercentage,
    "IsOnSale": isOnSale,

    //Randomly generated section
    "ReviewsNumber": Random().nextInt(1000),
    "StarsRating": double.parse(random1.toStringAsFixed(2)),
    "LikesRating": double.parse(random2.toStringAsFixed(2)),

    "PhotoPath": photoPath,
    "Specifications": specifications,
    "Colors": colorsList,
  });

  //Set the product as a favorite or not
  await firestore.collection("Favorite").add({
    "ProductID": productID,
    "IsFavorite": isFavorite,
  });

  //Set the card's thumbnail for the product
  await firestore
      .collection("MyCard")
      .add({"ProductID": productID, "ThumbnailPath": thumbnailPath});
}

void addCategory(
    final int categoryID, final String title, final String iconPath) async {
  await firestore
      .collection("Category")
      .add({"CategoryID": categoryID, "Title": title, "IconPath": iconPath});
}

void addCard(final int productID, final String thumbnailPath) async {
  await firestore.collection("MyCard").add({
    "ProductID": productID,
    "ThumbnailPath": thumbnailPath,
  });
}

Future<Map<String, dynamic>> getProductData(final int productID) async {
  QuerySnapshot qs = await firestore
      .collection("Product")
      .where('ProductID', isEqualTo: productID)
      .get();

  if (qs.docs.isNotEmpty) {
    return qs.docs.first.data() as Map<String, dynamic>;
  } else {
    return {};
  }
}

//Returns all products and their corresponding information in a list
//Use the return type like this allProducts[1]["Description"];
//First number is an index (0-based) and the second index is a string key in a map
//Keep in mind some subobjects may be returned
//In other words, you may need to use allProducts[0]["Specifications"]["Battery"] for example
Future<List<Map<String, dynamic>>> getAllProductsData() async {
  List<Map<String, dynamic>> results = [];
  QuerySnapshot qs = await firestore.collection("Product").get();
  if (qs.docs.isEmpty) {
    return [];
  }
  for (var product in qs.docs) {
    results.add(product.data() as Map<String, dynamic>);
  }

  QuerySnapshot fav = await firestore.collection("Favorite").get();
  if (fav.docs.isEmpty) {
    return [];
  }
  int currIdx = 0;

  for (var favorite in fav.docs) {
    final temp = favorite.data() as Map<String, dynamic>;
    results[currIdx]["IsFavorite"] = temp["IsFavorite"];
    currIdx++;
  }
  return results;
}

//Returns all cards and their data in a list
//Use it like this results[0]["Title"]
//No subobjects can be returned
Future<List<Map<String, dynamic>>> getAllCardsData() async {
  List<Map<String, dynamic>> results = [];
  QuerySnapshot qs = await firestore.collection("MyCard").get();

  if (qs.docs.isEmpty) {
    return [];
  }

  for (var card in qs.docs) {
    results.add(card.data() as Map<String, dynamic>);
  }
  return results;
}

Future<List<Map<String, dynamic>>> getAllCategoriesData() async {
  List<Map<String, dynamic>> results = [];
  QuerySnapshot qs = await firestore.collection("Category").get();

  if (qs.docs.isEmpty) {
    return [];
  }

  for (var cat in qs.docs) {
    results.add(cat.data() as Map<String, dynamic>);
  }

  return results;
}

void insertDummyData() {
  addProduct(
      1,
      "Sneakers",
      "These sneakers will make your running experience amazing! No more sore feet or blistered toes!",
      50.0,
      0.0,
      false,
      true,
      "assets/products/Sneaker.png",
      "assets/products/Sneaker.png", {});
  addProduct(
      2,
      "Fitbit Smartwatch",
      "This smart watch has many features for the modern person. It can measure blood pressure, step count, recieve phone calls, and much more!",
      400,
      0.1,
      true,
      true,
      "assets/products/smartwatch.png",
      "assets/products/smartwatch.png",
      {"Battery Life": "At least 2 days", "Model": "Fitbit X20 Pro"});
  addProduct(
      3,
      "Expellion Smart Phone",
      "This smartphone from Expellion has all of the latest features that a modern smart phone needs. It has an amazing 200 megapixel camera, a huge battery, and a beautiful 4K screen",
      2500.0,
      0.0,
      false,
      true,
      "assets/products/phone.png",
      "assets/products/phone.png", {
    "Battery Life": "Not less than 72 hours",
    "Camera": "200 Megapixel",
    "Model": "Expellion X500 Pro"
  });
  addProduct(
      4,
      "Wireless Headphones",
      "This is a dummy set of headphones that will make your sound experience otherworldy!",
      99.9,
      0.0,
      false,
      false,
      "assets/products/headphone.png",
      "assets/products/headphone.png", {
    "Model": "ProLife SoundsBuds 2000",
    "Range": "20Hz to 20KHz",
    "Battery Life": "Atleast 10 hours"
  });
  addProduct(
      5,
      "Casual Shoes",
      "These sneakers will make your walking experience amazing! Your feet will never feel better!",
      40.0,
      0.1,
      true,
      true,
      "assets/products/Sneaker.png",
      "assets/products/Sneaker.png", {});
  addProduct(
      6,
      "Fitbit Deluxe Smartwatch",
      "This smart watch has many features for the modern person. It can measure blood pressure, step count, recieve phone calls, and much more! However, it has advanced features over its regular model",
      800,
      0.0,
      false,
      false,
      "assets/products/smartwatch.png",
      "assets/products/smartwatch.png",
      {"Battery Life": "At least 2 days", "Model": "Fitbit X20 Ultra Pro"});
  addProduct(
      7,
      "Wired Headphones",
      "This is a set of headphones that will make your sound experience otherworldy!",
      200.0,
      0.0,
      false,
      true,
      "assets/products/headphone.png",
      "assets/products/headphone.png",
      {"Model": "ProLife SoundsBuds 1000", "Range": "20Hz to 20KHz"});
  addCategory(1, "Food", "assets/icons/vector.png");
  addCategory(2, "Gifts", "assets/icons/Vector (1).png");
  addCategory(3, "Fashion", "assets/icons/Vector (2).png");
  addCategory(4, "Gadgets", "assets/icons/Vector (3).png");
  addCategory(5, "Accessories", "assets/icons/Vector (4).png");
}
