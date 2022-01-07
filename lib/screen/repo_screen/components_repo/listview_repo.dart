import 'package:evision_task/components/progress.dart';
import 'package:evision_task/components/text_global.dart';
import 'package:evision_task/provider/repo_provider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ListViewBody extends StatelessWidget{
  const ListViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return   Consumer<RepoProvider>(
        builder: (context, provider, child) {
          if (provider.listRepoState.hasData) {
            if(provider.listRepoState.data!.isNotEmpty) {
              return  ListView.builder(

                  shrinkWrap: true,
                  itemCount: provider.listRepoState.data!.length,
                  itemBuilder: (BuildContext context,int index){
                    return   ListTile(

                      title: Txt("Name :${provider.listRepoState.data![index].name}",bold: FontWeight.normal,textAlign: TextAlign.center,size: 17.0,weight:
                      FontWeight.bold,),
                      subtitle: Txt("Url :${provider.listRepoState.data![index].url}",bold: FontWeight.normal,textAlign: TextAlign.center,size: 14.0,weight:
                      FontWeight.bold),
                      dense: false,
                    );

                    //    return second(title: provider.listRepoState.data![index].name,subTitle:provider.listRepoState.data![index].url ,);
                  }
              );
            }else{
              return Progress();
              //  return Center(child: textGlobalBlackBold25(context: context,text: "لم تتوفر منتجات "),);
            }
          }else{
            return Progress();
          }});
  }




}