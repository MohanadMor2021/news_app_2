import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../compenets/compenets.dart';
import '../../layout/cubit/cubit.dart';
import '../../layout/cubit/states.dart';

class SportsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer <NewsCubit, NewsStates>(
        listener: (context, state) {},
        builder: (context, state) {
          var list =NewsCubit.get(context).sports;
          return articleBuilder ( list, context);
        });
  }
}
