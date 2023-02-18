class AgencyModel {
  String? id;
  String? email;
  String? nameYourAgency;
  String? countryName;
  String? countryFlag;
  String? adressYourAgency;
  String? yourRoleinAgency;
  String? firstName;
  String? lastName;
  String? dateOfBirth;
  String? youActualLocation;
  String? yourPhoneNumber;
  String? phoneCode;
  String? transfermarktUrl;
  String? validYourIdendity;
  String? validYourIdendity1;

  AgencyModel(
      {this.id,
      this.email,
      this.nameYourAgency,
      this.countryName,
      this.countryFlag,
      this.adressYourAgency,
      this.yourRoleinAgency,
      this.firstName,
      this.lastName,
      this.dateOfBirth,
      this.youActualLocation,
      this.yourPhoneNumber,
      this.phoneCode,
      this.transfermarktUrl,
      this.validYourIdendity,
      this.validYourIdendity1});

  AgencyModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    email = json['email'];
    nameYourAgency = json['nameYourAgency'];
    countryName = json['countryName'];
    countryFlag = json['countryFlag'];
    adressYourAgency = json['adressYourAgency'];
    yourRoleinAgency = json['yourRoleinAgency'];
    firstName = json['firstName'];
    lastName = json['lastName'];
    dateOfBirth = json['dateOfBirth'];
    youActualLocation = json['youActualLocation'];
    yourPhoneNumber = json['yourPhoneNumber'];
    phoneCode = json['phoneCode'];
    transfermarktUrl = json['transfermarktUrl'];
    validYourIdendity = json['validYourIdendity'];
    validYourIdendity1 = json['validYourIdendity1'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = id;
    data['email'] = email;
    data['nameYourAgency'] = nameYourAgency;
    data['countryName'] = countryName;
    data['countryFlag'] = countryFlag;
    data['adressYourAgency'] = adressYourAgency;
    data['yourRoleinAgency'] = yourRoleinAgency;
    data['firstName'] = firstName;
    data['lastName'] = lastName;
    data['dateOfBirth'] = dateOfBirth;
    data['youActualLocation'] = youActualLocation;
    data['yourPhoneNumber'] = yourPhoneNumber;
    data['phoneCode'] = phoneCode;
    data['transfermarktUrl'] = transfermarktUrl;
    data['validYourIdendity'] = validYourIdendity;
    data['validYourIdendity1'] = validYourIdendity1;
    return data;
  }
}
