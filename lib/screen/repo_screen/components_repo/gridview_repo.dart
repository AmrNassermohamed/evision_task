import 'package:evision_task/components/progress.dart';
import 'package:evision_task/components/text_global.dart';
import 'package:evision_task/provider/repo_provider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class GridViewBody extends StatelessWidget{
  const GridViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return   Consumer<RepoProvider>(
        builder: (context, provider, child) {
          if (provider.listRepoState.hasData) {
            if(provider.listRepoState.data!.isNotEmpty) {
              return GridView.builder(
                  itemCount: provider.listRepoState.data!.length,
                  gridDelegate:  const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,childAspectRatio: 2),
                  itemBuilder: (BuildContext context, int index) {

                    return GridTile(footer:Padding(
                      padding: const EdgeInsets.all(10),
                      child:   Txt("Name :${provider.listRepoState.data![index].name}",bold: FontWeight.normal,textAlign: TextAlign.center,size: 17.0,weight:
                      FontWeight.bold,),
                    )  ,child:Txt("Url :${provider.listRepoState.data![index].url}",bold: FontWeight.normal,textAlign: TextAlign.center,size: 14.0,weight:
                    FontWeight.bold,));

                  });
            }else{
              return Progress();
                 }
          }else{
            return Progress();
          }});
  }




}