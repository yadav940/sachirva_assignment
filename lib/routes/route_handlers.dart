


import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sachirva_assignment/provider/singin_provider.dart';
import 'package:sachirva_assignment/ui/auth/login/login.dart';

/// root application launch
/*final Handler rootHandler = Handler(
    handlerFunc: (context, params) =>
     LoginPage());*/



final rootHandler = Handler(handlerFunc: (context, params) {
  return ChangeNotifierProvider<SignInProvider>(
      create: (context) => SignInProvider(),
      child: LoginPage());
});
final loginHandler = Handler(handlerFunc: (context, params) {
  return ChangeNotifierProvider<SignInProvider>(
      create: (context) => SignInProvider(),
      child: LoginPage());
});

final homeHandler = Handler(handlerFunc: (context, params) {
  return /*ChangeNotifierProvider<HomeProvider>(
      create: (context) => HomeProvider(HomeService()),
      child: Home())*/Container();
});
/*
final searchFilterHandler = Handler(handlerFunc: (context, params) {
  return ChangeNotifierProvider<SearchFilterProvider>(
    create: (context) => SearchFilterProvider(SearchService()),
    child: SearchFilter());
});
final userSearchFilterHandler = Handler(handlerFunc: (context, params) {
  return UserSearchFilter();
});
final lookTaggingHandler = Handler(handlerFunc: (context, params) {
  final obj = ModalRoute.of(context).settings.arguments;
  return ChangeNotifierProvider<UpdateTagProvider>(
      create: (context) => UpdateTagProvider(SearchService(),obj,TagPageName.LookTagging),
      child: LookTagging());
});

final updateTagsHandler = Handler(handlerFunc: (context, params) {
  final obj = ModalRoute.of(context).settings.arguments;
  return ChangeNotifierProvider<UpdateTagProvider>(
      create: (context) => UpdateTagProvider(SearchService(),obj,TagPageName.UpdateTags),
      child: UpdateTags());
});
final updateTagsListHandler = Handler(handlerFunc: (context, params) {
  final obj = ModalRoute.of(context).settings.arguments;
  return ChangeNotifierProvider<UpdateTagProvider>(
      create: (context) => UpdateTagProvider(SearchService(),obj,TagPageName.UpdateTagList),
      child: UpdateTagList());
});*/
