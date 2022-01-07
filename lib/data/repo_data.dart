import 'package:evision_task/model/repo_model.dart';
import 'package:evision_task/services/service_handler.dart';

class RepoData {
  getRepoData () async {
    try {
      List<RepoModel> repoList = [];
      var response = await ServicesHandler().getService();
      response.forEach((v) {
        RepoModel repoModel = RepoModel.fromJson(v);
        repoList.add(repoModel);
      });

      return repoList;
    }catch(ex){
      rethrow;
    }
  }



  }

