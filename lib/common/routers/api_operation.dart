import 'package:dartz/dartz.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';

enum ApiState{loading, failure, success}

mixin ApiOperationMixin {
  Rx<ApiState> apiStatus = ApiState.loading.obs;
  Rx<String> errorMessage = "".obs;

  //method template for create/update and delete operation on getx controller
  //class

void requestMethodTemplate(Future<Either<String, bool>> apiCallback) async {
  apiStatus.value = ApiState.loading;
  Either<String, bool> failureOrSuccess = await apiCallback;

  failureOrSuccess.fold(
      (String failure) {
        apiStatus.value = ApiState.failure;
        errorMessage = failure.obs;
      },
      (bool success) {
        apiStatus.value = ApiState.success;
      }
  );
}
}