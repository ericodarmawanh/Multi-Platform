import 'package:flutter/material.dart';
import 'package:stateless_statefull/presentation/widgets/number_widget.dart';
import 'package:stateless_statefull/services/menu_services.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  final List<int> numbers = const [1, 2, 3, 4, 5, 6, 7, 8, 9];

  @override
  Widget build(BuildContext context) {
    MenuServices services = MenuServices();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Stateless'),
      ),
      body: SizedBox(
        // width: 200,
        child: ListView(
          scrollDirection: Axis.vertical,
          children: [
            Column(
              // crossAxisAlignment: CrossAxisAlignment.start,
              children: services
                  .getMenus()
                  .map(
                    (menu) => NumberWidget(
                      number: menu.price,
                    ),
                  )
                  .toList(),
            )
          ],
        ),
      ),
    );
  }
}
