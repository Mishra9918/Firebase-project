class ProjectModel {
  final String id;
  final List<String> fileNames;

  ProjectModel({required this.id, required this.fileNames});

  Map<String, dynamic> toMap() => {'id': id, 'fileNames': fileNames};

  static ProjectModel fromMap(String id, Map<String, dynamic> data) {
    return ProjectModel(
      id: id,
      fileNames: List<String>.from(data['fileNames'] ?? []),
    );
  }
}
