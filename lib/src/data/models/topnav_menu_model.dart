import 'dart:convert';

class TopNavMenuModel {
  String? title;
  String? icon;
  TopNavMenuModel({
    this.title,
    this.icon,
  });

  TopNavMenuModel copyWith({
    String? title,
    String? icon,
  }) {
    return TopNavMenuModel(
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

  factory TopNavMenuModel.fromMap(Map<String, dynamic> map) {
    return TopNavMenuModel(
      title: map['title'],
      icon: map['icon'],
    );
  }

  String toJson() => json.encode(toMap());

  factory TopNavMenuModel.fromJson(String source) =>
      TopNavMenuModel.fromMap(json.decode(source));

  @override
  String toString() => 'TopNavMenuModel(title: $title, icon: $icon)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is TopNavMenuModel &&
        other.title == title &&
        other.icon == icon;
  }

  @override
  int get hashCode => title.hashCode ^ icon.hashCode;
}
