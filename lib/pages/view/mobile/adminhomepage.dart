import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_datagrid/datagrid.dart';

@RoutePage()
class AdminhomePage extends StatelessWidget {
  AdminhomePage({super.key});

  final List<User> users = [
    User(
        name: 'John Doe',
        loginId: 'johndoe',
        password: 'password123',
        address: '123 Main St'),
    User(
        name: 'Jane Smith',
        loginId: 'janesmith',
        password: 'password456',
        address: '456 Elm St'),
    // Add more users as needed
  ];

  @override
  Widget build(BuildContext context) {
    final UserDataSource userDataSource = UserDataSource(users: users);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Admin Dashboard'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SfDataGrid(
          source: userDataSource,
          columns: <GridColumn>[
            GridColumn(
                columnName: 'name',
                label: Container(
                  padding: const EdgeInsets.all(8.0),
                  alignment: Alignment.centerLeft,
                  child: const Text('Name', overflow: TextOverflow.ellipsis),
                )),
            GridColumn(
                columnName: 'loginId',
                label: Container(
                  padding: const EdgeInsets.all(8.0),
                  alignment: Alignment.centerLeft,
                  child:
                      const Text('Login ID', overflow: TextOverflow.ellipsis),
                )),
            GridColumn(
                columnName: 'password',
                label: Container(
                  padding: const EdgeInsets.all(8.0),
                  alignment: Alignment.centerLeft,
                  child:
                      const Text('Password', overflow: TextOverflow.ellipsis),
                )),
            GridColumn(
                columnName: 'address',
                label: Container(
                  padding: const EdgeInsets.all(8.0),
                  alignment: Alignment.centerLeft,
                  child: const Text('Address', overflow: TextOverflow.ellipsis),
                )),
            GridColumn(
                columnName: 'action',
                label: Container(
                  padding: const EdgeInsets.all(8.0),
                  alignment: Alignment.center,
                  child: const Text('Action', overflow: TextOverflow.ellipsis),
                )),
          ],
        ),
      ),
    );
  }
}

class User {
  final String name;
  final String loginId;
  final String password;
  final String address;

  User(
      {required this.name,
      required this.loginId,
      required this.password,
      required this.address});
}

class UserDataSource extends DataGridSource {
  UserDataSource({required List<User> users}) {
    _users = users
        .map<DataGridRow>((user) => DataGridRow(cells: [
              DataGridCell<String>(columnName: 'name', value: user.name),
              DataGridCell<String>(columnName: 'loginId', value: user.loginId),
              DataGridCell<String>(
                  columnName: 'password', value: user.password),
              DataGridCell<String>(columnName: 'address', value: user.address),
              DataGridCell<Widget>(
                  columnName: 'action',
                  value: ElevatedButton(
                    onPressed: () {
                      print('Action pressed for ${user.name}');
                    },
                    child: const Text('Action'),
                  )),
            ]))
        .toList();
  }

  List<DataGridRow> _users = [];

  @override
  List<DataGridRow> get rows => _users;

  @override
  DataGridRowAdapter buildRow(DataGridRow row) {
    return DataGridRowAdapter(cells: [
      Container(
        padding: const EdgeInsets.all(8.0),
        alignment: Alignment.centerLeft,
        child: Text(row.getCells()[0].value),
      ),
      Container(
        padding: const EdgeInsets.all(8.0),
        alignment: Alignment.centerLeft,
        child: Text(row.getCells()[1].value),
      ),
      Container(
        padding: const EdgeInsets.all(8.0),
        alignment: Alignment.centerLeft,
        child: Text(row.getCells()[2].value),
      ),
      Container(
        padding: const EdgeInsets.all(8.0),
        alignment: Alignment.centerLeft,
        child: Text(row.getCells()[3].value),
      ),
      Container(
        padding: const EdgeInsets.all(8.0),
        alignment: Alignment.center,
        child: row.getCells()[4].value,
      ),
    ]);
  }
}
