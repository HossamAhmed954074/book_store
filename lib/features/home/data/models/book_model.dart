/// kind : "books#volume"
/// id : "AQgvDwAAQBAJ"
/// etag : "Lqr+Ugq/8+k"
/// selfLink : "https://www.googleapis.com/books/v1/volumes/AQgvDwAAQBAJ"
/// volumeInfo : {"title":"Invent Your Own Computer Games with Python, 4th Edition","authors":["Al Sweigart"],"publisher":"No Starch Press","publishedDate":"2016-12-16","description":"Invent Your Own Computer Games with Python will teach you how to make computer games using the popular Python programming language—even if you’ve never programmed before! Begin by building classic games like Hangman, Guess the Number, and Tic-Tac-Toe, and then work your way up to more advanced games, like a text-based treasure hunting game and an animated collision-dodging game with sound effects. Along the way, you’ll learn key programming and math concepts that will help you take your game programming to the next level. Learn how to: –Combine loops, variables, and flow control statements into real working programs –Choose the right data structures for the job, such as lists, dictionaries, and tuples –Add graphics and animation to your games with the pygame module –Handle keyboard and mouse input –Program simple artificial intelligence so you can play against the computer –Use cryptography to convert text messages into secret code –Debug your programs and find common errors As you work through each game, you’ll build a solid foundation in Python and an understanding of computer science fundamentals. What new game will you create with the power of Python? The projects in this book are compatible with Python 3.","industryIdentifiers":[{"type":"ISBN_13","identifier":"9781593278113"},{"type":"ISBN_10","identifier":"159327811X"}],"readingModes":{"text":true,"image":false},"pageCount":377,"printType":"BOOK","categories":["Computers"],"maturityRating":"NOT_MATURE","allowAnonLogging":true,"contentVersion":"1.3.3.0.preview.2","panelizationSummary":{"containsEpubBubbles":false,"containsImageBubbles":false},"imageLinks":{"smallThumbnail":"http://books.google.com/books/content?id=AQgvDwAAQBAJ&printsec=frontcover&img=1&zoom=5&edge=curl&source=gbs_api","thumbnail":"http://books.google.com/books/content?id=AQgvDwAAQBAJ&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api"},"language":"en","previewLink":"http://books.google.com/books?id=AQgvDwAAQBAJ&printsec=frontcover&dq=programming&hl=&cd=1&source=gbs_api","infoLink":"https://play.google.com/store/books/details?id=AQgvDwAAQBAJ&source=gbs_api","canonicalVolumeLink":"https://play.google.com/store/books/details?id=AQgvDwAAQBAJ"}
/// saleInfo : {"country":"US","saleability":"FOR_SALE","isEbook":true,"listPrice":{"amount":28.99,"currencyCode":"USD"},"retailPrice":{"amount":28.99,"currencyCode":"USD"},"buyLink":"https://play.google.com/store/books/details?id=AQgvDwAAQBAJ&rdid=book-AQgvDwAAQBAJ&rdot=1&source=gbs_api","offers":[{"finskyOfferType":1,"listPrice":{"amountInMicros":28990000,"currencyCode":"USD"},"retailPrice":{"amountInMicros":28990000,"currencyCode":"USD"},"giftable":true}]}
/// accessInfo : {"country":"US","viewability":"PARTIAL","embeddable":true,"publicDomain":false,"textToSpeechPermission":"ALLOWED","epub":{"isAvailable":true},"pdf":{"isAvailable":false},"webReaderLink":"http://play.google.com/books/reader?id=AQgvDwAAQBAJ&hl=&source=gbs_api","accessViewStatus":"SAMPLE","quoteSharingAllowed":false}
/// searchInfo : {"textSnippet":"What new game will you create with the power of Python? The projects in this book are compatible with Python 3."}

class BookModel {
  BookModel({
      String? kind, 
      String? id, 
      String? etag, 
      String? selfLink, 
      VolumeInfo? volumeInfo, 
      SaleInfo? saleInfo, 
      AccessInfo? accessInfo, 
      SearchInfo? searchInfo,}){
    _kind = kind;
    _id = id;
    _etag = etag;
    _selfLink = selfLink;
    _volumeInfo = volumeInfo;
    _saleInfo = saleInfo;
    _accessInfo = accessInfo;
    _searchInfo = searchInfo;
}

  BookModel.fromJson(dynamic json) {
    _kind = json['kind'];
    _id = json['id'];
    _etag = json['etag'];
    _selfLink = json['selfLink'];
    _volumeInfo = json['volumeInfo'] != null ? VolumeInfo.fromJson(json['volumeInfo']) : null;
    _saleInfo = json['saleInfo'] != null ? SaleInfo.fromJson(json['saleInfo']) : null;
    _accessInfo = json['accessInfo'] != null ? AccessInfo.fromJson(json['accessInfo']) : null;
    _searchInfo = json['searchInfo'] != null ? SearchInfo.fromJson(json['searchInfo']) : null;
  }
  String? _kind;
  String? _id;
  String? _etag;
  String? _selfLink;
  VolumeInfo? _volumeInfo;
  SaleInfo? _saleInfo;
  AccessInfo? _accessInfo;
  SearchInfo? _searchInfo;
BookModel copyWith({  String? kind,
  String? id,
  String? etag,
  String? selfLink,
  VolumeInfo? volumeInfo,
  SaleInfo? saleInfo,
  AccessInfo? accessInfo,
  SearchInfo? searchInfo,
}) => BookModel(  kind: kind ?? _kind,
  id: id ?? _id,
  etag: etag ?? _etag,
  selfLink: selfLink ?? _selfLink,
  volumeInfo: volumeInfo ?? _volumeInfo,
  saleInfo: saleInfo ?? _saleInfo,
  accessInfo: accessInfo ?? _accessInfo,
  searchInfo: searchInfo ?? _searchInfo,
);
  String? get kind => _kind;
  String? get id => _id;
  String? get etag => _etag;
  String? get selfLink => _selfLink;
  VolumeInfo? get volumeInfo => _volumeInfo;
  SaleInfo? get saleInfo => _saleInfo;
  AccessInfo? get accessInfo => _accessInfo;
  SearchInfo? get searchInfo => _searchInfo;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['kind'] = _kind;
    map['id'] = _id;
    map['etag'] = _etag;
    map['selfLink'] = _selfLink;
    if (_volumeInfo != null) {
      map['volumeInfo'] = _volumeInfo?.toJson();
    }
    if (_saleInfo != null) {
      map['saleInfo'] = _saleInfo?.toJson();
    }
    if (_accessInfo != null) {
      map['accessInfo'] = _accessInfo?.toJson();
    }
    if (_searchInfo != null) {
      map['searchInfo'] = _searchInfo?.toJson();
    }
    return map;
  }

}

/// textSnippet : "What new game will you create with the power of Python? The projects in this book are compatible with Python 3."

class SearchInfo {
  SearchInfo({
      String? textSnippet,}){
    _textSnippet = textSnippet;
}

  SearchInfo.fromJson(dynamic json) {
    _textSnippet = json['textSnippet'];
  }
  String? _textSnippet;
SearchInfo copyWith({  String? textSnippet,
}) => SearchInfo(  textSnippet: textSnippet ?? _textSnippet,
);
  String? get textSnippet => _textSnippet;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['textSnippet'] = _textSnippet;
    return map;
  }

}

/// country : "US"
/// viewability : "PARTIAL"
/// embeddable : true
/// publicDomain : false
/// textToSpeechPermission : "ALLOWED"
/// epub : {"isAvailable":true}
/// pdf : {"isAvailable":false}
/// webReaderLink : "http://play.google.com/books/reader?id=AQgvDwAAQBAJ&hl=&source=gbs_api"
/// accessViewStatus : "SAMPLE"
/// quoteSharingAllowed : false

class AccessInfo {
  AccessInfo({
      String? country, 
      String? viewability, 
      bool? embeddable, 
      bool? publicDomain, 
      String? textToSpeechPermission, 
      Epub? epub, 
      Pdf? pdf, 
      String? webReaderLink, 
      String? accessViewStatus, 
      bool? quoteSharingAllowed,}){
    _country = country;
    _viewability = viewability;
    _embeddable = embeddable;
    _publicDomain = publicDomain;
    _textToSpeechPermission = textToSpeechPermission;
    _epub = epub;
    _pdf = pdf;
    _webReaderLink = webReaderLink;
    _accessViewStatus = accessViewStatus;
    _quoteSharingAllowed = quoteSharingAllowed;
}

  AccessInfo.fromJson(dynamic json) {
    _country = json['country'];
    _viewability = json['viewability'];
    _embeddable = json['embeddable'];
    _publicDomain = json['publicDomain'];
    _textToSpeechPermission = json['textToSpeechPermission'];
    _epub = json['epub'] != null ? Epub.fromJson(json['epub']) : null;
    _pdf = json['pdf'] != null ? Pdf.fromJson(json['pdf']) : null;
    _webReaderLink = json['webReaderLink'];
    _accessViewStatus = json['accessViewStatus'];
    _quoteSharingAllowed = json['quoteSharingAllowed'];
  }
  String? _country;
  String? _viewability;
  bool? _embeddable;
  bool? _publicDomain;
  String? _textToSpeechPermission;
  Epub? _epub;
  Pdf? _pdf;
  String? _webReaderLink;
  String? _accessViewStatus;
  bool? _quoteSharingAllowed;
AccessInfo copyWith({  String? country,
  String? viewability,
  bool? embeddable,
  bool? publicDomain,
  String? textToSpeechPermission,
  Epub? epub,
  Pdf? pdf,
  String? webReaderLink,
  String? accessViewStatus,
  bool? quoteSharingAllowed,
}) => AccessInfo(  country: country ?? _country,
  viewability: viewability ?? _viewability,
  embeddable: embeddable ?? _embeddable,
  publicDomain: publicDomain ?? _publicDomain,
  textToSpeechPermission: textToSpeechPermission ?? _textToSpeechPermission,
  epub: epub ?? _epub,
  pdf: pdf ?? _pdf,
  webReaderLink: webReaderLink ?? _webReaderLink,
  accessViewStatus: accessViewStatus ?? _accessViewStatus,
  quoteSharingAllowed: quoteSharingAllowed ?? _quoteSharingAllowed,
);
  String? get country => _country;
  String? get viewability => _viewability;
  bool? get embeddable => _embeddable;
  bool? get publicDomain => _publicDomain;
  String? get textToSpeechPermission => _textToSpeechPermission;
  Epub? get epub => _epub;
  Pdf? get pdf => _pdf;
  String? get webReaderLink => _webReaderLink;
  String? get accessViewStatus => _accessViewStatus;
  bool? get quoteSharingAllowed => _quoteSharingAllowed;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['country'] = _country;
    map['viewability'] = _viewability;
    map['embeddable'] = _embeddable;
    map['publicDomain'] = _publicDomain;
    map['textToSpeechPermission'] = _textToSpeechPermission;
    if (_epub != null) {
      map['epub'] = _epub?.toJson();
    }
    if (_pdf != null) {
      map['pdf'] = _pdf?.toJson();
    }
    map['webReaderLink'] = _webReaderLink;
    map['accessViewStatus'] = _accessViewStatus;
    map['quoteSharingAllowed'] = _quoteSharingAllowed;
    return map;
  }

}

/// isAvailable : false

class Pdf {
  Pdf({
      bool? isAvailable,}){
    _isAvailable = isAvailable;
}

  Pdf.fromJson(dynamic json) {
    _isAvailable = json['isAvailable'];
  }
  bool? _isAvailable;
Pdf copyWith({  bool? isAvailable,
}) => Pdf(  isAvailable: isAvailable ?? _isAvailable,
);
  bool? get isAvailable => _isAvailable;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['isAvailable'] = _isAvailable;
    return map;
  }

}

/// isAvailable : true

class Epub {
  Epub({
      bool? isAvailable,}){
    _isAvailable = isAvailable;
}

  Epub.fromJson(dynamic json) {
    _isAvailable = json['isAvailable'];
  }
  bool? _isAvailable;
Epub copyWith({  bool? isAvailable,
}) => Epub(  isAvailable: isAvailable ?? _isAvailable,
);
  bool? get isAvailable => _isAvailable;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['isAvailable'] = _isAvailable;
    return map;
  }

}

/// country : "US"
/// saleability : "FOR_SALE"
/// isEbook : true
/// listPrice : {"amount":28.99,"currencyCode":"USD"}
/// retailPrice : {"amount":28.99,"currencyCode":"USD"}
/// buyLink : "https://play.google.com/store/books/details?id=AQgvDwAAQBAJ&rdid=book-AQgvDwAAQBAJ&rdot=1&source=gbs_api"
/// offers : [{"finskyOfferType":1,"listPrice":{"amountInMicros":28990000,"currencyCode":"USD"},"retailPrice":{"amountInMicros":28990000,"currencyCode":"USD"},"giftable":true}]

class SaleInfo {
  SaleInfo({
      String? country, 
      String? saleability, 
      bool? isEbook, 
      ListPrice? listPrice, 
      RetailPrice? retailPrice, 
      String? buyLink, 
      List<Offers>? offers,}){
    _country = country;
    _saleability = saleability;
    _isEbook = isEbook;
    _listPrice = listPrice;
    _retailPrice = retailPrice;
    _buyLink = buyLink;
    _offers = offers;
}

  SaleInfo.fromJson(dynamic json) {
    _country = json['country'];
    _saleability = json['saleability'];
    _isEbook = json['isEbook'];
    _listPrice = json['listPrice'];
    _retailPrice = json['retailPrice'] != null ? RetailPrice.fromJson(json['retailPrice']) : null;
    _buyLink = json['buyLink'];
    if (json['offers'] != null) {
      _offers = [];
      json['offers'].forEach((v) {
        _offers?.add(Offers.fromJson(v));
      });
    }
  }
  String? _country;
  String? _saleability;
  bool? _isEbook;
  ListPrice? _listPrice;
  RetailPrice? _retailPrice;
  String? _buyLink;
  List<Offers>? _offers;
SaleInfo copyWith({  String? country,
  String? saleability,
  bool? isEbook,
  ListPrice? listPrice,
  RetailPrice? retailPrice,
  String? buyLink,
  List<Offers>? offers,
}) => SaleInfo(  country: country ?? _country,
  saleability: saleability ?? _saleability,
  isEbook: isEbook ?? _isEbook,
  listPrice: listPrice ?? _listPrice,
  retailPrice: retailPrice ?? _retailPrice,
  buyLink: buyLink ?? _buyLink,
  offers: offers ?? _offers,
);
  String? get country => _country;
  String? get saleability => _saleability;
  bool? get isEbook => _isEbook;
  ListPrice? get listPrice => _listPrice;
  RetailPrice? get retailPrice => _retailPrice;
  String? get buyLink => _buyLink;
  List<Offers>? get offers => _offers;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['country'] = _country;
    map['saleability'] = _saleability;
    map['isEbook'] = _isEbook;
    map['listPrice'] = _listPrice;
    if (_retailPrice != null) {
      map['retailPrice'] = _retailPrice?.toJson();
    }
    map['buyLink'] = _buyLink;
    if (_offers != null) {
      map['offers'] = _offers?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}

/// finskyOfferType : 1
/// listPrice : {"amountInMicros":28990000,"currencyCode":"USD"}
/// retailPrice : {"amountInMicros":28990000,"currencyCode":"USD"}
/// giftable : true

class Offers {
  Offers({
      num? finskyOfferType, 
      ListPrice? listPrice, 
      RetailPrice? retailPrice, 
      bool? giftable,}){
    _finskyOfferType = finskyOfferType;
    _listPrice = listPrice;
    _retailPrice = retailPrice;
    _giftable = giftable;
}

  Offers.fromJson(dynamic json) {
    _finskyOfferType = json['finskyOfferType'];
    _listPrice = json['listPrice'];
    _retailPrice = json['retailPrice'] != null ? RetailPrice.fromJson(json['retailPrice']) : null;
    _giftable = json['giftable'];
  }
  num? _finskyOfferType;
  ListPrice? _listPrice;
  RetailPrice? _retailPrice;
  bool? _giftable;
Offers copyWith({  num? finskyOfferType,
  ListPrice? listPrice,
  RetailPrice? retailPrice,
  bool? giftable,
}) => Offers(  finskyOfferType: finskyOfferType ?? _finskyOfferType,
  listPrice: listPrice ?? _listPrice,
  retailPrice: retailPrice ?? _retailPrice,
  giftable: giftable ?? _giftable,
);
  num? get finskyOfferType => _finskyOfferType;
  ListPrice? get listPrice => _listPrice;
  RetailPrice? get retailPrice => _retailPrice;
  bool? get giftable => _giftable;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['finskyOfferType'] = _finskyOfferType;
    map['listPrice'] = _listPrice;
    if (_retailPrice != null) {
      map['retailPrice'] = _retailPrice?.toJson();
    }
    map['giftable'] = _giftable;
    return map;
  }

}

/// amountInMicros : 28990000
/// currencyCode : "USD"

class RetailPrice {
  RetailPrice({
      num? amountInMicros, 
      String? currencyCode,}){
    _amountInMicros = amountInMicros;
    _currencyCode = currencyCode;
}

  RetailPrice.fromJson(dynamic json) {
    _amountInMicros = json['amountInMicros'];
    _currencyCode = json['currencyCode'];
  }
  num? _amountInMicros;
  String? _currencyCode;
RetailPrice copyWith({  num? amountInMicros,
  String? currencyCode,
}) => RetailPrice(  amountInMicros: amountInMicros ?? _amountInMicros,
  currencyCode: currencyCode ?? _currencyCode,
);
  num? get amountInMicros => _amountInMicros;
  String? get currencyCode => _currencyCode;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['amountInMicros'] = _amountInMicros;
    map['currencyCode'] = _currencyCode;
    return map;
  }

}

/// amountInMicros : 28990000
/// currencyCode : "USD"

class ListPrice {
  ListPrice({
      num? amountInMicros, 
      String? currencyCode,}){
    _amountInMicros = amountInMicros;
    _currencyCode = currencyCode;
}

  ListPrice.fromJson(dynamic json) {
    _amountInMicros = json['amountInMicros'];
    _currencyCode = json['currencyCode'];
  }
  num? _amountInMicros;
  String? _currencyCode;
ListPrice copyWith({  num? amountInMicros,
  String? currencyCode,
}) => ListPrice(  amountInMicros: amountInMicros ?? _amountInMicros,
  currencyCode: currencyCode ?? _currencyCode,
);
  num? get amountInMicros => _amountInMicros;
  String? get currencyCode => _currencyCode;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['amountInMicros'] = _amountInMicros;
    map['currencyCode'] = _currencyCode;
    return map;
  }

}

/// amount : 28.99
/// currencyCode : "USD"

class RetailPrice {
  RetailPrice({
      num? amount, 
      String? currencyCode,}){
    _amount = amount;
    _currencyCode = currencyCode;
}

  RetailPrice.fromJson(dynamic json) {
    _amount = json['amount'];
    _currencyCode = json['currencyCode'];
  }
  num? _amount;
  String? _currencyCode;
RetailPrice copyWith({  num? amount,
  String? currencyCode,
}) => RetailPrice(  amount: amount ?? _amount,
  currencyCode: currencyCode ?? _currencyCode,
);
  num? get amount => _amount;
  String? get currencyCode => _currencyCode;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['amount'] = _amount;
    map['currencyCode'] = _currencyCode;
    return map;
  }

}

/// amount : 28.99
/// currencyCode : "USD"

class ListPrice {
  ListPrice({
      num? amount, 
      String? currencyCode,}){
    _amount = amount;
    _currencyCode = currencyCode;
}

  ListPrice.fromJson(dynamic json) {
    _amount = json['amount'];
    _currencyCode = json['currencyCode'];
  }
  num? _amount;
  String? _currencyCode;
ListPrice copyWith({  num? amount,
  String? currencyCode,
}) => ListPrice(  amount: amount ?? _amount,
  currencyCode: currencyCode ?? _currencyCode,
);
  num? get amount => _amount;
  String? get currencyCode => _currencyCode;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['amount'] = _amount;
    map['currencyCode'] = _currencyCode;
    return map;
  }

}

/// title : "Invent Your Own Computer Games with Python, 4th Edition"
/// authors : ["Al Sweigart"]
/// publisher : "No Starch Press"
/// publishedDate : "2016-12-16"
/// description : "Invent Your Own Computer Games with Python will teach you how to make computer games using the popular Python programming language—even if you’ve never programmed before! Begin by building classic games like Hangman, Guess the Number, and Tic-Tac-Toe, and then work your way up to more advanced games, like a text-based treasure hunting game and an animated collision-dodging game with sound effects. Along the way, you’ll learn key programming and math concepts that will help you take your game programming to the next level. Learn how to: –Combine loops, variables, and flow control statements into real working programs –Choose the right data structures for the job, such as lists, dictionaries, and tuples –Add graphics and animation to your games with the pygame module –Handle keyboard and mouse input –Program simple artificial intelligence so you can play against the computer –Use cryptography to convert text messages into secret code –Debug your programs and find common errors As you work through each game, you’ll build a solid foundation in Python and an understanding of computer science fundamentals. What new game will you create with the power of Python? The projects in this book are compatible with Python 3."
/// industryIdentifiers : [{"type":"ISBN_13","identifier":"9781593278113"},{"type":"ISBN_10","identifier":"159327811X"}]
/// readingModes : {"text":true,"image":false}
/// pageCount : 377
/// printType : "BOOK"
/// categories : ["Computers"]
/// maturityRating : "NOT_MATURE"
/// allowAnonLogging : true
/// contentVersion : "1.3.3.0.preview.2"
/// panelizationSummary : {"containsEpubBubbles":false,"containsImageBubbles":false}
/// imageLinks : {"smallThumbnail":"http://books.google.com/books/content?id=AQgvDwAAQBAJ&printsec=frontcover&img=1&zoom=5&edge=curl&source=gbs_api","thumbnail":"http://books.google.com/books/content?id=AQgvDwAAQBAJ&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api"}
/// language : "en"
/// previewLink : "http://books.google.com/books?id=AQgvDwAAQBAJ&printsec=frontcover&dq=programming&hl=&cd=1&source=gbs_api"
/// infoLink : "https://play.google.com/store/books/details?id=AQgvDwAAQBAJ&source=gbs_api"
/// canonicalVolumeLink : "https://play.google.com/store/books/details?id=AQgvDwAAQBAJ"

class VolumeInfo {
  VolumeInfo({
      String? title, 
      List<String>? authors, 
      String? publisher, 
      String? publishedDate, 
      String? description, 
      List<IndustryIdentifiers>? industryIdentifiers, 
      ReadingModes? readingModes, 
      num? pageCount, 
      String? printType, 
      List<String>? categories, 
      String? maturityRating, 
      bool? allowAnonLogging, 
      String? contentVersion, 
      PanelizationSummary? panelizationSummary, 
      ImageLinks? imageLinks, 
      String? language, 
      String? previewLink, 
      String? infoLink, 
      String? canonicalVolumeLink,}){
    _title = title;
    _authors = authors;
    _publisher = publisher;
    _publishedDate = publishedDate;
    _description = description;
    _industryIdentifiers = industryIdentifiers;
    _readingModes = readingModes;
    _pageCount = pageCount;
    _printType = printType;
    _categories = categories;
    _maturityRating = maturityRating;
    _allowAnonLogging = allowAnonLogging;
    _contentVersion = contentVersion;
    _panelizationSummary = panelizationSummary;
    _imageLinks = imageLinks;
    _language = language;
    _previewLink = previewLink;
    _infoLink = infoLink;
    _canonicalVolumeLink = canonicalVolumeLink;
}

  VolumeInfo.fromJson(dynamic json) {
    _title = json['title'];
    _authors = json['authors'] != null ? json['authors'].cast<String>() : [];
    _publisher = json['publisher'];
    _publishedDate = json['publishedDate'];
    _description = json['description'];
    if (json['industryIdentifiers'] != null) {
      _industryIdentifiers = [];
      json['industryIdentifiers'].forEach((v) {
        _industryIdentifiers?.add(IndustryIdentifiers.fromJson(v));
      });
    }
    _readingModes = json['readingModes'] != null ? ReadingModes.fromJson(json['readingModes']) : null;
    _pageCount = json['pageCount'];
    _printType = json['printType'];
    _categories = json['categories'] != null ? json['categories'].cast<String>() : [];
    _maturityRating = json['maturityRating'];
    _allowAnonLogging = json['allowAnonLogging'];
    _contentVersion = json['contentVersion'];
    _panelizationSummary = json['panelizationSummary'] != null ? PanelizationSummary.fromJson(json['panelizationSummary']) : null;
    _imageLinks = json['imageLinks'] != null ? ImageLinks.fromJson(json['imageLinks']) : null;
    _language = json['language'];
    _previewLink = json['previewLink'];
    _infoLink = json['infoLink'];
    _canonicalVolumeLink = json['canonicalVolumeLink'];
  }
  String? _title;
  List<String>? _authors;
  String? _publisher;
  String? _publishedDate;
  String? _description;
  List<IndustryIdentifiers>? _industryIdentifiers;
  ReadingModes? _readingModes;
  num? _pageCount;
  String? _printType;
  List<String>? _categories;
  String? _maturityRating;
  bool? _allowAnonLogging;
  String? _contentVersion;
  PanelizationSummary? _panelizationSummary;
  ImageLinks? _imageLinks;
  String? _language;
  String? _previewLink;
  String? _infoLink;
  String? _canonicalVolumeLink;
VolumeInfo copyWith({  String? title,
  List<String>? authors,
  String? publisher,
  String? publishedDate,
  String? description,
  List<IndustryIdentifiers>? industryIdentifiers,
  ReadingModes? readingModes,
  num? pageCount,
  String? printType,
  List<String>? categories,
  String? maturityRating,
  bool? allowAnonLogging,
  String? contentVersion,
  PanelizationSummary? panelizationSummary,
  ImageLinks? imageLinks,
  String? language,
  String? previewLink,
  String? infoLink,
  String? canonicalVolumeLink,
}) => VolumeInfo(  title: title ?? _title,
  authors: authors ?? _authors,
  publisher: publisher ?? _publisher,
  publishedDate: publishedDate ?? _publishedDate,
  description: description ?? _description,
  industryIdentifiers: industryIdentifiers ?? _industryIdentifiers,
  readingModes: readingModes ?? _readingModes,
  pageCount: pageCount ?? _pageCount,
  printType: printType ?? _printType,
  categories: categories ?? _categories,
  maturityRating: maturityRating ?? _maturityRating,
  allowAnonLogging: allowAnonLogging ?? _allowAnonLogging,
  contentVersion: contentVersion ?? _contentVersion,
  panelizationSummary: panelizationSummary ?? _panelizationSummary,
  imageLinks: imageLinks ?? _imageLinks,
  language: language ?? _language,
  previewLink: previewLink ?? _previewLink,
  infoLink: infoLink ?? _infoLink,
  canonicalVolumeLink: canonicalVolumeLink ?? _canonicalVolumeLink,
);
  String? get title => _title;
  List<String>? get authors => _authors;
  String? get publisher => _publisher;
  String? get publishedDate => _publishedDate;
  String? get description => _description;
  List<IndustryIdentifiers>? get industryIdentifiers => _industryIdentifiers;
  ReadingModes? get readingModes => _readingModes;
  num? get pageCount => _pageCount;
  String? get printType => _printType;
  List<String>? get categories => _categories;
  String? get maturityRating => _maturityRating;
  bool? get allowAnonLogging => _allowAnonLogging;
  String? get contentVersion => _contentVersion;
  PanelizationSummary? get panelizationSummary => _panelizationSummary;
  ImageLinks? get imageLinks => _imageLinks;
  String? get language => _language;
  String? get previewLink => _previewLink;
  String? get infoLink => _infoLink;
  String? get canonicalVolumeLink => _canonicalVolumeLink;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['title'] = _title;
    map['authors'] = _authors;
    map['publisher'] = _publisher;
    map['publishedDate'] = _publishedDate;
    map['description'] = _description;
    if (_industryIdentifiers != null) {
      map['industryIdentifiers'] = _industryIdentifiers?.map((v) => v.toJson()).toList();
    }
    if (_readingModes != null) {
      map['readingModes'] = _readingModes?.toJson();
    }
    map['pageCount'] = _pageCount;
    map['printType'] = _printType;
    map['categories'] = _categories;
    map['maturityRating'] = _maturityRating;
    map['allowAnonLogging'] = _allowAnonLogging;
    map['contentVersion'] = _contentVersion;
    if (_panelizationSummary != null) {
      map['panelizationSummary'] = _panelizationSummary?.toJson();
    }
    if (_imageLinks != null) {
      map['imageLinks'] = _imageLinks?.toJson();
    }
    map['language'] = _language;
    map['previewLink'] = _previewLink;
    map['infoLink'] = _infoLink;
    map['canonicalVolumeLink'] = _canonicalVolumeLink;
    return map;
  }

}

/// smallThumbnail : "http://books.google.com/books/content?id=AQgvDwAAQBAJ&printsec=frontcover&img=1&zoom=5&edge=curl&source=gbs_api"
/// thumbnail : "http://books.google.com/books/content?id=AQgvDwAAQBAJ&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api"

class ImageLinks {
  ImageLinks({
      String? smallThumbnail, 
      String? thumbnail,}){
    _smallThumbnail = smallThumbnail;
    _thumbnail = thumbnail;
}

  ImageLinks.fromJson(dynamic json) {
    _smallThumbnail = json['smallThumbnail'];
    _thumbnail = json['thumbnail'];
  }
  String? _smallThumbnail;
  String? _thumbnail;
ImageLinks copyWith({  String? smallThumbnail,
  String? thumbnail,
}) => ImageLinks(  smallThumbnail: smallThumbnail ?? _smallThumbnail,
  thumbnail: thumbnail ?? _thumbnail,
);
  String? get smallThumbnail => _smallThumbnail;
  String? get thumbnail => _thumbnail;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['smallThumbnail'] = _smallThumbnail;
    map['thumbnail'] = _thumbnail;
    return map;
  }

}

/// containsEpubBubbles : false
/// containsImageBubbles : false

class PanelizationSummary {
  PanelizationSummary({
      bool? containsEpubBubbles, 
      bool? containsImageBubbles,}){
    _containsEpubBubbles = containsEpubBubbles;
    _containsImageBubbles = containsImageBubbles;
}

  PanelizationSummary.fromJson(dynamic json) {
    _containsEpubBubbles = json['containsEpubBubbles'];
    _containsImageBubbles = json['containsImageBubbles'];
  }
  bool? _containsEpubBubbles;
  bool? _containsImageBubbles;
PanelizationSummary copyWith({  bool? containsEpubBubbles,
  bool? containsImageBubbles,
}) => PanelizationSummary(  containsEpubBubbles: containsEpubBubbles ?? _containsEpubBubbles,
  containsImageBubbles: containsImageBubbles ?? _containsImageBubbles,
);
  bool? get containsEpubBubbles => _containsEpubBubbles;
  bool? get containsImageBubbles => _containsImageBubbles;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['containsEpubBubbles'] = _containsEpubBubbles;
    map['containsImageBubbles'] = _containsImageBubbles;
    return map;
  }

}

/// text : true
/// image : false

class ReadingModes {
  ReadingModes({
      bool? text, 
      bool? image,}){
    _text = text;
    _image = image;
}

  ReadingModes.fromJson(dynamic json) {
    _text = json['text'];
    _image = json['image'];
  }
  bool? _text;
  bool? _image;
ReadingModes copyWith({  bool? text,
  bool? image,
}) => ReadingModes(  text: text ?? _text,
  image: image ?? _image,
);
  bool? get text => _text;
  bool? get image => _image;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['text'] = _text;
    map['image'] = _image;
    return map;
  }

}

/// type : "ISBN_13"
/// identifier : "9781593278113"

class IndustryIdentifiers {
  IndustryIdentifiers({
      String? type, 
      String? identifier,}){
    _type = type;
    _identifier = identifier;
}

  IndustryIdentifiers.fromJson(dynamic json) {
    _type = json['type'];
    _identifier = json['identifier'];
  }
  String? _type;
  String? _identifier;
IndustryIdentifiers copyWith({  String? type,
  String? identifier,
}) => IndustryIdentifiers(  type: type ?? _type,
  identifier: identifier ?? _identifier,
);
  String? get type => _type;
  String? get identifier => _identifier;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['type'] = _type;
    map['identifier'] = _identifier;
    return map;
  }

}