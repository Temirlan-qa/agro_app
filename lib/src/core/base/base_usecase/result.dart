class Result<Data, Failure extends Exception> {
  final Data? _data;
  final Failure? _failure;

  const Result.success(Data data)
      : _data = data,
        _failure = null;

  const Result.failure(Failure failure)
      : _failure = failure,
        _data = null;

  bool get isSuccessful => _failure == null;

  bool get isFailure => !isSuccessful;

  Data? get data => _data;

  Failure? get failure => _failure;
}