import 'package:booklyapp/core/utils/styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';

class CustomErrorWidget extends StatelessWidget {
  const CustomErrorWidget({super.key, required this.errMesage});
  final String errMesage;
  @override
  Widget build(BuildContext context) {
    return Text(
      errMesage,
      style: Styles.textStyle18,
    );
  }
}
