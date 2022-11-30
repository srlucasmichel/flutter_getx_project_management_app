class Project {
  final int id;
  final String name;
  final int progress;
  final String? deadlineDate;
  final String? coverImage;

  Project(
      this.id, this.name, this.progress, this.deadlineDate, this.coverImage);

  @override
  String toString() {
    return 'Project{id: $id, name: $name, progress: $progress, deadlineDate: $deadlineDate, coverImage: $coverImage}';
  }
}
