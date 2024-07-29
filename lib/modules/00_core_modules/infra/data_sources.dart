abstract class IDatasource<R>
    implements
        IGetDatasource<R>,
        IAddDatasource,
        IDeleteDatasource,
        IUpdateDatasource {}

abstract class IGetDatasource<R> {
  Future<List<R>> get(
      String path, R Function(Map<String, dynamic> map) fromMap);
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
