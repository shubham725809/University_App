class CoursesSemOne {
  final String courseTitle;
  final String grades;
  final int age;

  const CoursesSemOne({
    required this.courseTitle,
    required this.grades,
    required this.age,
  });

  CoursesSemOne copy({
    String? courseTitle,
    String? grades,
    int? age,
  }) =>
      CoursesSemOne(
        courseTitle: courseTitle ?? this.courseTitle,
        grades: grades ?? this.grades,
        age: age ?? this.age,
      );

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CoursesSemOne &&
          runtimeType == other.runtimeType &&
          courseTitle == other.courseTitle &&
          grades == other.grades &&
          age == other.age;

  @override
  int get hashCode => courseTitle.hashCode ^ grades.hashCode ^ age.hashCode;
}
