import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project_home/feature/home/presentation/home_cubit.dart';
import 'package:project_home/main/domain/di/injection.dart';

class ListBlocProvider {
  static List<BlocProvider> provider() {
    return [
      BlocProvider<HomeCubit>(
        create: (_) => getIt.get<HomeCubit>(),
      ),
    ];
  }
}
