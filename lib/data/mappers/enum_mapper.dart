extension StringEnumMapper on String {
  T toEnum<T extends Enum>(List<T> values, {required T fallback}) {
    return values.firstWhere((v) => v.name == this, orElse: () => fallback);
  }
}

extension EnumToString on Enum {
  String toDto() => name;
}
