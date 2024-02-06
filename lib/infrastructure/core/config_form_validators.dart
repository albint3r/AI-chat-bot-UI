import 'package:reactive_forms/reactive_forms.dart';

import '../../domain/core/types.dart';

abstract class ConfigFormValidators {
  static Map<String, String Function(Object)> getValidators() => {
        ValidationMessage.required: (error) => 'Field must not be empty',
        ValidationMessage.email: (error) => 'Must enter a valid email',
        ValidationMessage.minLength: (error) =>
            'Invalid: Min Length ${(error as Json)['requiredLength']}',
        ValidationMessage.maxLength: (error) =>
            'Invalid: Max Length ${(error as Json)['requiredLength']}',
      };
}
