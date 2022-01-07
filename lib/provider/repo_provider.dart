import 'package:evision_task/data/repo_data.dart';
import 'package:evision_task/model/provider_general_state.dart';
import 'package:evision_task/model/repo_model.dart';
import 'package:flutter/cupertino.dart';

class RepoProvider extends ChangeNotifier {
  late ProviderGeneralState<List <RepoModel>> listRepoState;
  late bool view=false;
  getRepo() async {
try {
  List <RepoModel> repoList;
  setWaiting();
  repoList = await RepoData().getRepoData();
  listRepoState = ProviderGeneralState(data: repoList, hasData: true);
  notifyListeners();
}catch(ex){
  setError(ex.toString());
  rethrow;
}
  }

  setWaiting(){
    listRepoState=ProviderGeneralState(waiting: true);
  }

  setError(error){
    listRepoState=ProviderGeneralState(error:error,hasError: true );
  }
  listen(){
notifyListeners();
  }

boolView(){
    if(view==false){
      view=true;
    }else{
      view=false;
    }
    notifyListeners();
}


}