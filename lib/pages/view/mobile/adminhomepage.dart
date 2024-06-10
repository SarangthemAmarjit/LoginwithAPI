import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:logindemo/controller/tapcontroller.dart';
import 'package:logindemo/model/allusermodel.dart';
import 'package:syncfusion_flutter_datagrid/datagrid.dart';

@RoutePage()
class AdminhomePage extends StatelessWidget {
  const AdminhomePage({super.key});

  @override
  Widget build(BuildContext context) {
    GetxTapController controller = Get.put(GetxTapController(context: context));
    final UserDataSource userDataSource =
        UserDataSource(users: controller.getalluserlist, context: context);

    return Scaffold(
      body: GetBuilder<GetxTapController>(builder: (_) {
        return Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'All User List',
                    style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
                  ),
                  Row(
                    children: [
                      const Icon(Icons.logout),
                      TextButton(
                        onPressed: () {
                          controller.logoutaccount();
                        },
                        child: const Text(
                          'Log Out',
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 40,
              ),
              Expanded(
                child: SfDataGrid(
                  columnWidthMode: ColumnWidthMode.fill,
                  verticalScrollPhysics: const ClampingScrollPhysics(),
                  horizontalScrollPhysics: const NeverScrollableScrollPhysics(),
                  gridLinesVisibility: GridLinesVisibility.both,
                  headerGridLinesVisibility: GridLinesVisibility.both,
                  source: userDataSource,
                  columns: <GridColumn>[
                    GridColumn(
                        columnName: 'name',
                        label: Container(
                          padding: const EdgeInsets.all(8.0),
                          alignment: Alignment.centerLeft,
                          child: const Text('Name',
                              overflow: TextOverflow.ellipsis),
                        )),
                    GridColumn(
                        columnName: 'loginId',
                        label: Container(
                          padding: const EdgeInsets.all(8.0),
                          alignment: Alignment.centerLeft,
                          child: const Text('Login ID',
                              overflow: TextOverflow.ellipsis),
                        )),
                    GridColumn(
                        columnName: 'password',
                        label: Container(
                          padding: const EdgeInsets.all(8.0),
                          alignment: Alignment.centerLeft,
                          child: const Text('Password',
                              overflow: TextOverflow.ellipsis),
                        )),
                    GridColumn(
                        columnName: 'address',
                        label: Container(
                          padding: const EdgeInsets.all(8.0),
                          alignment: Alignment.centerLeft,
                          child: const Text('Address',
                              overflow: TextOverflow.ellipsis),
                        )),
                    GridColumn(
                        columnName: 'action',
                        label: Container(
                          padding: const EdgeInsets.all(8.0),
                          alignment: Alignment.center,
                          child: const Text('Action',
                              overflow: TextOverflow.ellipsis),
                        )),
                  ],
                ),
              ),
            ],
          ),
        );
      }),
    );
  }
}

class UserDataSource extends DataGridSource {
  UserDataSource(
      {required List<Getallusers> users, required BuildContext context}) {
    GetxTapController controller = Get.put(GetxTapController(context: context));
    _users = users
        .map<DataGridRow>((user) => DataGridRow(cells: [
              DataGridCell<String>(columnName: 'name', value: user.firstName),
              DataGridCell<String>(columnName: 'loginId', value: user.email),
              DataGridCell<String>(
                  columnName: 'password', value: user.password),
              DataGridCell<String>(columnName: 'address', value: user.address),
              DataGridCell<Widget>(
                  columnName: 'action',
                  value: IconButton(
                    icon: const Icon(
                      Icons.delete,
                      color: Colors.red,
                    ),
                    onPressed: () {
                      controller.deleteuser(id: user.id);
                    },
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
