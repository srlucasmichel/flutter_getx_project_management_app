class Task {
  final int id;
  final int projectId;
  final String title;
  final String description;
  final int status;
  final String initialDate;
  final String finalDate;

  Task(this.id, this.projectId, this.title, this.description, this.status,
      this.initialDate, this.finalDate);

  @override
  String toString() {
    return 'Task{id: $id, projectId: $projectId, title: $title, description: $description, status: $status, initialDate: $initialDate, finalDate: $finalDate}';
  }
}
