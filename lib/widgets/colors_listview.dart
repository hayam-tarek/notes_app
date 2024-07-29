import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/addNoteCubit/add_note_cubit.dart';
import 'package:notes_app/helper/constant.dart';
import 'package:notes_app/widgets/color_item.dart';

class ColorsListView extends StatefulWidget {
  const ColorsListView({
    super.key,
  });

  @override
  State<ColorsListView> createState() => _ColorsListViewState();
}

class _ColorsListViewState extends State<ColorsListView> {
  int currentIndex = -1;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: kColorsList.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(2.0),
            child: InkWell(
              splashColor: Colors.transparent,
              onTap: () {
                setState(() {
                  currentIndex = index;
                });
                BlocProvider.of<AddNoteCubit>(context).noteColor =
                    kColorsList[index];
              },
              child: ColorItem(
                isActive: currentIndex == index,
                color: kColorsList[index],
              ),
            ),
          );
        });
    // return const SingleChildScrollView(
    //   scrollDirection: Axis.horizontal,
    //   child: Row(
    //     children: [
    //       ColorItem(),
    //       ColorItem(),
    //       ColorItem(),
    //       ColorItem(),
    //       ColorItem(),
    //       ColorItem(),
    //       ColorItem(),
    //     ],
    //   ),
    // );
  }
}
