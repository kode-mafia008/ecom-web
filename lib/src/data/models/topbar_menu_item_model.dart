import 'dart:convert';

class TopbarMenuItemModel {
  String? title;
  String? icon;
  TopbarMenuItemModel({
    this.title,
    this.icon,
  });

  TopbarMenuItemModel copyWith({
    String? title,
    String? icon,
  }) {
    return TopbarMenuItemModel(
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

  factory TopbarMenuItemModel.fromMap(Map<String, dynamic> map) {
    return TopbarMenuItemModel(
      title: map['title'],
      icon: map['icon'],
    );
  }

  String toJson() => json.encode(toMap());

  factory TopbarMenuItemModel.fromJson(String source) =>
      TopbarMenuItemModel.fromMap(json.decode(source));

  @override
  String toString() => 'TopbarMenuItemModel(title: $title, icon: $icon)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is TopbarMenuItemModel &&
        other.title == title &&
        other.icon == icon;
  }

  @override
  int get hashCode => title.hashCode ^ icon.hashCode;
}
