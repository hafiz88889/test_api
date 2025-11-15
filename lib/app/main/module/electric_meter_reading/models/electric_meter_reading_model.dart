
class ElectricMeterModel {
  int? _tenantId;
  String? _readingDate;
  String? _meterNumber;
  double? _currentReading;
  double? _previousReading;
  double? _consumption;
  double? _ratePerUnit;
  double? _amount;
  int? _seq;
  bool? _isActive;
  Null? _remarks;
  bool? _isDeleted;
  int? _deleterUserId;
  String? _deletionTime;
  String? _lastModificationTime;
  int? _lastModifierUserId;
  String? _creationTime;
  int? _creatorUserId;
  int? _id;

  ElectricMeterModel(
      {int? tenantId,
        String? readingDate,
        String? meterNumber,
        double? currentReading,
        double? previousReading,
        double? consumption,
        double? ratePerUnit,
        double? amount,
        int? seq,
        bool? isActive,
        Null? remarks,
        bool? isDeleted,
        int? deleterUserId,
        String? deletionTime,
        String? lastModificationTime,
        int? lastModifierUserId,
        String? creationTime,
        int? creatorUserId,
        int? id}) {
    if (tenantId != null) {
      this._tenantId = tenantId;
    }
    if (readingDate != null) {
      this._readingDate = readingDate;
    }
    if (meterNumber != null) {
      this._meterNumber = meterNumber;
    }
    if (currentReading != null) {
      this._currentReading = currentReading;
    }
    if (previousReading != null) {
      this._previousReading = previousReading;
    }
    if (consumption != null) {
      this._consumption = consumption;
    }
    if (ratePerUnit != null) {
      this._ratePerUnit = ratePerUnit;
    }
    if (amount != null) {
      this._amount = amount;
    }
    if (seq != null) {
      this._seq = seq;
    }
    if (isActive != null) {
      this._isActive = isActive;
    }
    if (remarks != null) {
      this._remarks = remarks;
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

  int? get tenantId => _tenantId;
  set tenantId(int? tenantId) => _tenantId = tenantId;
  String? get readingDate => _readingDate;
  set readingDate(String? readingDate) => _readingDate = readingDate;
  String? get meterNumber => _meterNumber;
  set meterNumber(String? meterNumber) => _meterNumber = meterNumber;
  double? get currentReading => _currentReading;
  set currentReading(double? currentReading) => _currentReading = currentReading;
  double? get previousReading => _previousReading;
  set previousReading(double? previousReading) =>
      _previousReading = previousReading;
  double? get consumption => _consumption;
  set consumption(double? consumption) => _consumption = consumption;
  double? get ratePerUnit => _ratePerUnit;
  set ratePerUnit(double? ratePerUnit) => _ratePerUnit = ratePerUnit;
  double? get amount => _amount;
  set amount(double? amount) => _amount = amount;
  int? get seq => _seq;
  set seq(int? seq) => _seq = seq;
  bool? get isActive => _isActive;
  set isActive(bool? isActive) => _isActive = isActive;
  Null? get remarks => _remarks;
  set remarks(Null? remarks) => _remarks = remarks;
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

  ElectricMeterModel.fromJson(Map<String, dynamic> json) {
    _tenantId = json['tenantId'];
    _readingDate = json['readingDate'];
    _meterNumber = json['meterNumber'];
    _currentReading = json['currentReading'];
    _previousReading = json['previousReading'];
    _consumption = json['consumption'];
    _ratePerUnit = json['ratePerUnit'];
    _amount = json['amount'];
    _seq = json['seq'];
    _isActive = json['isActive'];
    _remarks = json['remarks'];
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
    data['tenantId'] = this._tenantId;
    data['readingDate'] = this._readingDate;
    data['meterNumber'] = this._meterNumber;
    data['currentReading'] = this._currentReading;
    data['previousReading'] = this._previousReading;
    data['consumption'] = this._consumption;
    data['ratePerUnit'] = this._ratePerUnit;
    data['amount'] = this._amount;
    data['seq'] = this._seq;
    data['isActive'] = this._isActive;
    data['remarks'] = this._remarks;
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
