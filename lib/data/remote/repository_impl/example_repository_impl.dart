import 'package:cost_plan/data/base/base_remote_repo_impl.dart';
import 'package:cost_plan/domain/repository/example_repository.dart';

base class ExampleRepositoryImpl extends BaseRemoteRepoImpl
    implements ExampleRepository {
  ExampleRepositoryImpl(super.ref);
}
