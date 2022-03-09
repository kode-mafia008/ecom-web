import 'dart:convert';

class CategoryMenuItemModel {
  String? title;
  String? icon;
  CategoryMenuItemModel({
    this.title,
    this.icon,
  });

  CategoryMenuItemModel copyWith({
    String? title,
    String? icon,
  }) {
    return CategoryMenuItemModel(
      title: title ?? this.title,
      icon: icon ?? this.icon,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'title': title,
      'icon': icon,
    };
  }

  factory CategoryMenuItemModel.fromMap(Map<String, dynamic> map) {
    return CategoryMenuItemModel(
      title: map['title'],
      icon: map['icon'],
    );
  }

  String toJson() => json.encode(toMap());

  factory CategoryMenuItemModel.fromJson(String source) =>
      CategoryMenuItemModel.fromMap(json.decode(source));

  @override
  String toString() => 'CategoryMenuItemModel(title: $title, icon: $icon)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is CategoryMenuItemModel &&
        other.title == title &&
        other.icon == icon;
  }

  @override
  int get hashCode => title.hashCode ^ icon.hashCode;
}
