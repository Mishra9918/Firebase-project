import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mm_task/providers/auth_providers.dart';
import '../repositories/project_repository.dart';
import '../models/project_model.dart';

final projectRepositoryProvider = Provider(
  (ref) => ProjectRepository(ref.read(firebaseFirestoreProvider)),
);

final projectListProvider = FutureProvider<List<ProjectModel>>((ref) async {
  final repository = ref.watch(projectRepositoryProvider);
  return repository.fetchProjects();
});
