import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../aplication/dashboard/dashboard_bloc.dart';
import '../../../core/theme/const_values.dart';
import '../../../core/widgets/text/text_body.dart';

class NextBtn extends StatelessWidget {
  const NextBtn({
    required this.index,
    required this.totalForms,
    required this.isFinished,
    this.onPressed,
    super.key,
  });

  final int index;
  final int totalForms;
  final bool isFinished;
  final void Function()? onPressed;

  String get activeLabel => index + 1 < totalForms ? 'Next' : 'Finish';

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: sizeFormBtn,
      child: ElevatedButton(
        onPressed: isFinished ? null : onPressed,
        child: TextBody(activeLabel),
      ),
    );
  }
}
