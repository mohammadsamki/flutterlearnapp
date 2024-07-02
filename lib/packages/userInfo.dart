class userInfo {
  String? fName;
  String? lName;
  String? email;
  String? password;

  userInfo(
      {required this.fName,
      required this.lName,
      required this.email,
      required this.password});

  set fNameSetter(String? fname) => fName = fname;
  String? fNameGetter() => fName;

  set lNameSetter(String? lname) => lName = lname;
  String? lNameGetter() => lName;

  set emailSetter (String? Email) => email = Email;
  String? emailGetter() => email;

  set passwordSetter(String? pass) => password = pass;
  String? passwordGetter() => password;
}
