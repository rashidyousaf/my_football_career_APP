class PlayerModel {
  String? id;
  String? email;
  String? firstName;
  String? lastName;
  String? dateOfBirth;
  String? date;
  String? nationality;
  String? gender;
  String? yourMainPosition;
  String? yourSecondPosition;
  String? height;
  String? weight;
  String? yourStrongFoot;
  String? actualClub;
  String? clubFlag;
  String? underContractUntil;
  String? availableForTransfer;
  String? transferCoasts;
  String? jerseyNumber;
  String? yourTransfermarktUrl;
  String? yourFupaUrl;
  String? yourSeccerwayUrl;
  String? cvResume;
  String? yourVideosUrl1;
  String? yourVideosUrl2;
  String? yourVideosUrl3;
  String? youractualCityLocation;
  String? phoneCode;
  String? yourPhoneNumber;
  String? validYourIdendity;
  String? validYourIdendity1;

  PlayerModel(
      {this.id,
      this.email,
      this.firstName,
      this.lastName,
      this.dateOfBirth,
      this.date,
      this.nationality,
      this.gender,
      this.yourMainPosition,
      this.yourSecondPosition,
      this.height,
      this.weight,
      this.yourStrongFoot,
      this.actualClub,
      this.clubFlag,
      this.underContractUntil,
      this.availableForTransfer,
      this.transferCoasts,
      this.jerseyNumber,
      this.yourTransfermarktUrl,
      this.yourFupaUrl,
      this.yourSeccerwayUrl,
      this.cvResume,
      this.yourVideosUrl1,
      this.yourVideosUrl2,
      this.yourVideosUrl3,
      this.youractualCityLocation,
      this.phoneCode,
      this.yourPhoneNumber,
      this.validYourIdendity,
      this.validYourIdendity1});

  PlayerModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    email = json['email'];
    firstName = json['firstName'];
    lastName = json['lastName'];
    dateOfBirth = json['dateOfBirth'];
    date = json['date'];
    nationality = json['nationality'];
    gender = json['gender'];
    yourMainPosition = json['yourMainPosition'];
    yourSecondPosition = json['yourSecondPosition'];
    height = json['height'];
    weight = json['weight'];
    yourStrongFoot = json['yourStrongFoot'];
    actualClub = json['actualClub'];
    clubFlag = json['clubFlag'];
    underContractUntil = json['underContractUntil'];
    availableForTransfer = json['availableForTransfer'];
    transferCoasts = json['transferCoasts'];
    jerseyNumber = json['jerseyNumber'];
    yourTransfermarktUrl = json['yourTransfermarktUrl'];
    yourFupaUrl = json['yourFupaUrl'];
    yourSeccerwayUrl = json['yourSeccerwayUrl'];
    cvResume = json['cvResume'];
    yourVideosUrl1 = json['yourVideosUrl1'];
    yourVideosUrl2 = json['yourVideosUrl2'];
    yourVideosUrl3 = json['yourVideosUrl3'];
    youractualCityLocation = json['youractualCityLocation'];
    phoneCode = json['phoneCode'];
    yourPhoneNumber = json['yourPhoneNumber'];
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
    data['date'] = date;
    data['nationality'] = nationality;
    data['gender'] = gender;
    data['yourMainPosition'] = yourMainPosition;
    data['yourSecondPosition'] = yourSecondPosition;
    data['height'] = height;
    data['weight'] = weight;
    data['yourStrongFoot'] = yourStrongFoot;
    data['actualClub'] = actualClub;
    data['clubFlag'] = clubFlag;
    data['underContractUntil'] = underContractUntil;
    data['availableForTransfer'] = availableForTransfer;
    data['transferCoasts'] = transferCoasts;
    data['jerseyNumber'] = jerseyNumber;
    data['yourTransfermarktUrl'] = yourTransfermarktUrl;
    data['yourFupaUrl'] = yourFupaUrl;
    data['yourSeccerwayUrl'] = yourSeccerwayUrl;
    data['cvResume'] = cvResume;
    data['yourVideosUrl1'] = yourVideosUrl1;
    data['yourVideosUrl2'] = yourVideosUrl2;
    data['yourVideosUrl3'] = yourVideosUrl3;
    data['youractualCityLocation'] = youractualCityLocation;
    data['phoneCode'] = phoneCode;
    data['yourPhoneNumber'] = yourPhoneNumber;
    data['validYourIdendity'] = validYourIdendity;
    data['validYourIdendity1'] = validYourIdendity1;
    return data;
  }
}
