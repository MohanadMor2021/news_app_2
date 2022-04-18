import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../compenets/compenets.dart';
import '../modules/search/search_screen.dart';
import 'cubit/cubit.dart';
import 'cubit/states.dart';


class NewsLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<NewsCubit, NewsStates>(
      listener: (context, state) {},
      builder: (context, state) {
        var cubit = NewsCubit.get(context);
        return Scaffold(
          appBar: AppBar(
            title: Text('NewsApp'),
            actions: [
              IconButton(
                onPressed: () {
                  navigateTo(context,SearchScreen());
                },
                icon: Icon(Icons.search),
                iconSize: 30,
                color: Colors.grey,
              ),
              IconButton(
                  onPressed: (){
                    NewsCubit.get(context).changeAppMode();
                  }
                  , icon: Icon(Icons.brightness_4),
              )
            ],
          ),
          body: cubit.screens[cubit.currentIndex],
          bottomNavigationBar: BottomNavigationBar(
              items: cubit.bottomItems,
              currentIndex: cubit.currentIndex,
              onTap: (index) {
                cubit.changeBottomNavBar(index);
              }),
        );
      },
    );
  }
}
