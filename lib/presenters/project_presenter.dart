import '../models/project_model.dart';
import '../repositories/project_repository.dart';

class ProjectPresenter {
  final ProjectRepository _repository;

  ProjectPresenter(this._repository);

  Future<List<ProjectModel>> getProjects() => _repository.fetchProjects();

  Future<void> saveProject(ProjectModel project) =>
      _repository.saveProject(project);

  Future<void> deleteProject(String id) => _repository.deleteProject(id);
}
