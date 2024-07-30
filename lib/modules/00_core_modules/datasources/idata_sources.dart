abstract class IDatasource<T>
    implements
        IGetDatasource<T>,
        IAddDatasource,
        IDeleteDatasource,
        IUpdateDatasource {}

abstract class IGetDatasource<T> {
  Future<List<T>> get(
      String path, T Function(Map<String, dynamic> map) fromMap);
}

abstract class IAddDatasource {
  Future<void> add(String path, data);
}

abstract class IDeleteDatasource {
  Future<void> delete(String path);
}

abstract class IUpdateDatasource {
  Future<void> update(String path, data);
}
