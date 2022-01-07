class RepoModel {
late String fullName;
late String name;
late String avatarUrl;
late String  url;

RepoModel({required this.fullName,required this.url,required this.avatarUrl,required this.name});

factory RepoModel.fromJson(Map<String, dynamic> json){
return RepoModel(fullName: json["full_name"], url: json["owner"]["url"], avatarUrl: json["owner"]["avatar_url"], name: json["owner"]["login"]);

}

}