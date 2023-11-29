import 'package:flutter_example/services/log_service.dart';
import 'package:flutter_example/types/base_data_type.dart';
import 'package:localstorage/localstorage.dart';

class StorageService {
  static LoggingService loggingService = LoggingService();

  /// Get data
  static T? get<T extends BaseDataType>(
      T Function() creator, String storageKey) {
    try {
      LocalStorage storage = LocalStorage(storageKey);
      Map<String, dynamic> dataMap = storage.getItem(storageKey);
      return creator().fromJson(dataMap) as T?;
    }  catch (e) {
      loggingService.logError(e);
      return null;
    }
  }

  /// Save data
  static void save<T extends BaseDataType>(String storageKey, T item) {
    LocalStorage storage = LocalStorage(storageKey);
    storage.setItem(storageKey, item.toJSONEncodable());
  }

  /// Clear one data
  static void clear(String storageKey) {
    LocalStorage storage = LocalStorage(storageKey);
    storage.deleteItem(storageKey);
  }

  /// Clear all data
  static void clearAll(String storageKey) {
    LocalStorage storage = LocalStorage(storageKey);
    storage.deleteItem(storageKey);
    storage.clear();
  }
}
