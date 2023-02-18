class ClubModel {
  String? id;
  String? email;
  String? nameYourClub;
  String? clubFlag;
  String? countryName;
  String? countryFlag;
  String? adressYourClub;
  String? yourRoleinClub;
  String? firstName;
  String? lastName;
  String? dateOfBirth;
  String? yourActualLocation;
  String? yourPhoneNumber;
  String? phoneCode;
  String? transfermarktUrl;
  String? validYourIdendity;
  String? validYourIdendity1;

  ClubModel(
      {this.id,
      this.email,
      this.nameYourClub,
      this.clubFlag,
      this.countryName,
      this.countryFlag,
      this.adressYourClub,
      this.yourRoleinClub,
      this.firstName,
      this.lastName,
      this.dateOfBirth,
      this.yourActualLocation,
      this.yourPhoneNumber,
      this.phoneCode,
      this.transfermarktUrl,
      this.validYourIdendity,
      this.validYourIdendity1});

  ClubModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    email = json['email'];
    nameYourClub = json['nameYourClub'];
    clubFlag = json['clubFlag'];
    adressYourClub = json['adressYourClub'];
    countryName = json['countryName'];
    countryFlag = json['countryFlag'];
    yourRoleinClub = json['yourRoleinClub'];
    firstName = json['firstName'];
    lastName = json['lastName'];
    dateOfBirth = json['dateOfBirth'];
    yourPhoneNumber = json['yourPhoneNumber'];
    phoneCode = json['phoneCode'];
    yourActualLocation = json['yourActualLocation'];
    transfermarktUrl = json['transfermarktUrl'];
    validYourIdendity = json['validYourIdendity'];
    validYourIdendity1 = json['validYourIdendity1'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = id;
    data['email'] = email;
    data['nameYourClub'] = nameYourClub;
    data['clubFlag'] = clubFlag;
    data['countryName'] = countryName;
    data['countryFlag'] = countryFlag;
    data['adressYourClub'] = adressYourClub;
    data['yourRoleinClub'] = yourRoleinClub;
    data['firstName'] = firstName;
    data['lastName'] = lastName;
    data['dateOfBirth'] = dateOfBirth;
    data['yourActualLocation'] = yourActualLocation;
    data['yourPhoneNumber'] = yourPhoneNumber;
    data['phoneCode'] = phoneCode;
    data['transfermarktUrl'] = transfermarktUrl;
    data['validYourIdendity'] = validYourIdendity;
    data['validYourIdendity1'] = validYourIdendity1;
    return data;
  }
}
