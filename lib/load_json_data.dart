import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:untitled/small_res.dart';
import 'package:untitled/resdata.dart';


loadJsonData() async {

  var input =  await rootBundle.loadString('asset/json/dummyData.json');
  var map = jsonDecode(input);


  ResponseData.smallRes = SmallRes.fromJson(map);


  print(ResponseData.smallRes!.toJson());

  // for (var code in ResponseData.smallRes!.data!.errorCodes) {
  //   errCodes_arr.add(code);
  //   print(errCodes_arr);
  // }
  //
  // for (var obj in ResponseData.smallRes!.data!.errorCodes.values) {
  //   errCodes_arr.add(obj);
  //
  // }
  // print(jsonEncode(errCodes_arr[0]));

  // ResponseData.smallRes!.data!.errorCodes.values.forEach((obj) {
  //   print(obj);
  // });


  ///return map['users'];

}

