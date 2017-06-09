import 'dart:async';
import 'package:tuple/tuple.dart';

typedef Future Closer();

typedef FutureOr<Tuple2<String, Closer>> Framework(int nIsolates);
