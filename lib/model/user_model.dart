class User{
  late String email;
  late int id;
  late String password;

  User({required this.email,required this.id,required this.password});
  User.from({required this.email,required this.password,required this.id});
  User.fromJson(Map<String,dynamic> json):
      id=json['id'],
      email=json['email'],
  password=json['password'];

  Map<String,dynamic> toJson()=>{
    'id':id,
    'email':email,
    'password':password
  };

}