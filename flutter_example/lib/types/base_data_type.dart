abstract class BaseDataType implements IBaseDataType {
  BaseDataType();
  // For convert json to data type
  BaseDataType fromJson(Map<String, dynamic> json);
}

abstract class IBaseDataType {
  // For convert to json
  Map<String, dynamic> toJSONEncodable();
}