class ODataListResponse<T> {
  List<T> value;
  String odataContext;
  int odataCount;

  ODataListResponse({
    this.value,
    this.odataContext,
    this.odataCount,
  });
}

class ApiResultResponse<T> {
  final bool isFailure;
  final bool isSuccess;
  final String error;
  final T data;
  bool get hasValue => data != null && isSuccess;

  ApiResultResponse({
    this.isFailure,
    this.isSuccess,
    this.error,
    this.data,
  });

  factory ApiResultResponse.success(T data) =>
      ApiResultResponse(data: data, isSuccess: true, isFailure: false);

  factory ApiResultResponse.fail(String error) =>
      ApiResultResponse(isSuccess: false, isFailure: true, error: error);
}
