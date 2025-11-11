
class BuildingModel {
  String? _code;
  String? _buildingName;
  int? _ownerId;
  String? _ownerName;
  String? _address;
  int? _seq;
  String? _contactNumber;
  String? _email;
  int? _area;
  bool? _isActive;
  int? _tenantId;
  bool? _isDeleted;
  int? _deleterUserId;
  String? _deletionTime;
  String? _lastModificationTime;
  int? _lastModifierUserId;
  String? _creationTime;
  int? _creatorUserId;
  int? _id;

  BuildingModel(
      {String? code,
        String? buildingName,
        int? ownerId,
        String? ownerName,
        String? address,
        int? seq,
        String? contactNumber,
        String? email,
        int? area,
        bool? isActive,
        int? tenantId,
        bool? isDeleted,
        int? deleterUserId,
        String? deletionTime,
        String? lastModificationTime,
        int? lastModifierUserId,
        String? creationTime,
        int? creatorUserId,
        int? id}) {
    if (code != null) {
      this._code = code;
    }
    if (buildingName != null) {
      this._buildingName = buildingName;
    }
    if (ownerId != null) {
      this._ownerId = ownerId;
    }
    if (ownerName != null) {
      this._ownerName = ownerName;
    }
    if (address != null) {
      this._address = address;
    }
    if (seq != null) {
      this._seq = seq;
    }
    if (contactNumber != null) {
      this._contactNumber = contactNumber;
    }
    if (email != null) {
      this._email = email;
    }
    if (area != null) {
      this._area = area;
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
  String? get buildingName => _buildingName;
  set buildingName(String? buildingName) => _buildingName = buildingName;
  int? get ownerId => _ownerId;
  set ownerId(int? ownerId) => _ownerId = ownerId;
  String? get ownerName => _ownerName;
  set ownerName(String? ownerName) => _ownerName = ownerName;
  String? get address => _address;
  set address(String? address) => _address = address;
  int? get seq => _seq;
  set seq(int? seq) => _seq = seq;
  String? get contactNumber => _contactNumber;
  set contactNumber(String? contactNumber) => _contactNumber = contactNumber;
  String? get email => _email;
  set email(String? email) => _email = email;
  int? get area => _area;
  set area(int? area) => _area = area;
  bool? get isActive => _isActive;
  set isActive(bool? isActive) => _isActive = isActive;
  int? get tenantId => _tenantId;
  set tenantId(int? tenantId) => _tenantId = tenantId;
  bool? get isDeleted => _isDeleted;
  set isDeleted(bool? isDeleted) => _isDeleted = isDeleted;
  int? get deleterUserId => _deleterUserId;
  set deleterUserId(int? deleterUserId) => _deleterUserId = deleterUserId;
  String? get deletionTime => _deletionTime;
  set deletionTime(String? deletionTime) => _deletionTime = deletionTime;
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

  BuildingModel.fromJson(Map<String, dynamic> json) {
    _code = json['code'];
    _buildingName = json['buildingName'];
    _ownerId = json['ownerId'];
    _ownerName = json['ownerName'];
    _address = json['address'];
    _seq = json['seq'];
    _contactNumber = json['contactNumber'];
    _email = json['email'];
    _area = json['area'];
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
    data['buildingName'] = this._buildingName;
    data['ownerId'] = this._ownerId;
    data['ownerName'] = this._ownerName;
    data['address'] = this._address;
    data['seq'] = this._seq;
    data['contactNumber'] = this._contactNumber;
    data['email'] = this._email;
    data['area'] = this._area;
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
