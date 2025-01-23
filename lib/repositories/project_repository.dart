import 'package:cloud_firestore/cloud_firestore.dart';
import '../models/project_model.dart';

class ProjectRepository {
  final FirebaseFirestore _firestore;

  ProjectRepository(this._firestore);

  Future<List<ProjectModel>> fetchProjects() async {
    final snapshot = await _firestore.collection('projects').get();
    return snapshot.docs
        .map((doc) => ProjectModel.fromMap(doc.id, doc.data()))
        .toList();
  }

  Future<void> saveProject(ProjectModel project) async {
    await _firestore
        .collection('projects')
        .doc(project.id)
        .set(project.toMap());
  }

  Future<void> deleteProject(String id) async {
    await _firestore.collection('projects').doc(id).delete();
  }
}
