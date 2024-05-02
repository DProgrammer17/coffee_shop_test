extension Blank on String? {
  bool get isBlank {
    this?.trim();
    if (this != null && this!.isNotEmpty) return false;

    return true;
  }

  bool get isNotBlank {
    return !isBlank;
  }

  String? get str {
    this?.trim();
    if (this != null && this!.isNotEmpty) return this;

    return null;
  }
}
