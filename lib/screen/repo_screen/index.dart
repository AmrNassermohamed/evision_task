
import 'package:evision_task/components/app_bar.dart';
import 'package:evision_task/components/button_global.dart';
import 'package:evision_task/provider/repo_provider.dart';
import 'package:evision_task/screen/repo_screen/components_repo/gridview_repo.dart';
import 'package:evision_task/screen/repo_screen/components_repo/listview_repo.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class RepScreen extends StatefulWidget {

  RepScreen({Key? key}) : super(key: key) ;
RepScreenState createState() => RepScreenState();
}
class RepScreenState extends State<RepScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    init();
  }

  init() {
    final validationService = Provider.of<RepoProvider>(
        context, listen: false);
    validationService.getRepo();
  }

  @override
  Widget build(BuildContext context) {
    final validationService = Provider.of<RepoProvider>(
        context, listen: false);

    return Scaffold(
      floatingActionButton: customElevatedButtonWithIcon(context, function: () {
validationService.boolView();
      }, title: "change view List"),
      appBar: barPage(context, "Repo"),
      body:
      Consumer<RepoProvider>(
          builder: (context, provider, child) {
            if (provider.view == true) {
              return const ListViewBody();
            } else {
              return const GridViewBody();
            }
            //const ListViewBody(),
          }),
    );
  }
}



