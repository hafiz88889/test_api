
class PersonComboboxModel {
  String? _code;
  String? _name;
  int? _genderId;
  Null? _genderInfo;
  int? _religiousId;
  Null? _religiousInfo;
  int? _occupationId;
  Null? _occupationInfo;
  String? _contactNumber;
  String? _emmergiencyContactInformation;
  String? _permanentAddress;
  String? _email;
  String? _nidNo;
  Null? _nidDocument;
  int? _seq;
  bool? _isOwner;
  String? _pictureId;
  bool? _isActive;
  int? _tenantId;
  bool? _isDeleted;
  Null? _deleterUserId;
  Null? _deletionTime;
  String? _lastModificationTime;
  int? _lastModifierUserId;
  String? _creationTime;
  int? _creatorUserId;
  int? _id;

  PersonComboboxModel(
      {String? code,
        String? name,
        int? genderId,
        Null? genderInfo,
        int? religiousId,
        Null? religiousInfo,
        int? occupationId,
        Null? occupationInfo,
        String? contactNumber,
        String? emmergiencyContactInformation,
        String? permanentAddress,
        String? email,
        String? nidNo,
        Null? nidDocument,
        int? seq,
        bool? isOwner,
        String? pictureId,
        bool? isActive,
        int? tenantId,
        bool? isDeleted,
        Null? deleterUserId,
        Null? deletionTime,
        String? lastModificationTime,
        int? lastModifierUserId,
        String? creationTime,
        int? creatorUserId,
        int? id}) {
    if (code != null) {
      this._code = code;
    }
    if (name != null) {
      this._name = name;
    }
    if (genderId != null) {
      this._genderId = genderId;
    }
    if (genderInfo != null) {
      this._genderInfo = genderInfo;
    }
    if (religiousId != null) {
      this._religiousId = religiousId;
    }
    if (religiousInfo != null) {
      this._religiousInfo = religiousInfo;
    }
    if (occupationId != null) {
      this._occupationId = occupationId;
    }
    if (occupationInfo != null) {
      this._occupationInfo = occupationInfo;
    }
    if (contactNumber != null) {
      this._contactNumber = contactNumber;
    }
    if (emmergiencyContactInformation != null) {
      this._emmergiencyContactInformation = emmergiencyContactInformation;
    }
    if (permanentAddress != null) {
      this._permanentAddress = permanentAddress;
    }
    if (email != null) {
      this._email = email;
    }
    if (nidNo != null) {
      this._nidNo = nidNo;
    }
    if (nidDocument != null) {
      this._nidDocument = nidDocument;
    }
    if (seq != null) {
      this._seq = seq;
    }
    if (isOwner != null) {
      this._isOwner = isOwner;
    }
    if (pictureId != null) {
      this._pictureId = pictureId;
    }
    if (isActive != null) {
      this._isActive = isActive;
    }
    if (tenantId != null) {
      this._tenantId = tenantId;
    }
    if (isDeleted != null) {
      this._isDeleted = isDeleted;
    }
    if (deleterUserId != null) {
      this._deleterUserId = deleterUserId;
    }
    if (deletionTime != null) {
      this._deletionTime = deletionTime;
    }
    if (lastModificationTime != null) {
      this._lastModificationTime = lastModificationTime;
    }
    if (lastModifierUserId != null) {
      this._lastModifierUserId = lastModifierUserId;
    }
    if (creationTime != null) {
      this._creationTime = creationTime;
    }
    if (creatorUserId != null) {
      this._creatorUserId = creatorUserId;
    }
    if (id != null) {
      this._id = id;
    }
  }

  String? get code => _code;
  set code(String? code) => _code = code;
  String? get name => _name;
  set name(String? name) => _name = name;
  int? get genderId => _genderId;
  set genderId(int? genderId) => _genderId = genderId;
  Null? get genderInfo => _genderInfo;
  set genderInfo(Null? genderInfo) => _genderInfo = genderInfo;
  int? get religiousId => _religiousId;
  set religiousId(int? religiousId) => _religiousId = religiousId;
  Null? get religiousInfo => _religiousInfo;
  set religiousInfo(Null? religiousInfo) => _religiousInfo = religiousInfo;
  int? get occupationId => _occupationId;
  set occupationId(int? occupationId) => _occupationId = occupationId;
  Null? get occupationInfo => _occupationInfo;
  set occupationInfo(Null? occupationInfo) => _occupationInfo = occupationInfo;
  String? get contactNumber => _contactNumber;
  set contactNumber(String? contactNumber) => _contactNumber = contactNumber;
  String? get emmergiencyContactInformation => _emmergiencyContactInformation;
  set emmergiencyContactInformation(String? emmergiencyContactInformation) =>
      _emmergiencyContactInformation = emmergiencyContactInformation;
  String? get permanentAddress => _permanentAddress;
  set permanentAddress(String? permanentAddress) =>
      _permanentAddress = permanentAddress;
  String? get email => _email;
  set email(String? email) => _email = email;
  String? get nidNo => _nidNo;
  set nidNo(String? nidNo) => _nidNo = nidNo;
  Null? get nidDocument => _nidDocument;
  set nidDocument(Null? nidDocument) => _nidDocument = nidDocument;
  int? get seq => _seq;
  set seq(int? seq) => _seq = seq;
  bool? get isOwner => _isOwner;
  set isOwner(bool? isOwner) => _isOwner = isOwner;
  String? get pictureId => _pictureId;
  set pictureId(String? pictureId) => _pictureId = pictureId;
  bool? get isActive => _isActive;
  set isActive(bool? isActive) => _isActive = isActive;
  int? get tenantId => _tenantId;
  set tenantId(int? tenantId) => _tenantId = tenantId;
  bool? get isDeleted => _isDeleted;
  set isDeleted(bool? isDeleted) => _isDeleted = isDeleted;
  Null? get deleterUserId => _deleterUserId;
  set deleterUserId(Null? deleterUserId) => _deleterUserId = deleterUserId;
  Null? get deletionTime => _deletionTime;
  set deletionTime(Null? deletionTime) => _deletionTime = deletionTime;
  String? get lastModificationTime => _lastModificationTime;
  set lastModificationTime(String? lastModificationTime) =>
      _lastModificationTime = lastModificationTime;
  int? get lastModifierUserId => _lastModifierUserId;
  set lastModifierUserId(int? lastModifierUserId) =>
      _lastModifierUserId = lastModifierUserId;
  String? get creationTime => _creationTime;
  set creationTime(String? creationTime) => _creationTime = creationTime;
  int? get creatorUserId => _creatorUserId;
  set creatorUserId(int? creatorUserId) => _creatorUserId = creatorUserId;
  int? get id => _id;
  set id(int? id) => _id = id;

  PersonComboboxModel.fromJson(Map<String, dynamic> json) {
    _code = json['code'];
    _name = json['name'];
    _genderId = json['genderId'];
    _genderInfo = json['genderInfo'];
    _religiousId = json['religiousId'];
    _religiousInfo = json['religiousInfo'];
    _occupationId = json['occupationId'];
    _occupationInfo = json['occupationInfo'];
    _contactNumber = json['contactNumber'];
    _emmergiencyContactInformation = json['emmergiencyContactInformation'];
    _permanentAddress = json['permanentAddress'];
    _email = json['email'];
    _nidNo = json['nidNo'];
    _nidDocument = json['nidDocument'];
    _seq = json['seq'];
    _isOwner = json['isOwner'];
    _pictureId = json['pictureId'];
    _isActive = json['isActive'];
    _tenantId = json['tenantId'];
    _isDeleted = json['isDeleted'];
    _deleterUserId = json['deleterUserId'];
    _deletionTime = json['deletionTime'];
    _lastModificationTime = json['lastModificationTime'];
    _lastModifierUserId = json['lastModifierUserId'];
    _creationTime = json['creationTime'];
    _creatorUserId = json['creatorUserId'];
    _id = json['id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['code'] = this._code;
    data['name'] = this._name;
    data['genderId'] = this._genderId;
    data['genderInfo'] = this._genderInfo;
    data['religiousId'] = this._religiousId;
    data['religiousInfo'] = this._religiousInfo;
    data['occupationId'] = this._occupationId;
    data['occupationInfo'] = this._occupationInfo;
    data['contactNumber'] = this._contactNumber;
    data['emmergiencyContactInformation'] = this._emmergiencyContactInformation;
    data['permanentAddress'] = this._permanentAddress;
    data['email'] = this._email;
    data['nidNo'] = this._nidNo;
    data['nidDocument'] = this._nidDocument;
    data['seq'] = this._seq;
    data['isOwner'] = this._isOwner;
    data['pictureId'] = this._pictureId;
    data['isActive'] = this._isActive;
    data['tenantId'] = this._tenantId;
    data['isDeleted'] = this._isDeleted;
    data['deleterUserId'] = this._deleterUserId;
    data['deletionTime'] = this._deletionTime;
    data['lastModificationTime'] = this._lastModificationTime;
    data['lastModifierUserId'] = this._lastModifierUserId;
    data['creationTime'] = this._creationTime;
    data['creatorUserId'] = this._creatorUserId;
    data['id'] = this._id;
    return data;
  }
}
