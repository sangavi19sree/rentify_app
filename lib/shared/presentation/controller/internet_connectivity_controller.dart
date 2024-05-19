import 'dart:async';
import 'dart:io';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:get/get.dart';
import 'package:rentify/shared/domain/entity/connectivity_status.dart';

class InternetConnectivityController extends GetxController {
  Rx<ConnectivityStatus> status = ConnectivityStatus.checking.obs;

  /// host to lookup every [interval]
  final String _urlToCheck = "https://core.abshrms.com/api/getAppVersion";

  /// The time to wait between each internet connectivity verification
  final Duration interval = const Duration(seconds: 10);

  final StreamController<bool> _streamController = StreamController<bool>();

  @override
  void onInit() {
    super.onInit();
    setupConnectivityChecker();
    Connectivity().onConnectivityChanged.listen((result) {
      _checkUrls();
    });
  }

  /// Connectivity stream
  Stream<bool> get stream => _streamController.stream
          .asBroadcastStream()
          .timeout(20.seconds, onTimeout: (eventSink) {
        eventSink.add(false);
      });

  /// Initialize an connectivity checker object
  void setupConnectivityChecker() {
    _checkUrls();
    Timer.periodic(interval, (_) => _checkUrls());
    stream.listen((isOnline) {
      if ((isOnline && status.value == ConnectivityStatus.online) ||
          (!isOnline && status.value == ConnectivityStatus.offline)) return;
      status.value =
          isOnline ? ConnectivityStatus.online : ConnectivityStatus.offline;
    });
  }

  void _checkUrls() async {
    bool isLookupSuccessful = false;

    try {
      final HttpClientRequest request =
          await HttpClient().headUrl(Uri.parse(_urlToCheck));
      final HttpClientResponse response = await request.close();

      if (response.connectionInfo != null) {
        isLookupSuccessful = true;
      } else {
        isLookupSuccessful = false;
      }
    } catch (e) {
      isLookupSuccessful = false;
    }

    _streamController.sink.add(isLookupSuccessful);
  }

  @override
  void onClose() {
    _streamController.close();
    super.onClose();
  }
}
