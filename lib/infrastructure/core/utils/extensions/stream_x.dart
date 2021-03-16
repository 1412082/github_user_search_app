import 'dart:async';

extension StreamX<T> on Stream<T> {
  Stream<T> ignoreError() {
    final streamCtrl = StreamController<T>();
    listen((data) {
      streamCtrl.add(data);
    }, onError: (e) {
      streamCtrl.add(null);
    }, onDone: () {
      streamCtrl.close();
    });
    return streamCtrl.stream;
  }

  Stream<void> mapToVoid() {
    final streamCtrl = StreamController<void>();
    listen((_) {
      streamCtrl.add(null);
    }, onError: (e) {
      streamCtrl.addError(e);
    }, onDone: () {
      streamCtrl.close();
    });
    return streamCtrl.stream;
  }

  Stream<U> then<U>(Stream<U> Function() task) {
    return asyncExpand((t) => task());
  }

  Stream<U> onValueThen<U>(Stream<U> Function(T event) convert) {
    return asyncExpand((t) => convert(t));
  }
}
