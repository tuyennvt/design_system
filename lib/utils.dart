extension StringExtension on String? {
  bool get isNullOrEmpty {
    return this == null || this?.trim().isEmpty == true;
  }

  bool get isNotNullOrEmpty {
    return !isNullOrEmpty;
  }
}

extension ListExtension on List? {
  bool get isNullOrEmpty {
    return this == null || this?.isEmpty == true;
  }

  bool get isNotNullOrEmpty {
    return !isNullOrEmpty;
  }
}

const String packageRoot = 'packages/employee_flutter_design_system/';
