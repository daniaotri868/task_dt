class TaskModel {
  final int ?index;
  final String ?title;
  final String ?subTitle;
  final bool ?completed;


  TaskModel({
    this.title,
    this.subTitle,
    this.completed,
    this.index,

  });
  TaskModel copyWith({
    final int ?index,
    final String ?title,
    final String ?subTitle,
    final bool ?completed,
  }) =>
      TaskModel(
        index: index??this.index,
        title: title??this.title,
        subTitle: subTitle??this.subTitle,
        completed: completed??this.completed
        );

  factory TaskModel.fromJson(Map<String, dynamic> json) {


    return TaskModel(
      title: json['title'] ?? "",
      subTitle: json['subTitle'] ?? "",
      completed: json['completed']??true ,
      index: json['index']??0,

    );
  }
  Map<String, dynamic> toJson() => {
    "title": title,
    "subTitle": subTitle,
    "completed": completed,
    "index": index,

  };
}