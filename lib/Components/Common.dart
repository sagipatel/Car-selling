import 'dart:async';

import 'package:slide_transition_page_route/slide_transition_page_route.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

// final String imgBasePath = 'http://192.168.1.13:8000/';
final ScrollController _scrollController =
    new ScrollController(initialScrollOffset: 10.0, keepScrollOffset: true);

setScroll(Function func) {
  scroll() {
    var offset = _scrollController.position.maxScrollExtent - 1500;
    if (offset <= _scrollController.offset &&
        _scrollController.position.userScrollDirection.toString() ==
            'ScrollDirection.reverse') {
      func(_scrollController.offset);
      print(_scrollController.offset);
    }
  }

  _scrollController.addListener(scroll);
}

Future<SharedPreferences> _prefs = SharedPreferences.getInstance();

void router(context, widget, [type = 'push']) {
  if (type == 'pushReplacement') {
    Navigator.pushReplacement(context, SlideLeftRoute(widget: widget));
  } else {
    Navigator.push(context, SlideLeftRoute(widget: widget));
  }
}

Future<Null> setPrefs(key, value, [type = 'string']) async {
  final SharedPreferences prefs = await _prefs;
  if (type == 'string') {
    prefs.setString(key, value);
  } else if (type == 'bool') {
    prefs.setBool(key, value);
  } else if (type == 'stringList') {
    prefs.setStringList(key, value);
  } else if (type == 'double') {
    prefs.setDouble(key, value);
  } else if (type == 'int') {
    prefs.setInt(key, value);
  }
}

Future<Null> setListPrefs(key, List<String> value) async {
  final SharedPreferences prefs = await _prefs;
  prefs.setStringList(key, value);
}

Future<dynamic> getListpref(key) async {
  final SharedPreferences prefs = await _prefs;
  dynamic val;
  val = prefs.getStringList(key);
  return val;
}

Future<dynamic> getPrefs(key, [type = 'string']) async {
  final SharedPreferences prefs = await _prefs;
  dynamic val;
  if (type == 'string') {
    val = prefs.getString(key);
  } else if (type == 'bool') {
    val = prefs.getBool(key);
  } else if (type == 'stringList') {
    val = prefs.getStringList(key);
  } else if (type == 'double') {
    val = prefs.getDouble(key);
  } else if (type == 'int') {
    val = prefs.getInt(key);
  }
  return val;
}

Future<Null> removePrefs(key) async {
  final SharedPreferences prefs = await _prefs;
  prefs.remove(key);
}

Future<Null> clearPrefs() async {
  final SharedPreferences prefs = await _prefs;
  prefs.clear();
}

