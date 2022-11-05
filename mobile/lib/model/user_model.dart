
/*class UserModel {
 late String _expiry;
 late String _token;

  UserModel({String? expiry, String? token}) {
    this._expiry = expiry!;
    this._token = token!;
  }

  String get expiry => _expiry;
  set expiry(String expiry) => _expiry = expiry;
  String get token => _token;
  set token(String token) => _token = token;

  UserModel.fromJson(Map<String, dynamic> json) {
    _expiry = json['expiry'];
    _token = json['token'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['expiry'] = this._expiry;
    data['token'] = this._token;
    return data;
  }
}
*/



class UserModel {
  String? token;
   //String? expiry;


  UserModel({this.token});

  UserModel.fromJson(Map<String, dynamic> json) {
    token = json['token'];
   // expiry = json['expiry'];

  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data =new Map<String, dynamic>();
    data['token'] = this.token;
    //data['expiry'] = this.expiry;

    return data;
  }
}

