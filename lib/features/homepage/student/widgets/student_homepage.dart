import 'package:bennett_app/features/homepage/student/bloc/homepage_notifier.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

/// Homepage for a Student
class StudentHomePage extends StatelessWidget {
  ///
  const StudentHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const Drawer(),
      backgroundColor: Theme.of(context).backgroundColor,
      appBar: AppBar(
        title: Title(
          color: Colors.white,
          child: const Text('Bennett University'),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            height: 200,
            color: Colors.blue[300],
          ),
          const SizedBox(
            height: 50,
          ),
          Flexible(
            child: Consumer(
              builder: (context, ref, child) {
                var gridButtons = ref.watch(homepageNotifier);

                return GridView.count(
                  crossAxisCount: 3,
                  children: gridButtons
                      .map(
                        (info) => GestureDetector(
                          onTap: () {
                            info.onTap(context);
                          },
                          child: Column(
                            children: [
                              Icon(
                                info.icon,
                                color: Colors.black,
                                size: 30,
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Text(info.title),
                            ],
                          ),
                        ),
                      )
                      .toList(),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
