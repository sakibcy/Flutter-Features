import 'package:flutter/material.dart';
import 'package:flutter_practice/widgets/data_table.dart';
import 'package:flutter_practice/widgets/profile_grid_view.dart';

class TabProfile extends StatelessWidget {
  const TabProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Scrollbar(
        child: CustomScrollView(
            scrollDirection: Axis.vertical,
            primary: false,
            slivers: [
              SliverPadding(
                padding: EdgeInsets.all(20),
                sliver: SliverGrid.count(crossAxisCount: 1, children: [
                  Column(
                    children: [
                      Card(
                        elevation: 9,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0)),
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Padding(
                                padding: EdgeInsets.only(top: 20.0),
                                child: ListTile(
                                  leading: Icon(Icons.language),
                                  title: Text('The languages of the world'),
                                  subtitle: Text(
                                      'Well, more than 7,100 languages are spoken in the world today. Each and every one of them make the world a diverse and beautiful place. '),
                                ),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  TextButton(
                                      onPressed: () {},
                                      child: const Text('See Languages')),
                                  const SizedBox(width: 8),
                                  TextButton(
                                      onPressed: () {},
                                      child: const Text('Buy'))
                                ],
                              )
                            ]),
                      ),
                      const ProfileDataTable(),
                      const SizedBox(height: 8),
                    ],
                  ),
                  const ProfileGridView(),
                ]),
              ),
            ]),
      ),
    );
  }
}
