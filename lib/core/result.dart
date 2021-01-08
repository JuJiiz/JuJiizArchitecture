abstract class Result<T> {}

class Success<T> implements Result<T> {
  final T result;

  const Success([this.result]);
}

class Failure<T> implements Result<T> {
  final String message;

  const Failure(this.message);
}
