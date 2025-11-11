class CreateBuildingModel {
  String? _code;
  String? _buildingName;
  int? _ownerId;
  String? _address;
  int? _seq;
  String? _contactNumber;
  String? _email;
  int? _area;
  bool? _isActive;
  int? _tenantId;
  String? _creationTime;
  Null? _creatorUserId;
  int? _id;

  CreateBuildingModel(
      {String? code,
        String? buildingName,
        int? ownerId,
        String? address,
        int? seq,
        String? contactNumber,
        String? email,
        int? area,
        bool? isActive,
        int? tenantId,
        String? creationTime,
        Null? creatorUserId,
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
  String? get creationTime => _creationTime;
  set creationTime(String? creationTime) => _creationTime = creationTime;
  Null? get creatorUserId => _creatorUserId;
  set creatorUserId(Null? creatorUserId) => _creatorUserId = creatorUserId;
  int? get id => _id;
  set id(int? id) => _id = id;

  CreateBuildingModel.fromJson(Map<String, dynamic> json) {
    _code = json['code'];
    _buildingName = json['buildingName'];
    _ownerId = json['ownerId'];
    _address = json['address'];
    _seq = json['seq'];
    _contactNumber = json['contactNumber'];
    _email = json['email'];
    _area = json['area'];
    _isActive = json['isActive'];
    _tenantId = json['tenantId'];
    _creationTime = json['creationTime'];
    _creatorUserId = json['creatorUserId'];
    _id = json['id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['code'] = this._code;
    data['buildingName'] = this._buildingName;
    data['ownerId'] = this._ownerId;
    data['address'] = this._address;
    data['seq'] = this._seq;
    data['contactNumber'] = this._contactNumber;
    data['email'] = this._email;
    data['area'] = this._area;
    data['isActive'] = this._isActive;
    data['tenantId'] = this._tenantId;
    data['creationTime'] = this._creationTime;
    data['creatorUserId'] = this._creatorUserId;
    data['id'] = this._id;
    return data;
  }
}
