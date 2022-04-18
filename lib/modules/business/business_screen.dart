import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../compenets/compenets.dart';
import '../../layout/cubit/cubit.dart';
import '../../layout/cubit/states.dart';


class BusinessScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer <NewsCubit, NewsStates>(
        listener: (context, state) {},
        builder: (context, state) {
          var list =NewsCubit.get(context).business;
          return articleBuilder (list,context);
        });
  }}




