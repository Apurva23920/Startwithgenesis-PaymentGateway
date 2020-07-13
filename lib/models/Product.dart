class Product {
  String name;
  String description;
  String image1;
  String image2;
  String image3;
  String currency;
  var price;
  var rating;
  var ratingCount;
  String revName1;
  String revProfileurl1;
  String revReview1;
  var revRating1;
  String revName2;
  String revProfileurl2;
  String revReview2;
  var revRating2;
  String revName3;
  String revProfileurl3;
  String revReview3;
  var revRating3;
  String selName;
  String selProfileurl;
  var selRating;
  String tagTags1;
  String tagTags2;


  Product({
           this.name, 
           this.description,
           this.image1,
           this.image2, 
           this.image3, 
           this.currency, 
           this.price, 
           this.rating, 
           this.ratingCount,
           this.revName1,
           this.revProfileurl1,
           this.revReview1,
           this.revRating1,
           this.revName2,
           this.revProfileurl2,
           this.revReview2,
           this.revRating2,
           this.revName3,
           this.revProfileurl3,
           this.revReview3,
           this.revRating3,
           this.selName,
           this.selProfileurl,
           this.selRating,
           this.tagTags1,
           this.tagTags2,

           });

  factory Product.fromJson(Map<String, dynamic> result){
    return Product(
    name:result['name'],
    description: result['description'],
    image1:result['Images']['url'],
    image2: result['Images']['url'],
    image3: result['Images']['url'],
    currency: result['currency'],
    price: result['price'], 
    rating:result['rating'], 
    ratingCount:result['ratingCount'],
    revName1: result['reviews']['name'],
    revProfileurl1: result['reviews']['profile_url'],
    revReview1: result['reviews']['review'],
    revRating1: result['reviews']['rating'],
    revName2: result['reviews']['name'],
    revProfileurl2: result['reviews']['profile_url'],
    revReview2: result['reviews']['review'],
    revRating2: result['reviews']['rating'],
    revName3: result['reviews']['name'],
    revProfileurl3: result['reviews']['profile_url'],
    revReview3: result['reviews']['review'],
    revRating3: result['reviews']['rating'],
    selName: result['Seller']['Name'],
    selProfileurl: result['Seller']['seller_profile'],
    selRating: result['Seller']['seller_rating'],
    tagTags1: result['product_tags']['tag']['tag'],
    tagTags2: result['product_tags']['tag']['tag'],
    
     );
  }
}

class ProductList{
  List<Product> products;
  ProductList(this.products);

  factory ProductList.fromResponse(List<dynamic> list){
  List<Product> temp = List<Product>();
    list.forEach((item) {
      var product = Product(
        
        name:item['name'],
        description: item['description'],
        image1:item['Images'][0]['url'],
        image2: item['Images'][1]['url'],
        image3: item['Images'][2]['url'],
        currency:item['currency'], 
        price:item['price'],
        rating: item['rating'], 
        ratingCount:item['ratingCount'],
        revName1: item['reviews'][0]['name'],
        revProfileurl1: item['reviews'][0]['profile_url'],
        revReview1: item['reviews'][0]['review'],
        revRating1: item['reviews'][0]['rating'],
        revName2: item['reviews'][1]['name'],
        revProfileurl2: item['reviews'][1]['profile_url'],
        revReview2: item['reviews'][1]['review'],
        revRating2: item['reviews'][1]['rating'],
        revName3: item['reviews'][2]['name'],
        revProfileurl3: item['reviews'][2]['profile_url'],
        revReview3: item['reviews'][2]['review'],
        revRating3: item['reviews'][2]['rating'],
        selName: item['Seller']['Name'],
        selProfileurl: item['Seller']['seller_profile'],
        selRating: item['Seller']['seller_rating'],
        tagTags1: item['product_tags'][0]['tag'][0]['tag'],
        tagTags2: item['product_tags'][1]['tag'][0]['tag'],
    );
      temp.add(
        product);
    
    });
    return ProductList(temp);
  }
}
