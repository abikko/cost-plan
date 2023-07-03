import 'package:cost_plan/core/domain/domain_exception.dart';
import 'package:cost_plan/domain/base/base_request_model.dart';

abstract base class UseCase<R, Result, RequestModel extends BaseRequestModel> {
  final R repository;

  UseCase(this.repository);

  Future<Result> call({required RequestModel data}) async {
    try {
      final result = await execute(data: data);
      if (result){

      }
    } on DomainException catch (domainException) {
    } on Exception catch (e) {}
  }

  Future<Result> execute({required RequestModel data});

  DomainException handleError();
}
