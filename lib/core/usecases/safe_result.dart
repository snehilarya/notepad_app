abstract class SafeResult<T> {
  const SafeResult();

  B fold<B>(onSuccess(T value), onFailure(Exception exception));
}

class Success<T> extends SafeResult<T> {
  final T value;

  Success(this.value);

  @override
  B fold<B>(Function(T value) onSuccess, Function(Exception exception) onFailure) =>
      onSuccess(value);
}

class Failure<T> extends SafeResult<T> {
  final Exception exception;

  Failure(this.exception);

  @override
  B fold<B>(Function(T value) onSuccess, Function(Exception exception) onFailure) {
    print(exception); // TODO: remove this
    return onFailure(exception);
  }
}
