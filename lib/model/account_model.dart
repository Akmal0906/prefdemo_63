class Account{
  late String email;
  late String person;
  late var phone;
  late var password;
  late var confpassword;

  Account({required this.person,required this.email,required this.phone,required this.password,required this.confpassword});

  Account.fromJson(Map<String,dynamic> json):
        person=json['person'],
        phone=json['phone'],
        email=json['email'],
        password=json['password'],
  confpassword=json['confpassword'];

  Map<String,dynamic> toJson()=>{
    'person':person,
    'email':email,
    'phone':phone,
    'password':password,
    'confpassword':confpassword,
  };
}