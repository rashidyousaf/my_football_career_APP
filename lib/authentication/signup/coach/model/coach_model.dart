class CoachModel {
  String? id;
  String? email;
  String? firstName;
  String? lastName;
  String? dateOfBirth;
  String? nationality;
  String? gender;
  String? yourRole;
  String? yourLicence;
  String? actualClub;
  String? clubFlag;
  String? availableTransfer;
  String? transferCoasts;
  String? yourTransfermarktUrl;
  String? changeYourcv;
  String? chanrgeSomePhotos;
  String? chargeSomePhotos2;
  String? youractualCityLocation;
  String? yourPhoneNumber;
  String? phoneCode;
  String? validYourIdendity;
  String? validYourIdendity1;

  CoachModel(
      {this.id,
      this.email,
      this.firstName,
      this.lastName,
      this.dateOfBirth,
      this.nationality,
      this.gender,
      this.yourRole,
      this.yourLicence,
      this.actualClub,
      this.clubFlag,
      this.availableTransfer,
      this.transferCoasts,
      this.yourTransfermarktUrl,
      this.changeYourcv,
      this.chanrgeSomePhotos,
      this.chargeSomePhotos2,
      this.youractualCityLocation,
      this.yourPhoneNumber,
      this.phoneCode,
      this.validYourIdendity,
      this.validYourIdendity1});

  CoachModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    email = json['email'];
    firstName = json['firstName'];
    lastName = json['lastName'];
    dateOfBirth = json['dateOfBirth'];
    nationality = json['nationality'];
    gender = json['gender'];
    yourRole = json['yourRole'];
    yourLicence = json['yourLicence'];
    actualClub = json['actualClub'];
    clubFlag = json['clubFlag'];
    availableTransfer = json['availableTransfer'];
    transferCoasts = json['transferCoasts'];
    yourTransfermarktUrl = json['yourTransfermarktUrl'];
    changeYourcv = json['changeYourcv'];
    chanrgeSomePhotos = json['chanrgeSomePhotos'];
    chargeSomePhotos2 = json['chargeSomePhotos2'];
    youractualCityLocation = json['youractualCityLocation'];
    yourPhoneNumber = json['yourPhoneNumber'];
    phoneCode = json['phoneCode'];
    validYourIdendity = json['validYourIdendity'];
    validYourIdendity1 = json['validYourIdendity1'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = id;
    data['email'] = email;
    data['firstName'] = firstName;
    data['lastName'] = lastName;
    data['dateOfBirth'] = dateOfBirth;
    data['nationality'] = nationality;
    data['gender'] = gender;
    data['yourRole'] = yourRole;
    data['yourLicence'] = yourLicence;
    data['actualClub'] = actualClub;
    data['clubFlag'] = clubFlag;
    data['availableTransfer'] = availableTransfer;
    data['transferCoasts'] = transferCoasts;
    data['yourTransfermarktUrl'] = yourTransfermarktUrl;
    data['changeYourcv'] = changeYourcv;
    data['chanrgeSomePhotos'] = chanrgeSomePhotos;
    data['chargeSomePhotos2'] = chargeSomePhotos2;
    data['youractualCityLocation'] = youractualCityLocation;
    data['yourPhoneNumber'] = yourPhoneNumber;
    data['phoneCode'] = phoneCode;
    data['validYourIdendity'] = validYourIdendity;
    data['validYourIdendity1'] = validYourIdendity1;
    return data;
  }
}
