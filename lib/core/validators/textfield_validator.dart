abstract class TextfieldValidator {
  /// validates the TextField that receives an input
  static String? input(String? value) {
    if (value == null || value.length < 3) {
      return 'too short';
    }
    if (value.isEmpty) {
      return 'cannot be empty';
    }
    return null;
  }
}
