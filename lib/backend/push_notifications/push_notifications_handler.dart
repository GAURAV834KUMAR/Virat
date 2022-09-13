import 'dart:async';
import 'dart:convert';

import 'serialization_util.dart';
import '../backend.dart';
import '../../flutter_flow/flutter_flow_theme.dart';
import '../../flutter_flow/flutter_flow_util.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';

import '../../index.dart';
import '../../main.dart';

class PushNotificationsHandler extends StatefulWidget {
  const PushNotificationsHandler({Key key, this.child}) : super(key: key);

  final Widget child;

  @override
  _PushNotificationsHandlerState createState() =>
      _PushNotificationsHandlerState();
}

class _PushNotificationsHandlerState extends State<PushNotificationsHandler> {
  bool _loading = false;

  Future handleOpenedPushNotification() async {
    if (isWeb) {
      return;
    }

    final notification = await FirebaseMessaging.instance.getInitialMessage();
    if (notification != null) {
      await _handlePushNotification(notification);
    }
    FirebaseMessaging.onMessageOpenedApp.listen(_handlePushNotification);
  }

  Future _handlePushNotification(RemoteMessage message) async {
    setState(() => _loading = true);
    try {
      final initialPageName = message.data['initialPageName'] as String;
      final initialParameterData = getInitialParameterData(message.data);
      final pageBuilder = pageBuilderMap[initialPageName];
      if (pageBuilder != null) {
        final page = await pageBuilder(initialParameterData);
        await Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => page),
        );
      }
    } catch (e) {
      print('Error: $e');
    } finally {
      setState(() => _loading = false);
    }
  }

  @override
  void initState() {
    super.initState();
    handleOpenedPushNotification();
  }

  @override
  Widget build(BuildContext context) => _loading
      ? Center(
          child: SizedBox(
            width: 50,
            height: 50,
            child: SpinKitDoubleBounce(
              color: FlutterFlowTheme.of(context).primaryColor,
              size: 50,
            ),
          ),
        )
      : widget.child;
}

final pageBuilderMap = <String, Future<Widget> Function(Map<String, dynamic>)>{
  'Login': (data) async => LoginWidget(),
  'verify_phone_no': (data) async => VerifyPhoneNoWidget(),
  'Cart': (data) async => CartWidget(),
  'RegisterUser': (data) async => RegisterUserWidget(),
  'Search_Page': (data) async => SearchPageWidget(),
  'ProductList': (data) async => ProductListWidget(
        slist: getParameter(data, 'slist'),
      ),
  'Product_Details': (data) async => ProductDetailsWidget(
        prid: await getDocumentParameter(
            data, 'prid', ProductMasterRecord.serializer),
        psql: getParameter(data, 'psql'),
      ),
  'Delivery_Address': (data) async => DeliveryAddressWidget(
        proid: await getDocumentParameter(
            data, 'proid', ProductMasterRecord.serializer),
        psql: getParameter(data, 'psql'),
      ),
  'Payment_Method': (data) async => PaymentMethodWidget(
        proid: await getDocumentParameter(
            data, 'proid', ProductMasterRecord.serializer),
      ),
  'Order_Confirmation': (data) async => OrderConfirmationWidget(
        proid: await getDocumentParameter(
            data, 'proid', ProductMasterRecord.serializer),
        address: await getDocumentParameter(
            data, 'address', AdressRecord.serializer),
        psql: getParameter(data, 'psql'),
      ),
  'SucessPage': (data) async => SucessPageWidget(),
  'EditAddres': (data) async => EditAddresWidget(
        address: await getDocumentParameter(
            data, 'address', AdressRecord.serializer),
      ),
  'Address': (data) async => AddressWidget(),
  'EditProfile': (data) async => EditProfileWidget(),
  'Profile': (data) async => ProfileWidget(),
  'Your_Address': (data) async => YourAddressWidget(),
  'CatagoreyList': (data) async => CatagoreyListWidget(
        groupname: getParameter(data, 'groupname'),
      ),
  'MyOrders': (data) async => MyOrdersWidget(),
  'MyOrdersDetails': (data) async => MyOrdersDetailsWidget(
        odid: await getDocumentParameter(
            data, 'odid', OrderDetailsRecord.serializer),
      ),
  'Favourite': (data) async => FavouriteWidget(),
  'OrderHistory': (data) async => OrderHistoryWidget(),
  'Order_Details': (data) async => OrderDetailsWidget(
        odid: await getDocumentParameter(
            data, 'odid', OrderDetailsRecord.serializer),
      ),
  'Delivery_Sucess_Page': (data) async => DeliverySucessPageWidget(),
  'Post_Notification': (data) async => PostNotificationWidget(),
  'Delivery_AddressCart': (data) async => DeliveryAddressCartWidget(
        odid: await getDocumentParameter(
            data, 'odid', OrderDetailsRecord.serializer),
        amount: getParameter(data, 'amount'),
      ),
  'Order_ConfirmationCart': (data) async => OrderConfirmationCartWidget(
        aid: await getDocumentParameter(data, 'aid', AdressRecord.serializer),
        odid: await getDocumentParameter(
            data, 'odid', OrderDetailsRecord.serializer),
        amount: getParameter(data, 'amount'),
      ),
};

bool hasMatchingParameters(Map<String, dynamic> data, Set<String> params) =>
    params.any((param) => getParameter(data, param) != null);

Map<String, dynamic> getInitialParameterData(Map<String, dynamic> data) {
  try {
    final parameterDataStr = data['parameterData'];
    if (parameterDataStr == null ||
        parameterDataStr is! String ||
        parameterDataStr.isEmpty) {
      return {};
    }
    return jsonDecode(parameterDataStr) as Map<String, dynamic>;
  } catch (e) {
    print('Error parsing parameter data: $e');
    return {};
  }
}
