import 'package:rfc_6901/src/token/object_member.dart';

/// A new element in a List
class NewElement extends ObjectMember {
  NewElement() : super('-');

  static NewElement? tryParse(String unescapedExpression) {
    if (unescapedExpression == '-') return NewElement();
  }

  @override
  Object? write(Object? document, Object? value) {
    if (document is List) {
      return [...document, value];
    }
    return super.write(document, value);
  }

  @override
  List createEmptyDocument() => [];
}
