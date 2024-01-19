import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../aplication/dashboard/dashboard_bloc.dart';
import '../../../core/theme/const_values.dart';
import '../../../core/widgets/text/text_body.dart';

class BackBtn extends StatelessWidget {
  const BackBtn({
    required this.index,
    this.onPressed,
    super.key,
  });

  final int index;
  final void Function()? onPressed;

  bool get isFirstQuestion => index == 0;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: sizeFormBtn,
      child: ElevatedButton(
        onPressed: isFirstQuestion ? null : onPressed,
        child: const TextBody('Back'),
      ),
    );
  }
}
