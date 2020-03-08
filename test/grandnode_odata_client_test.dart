import 'package:flutter_test/flutter_test.dart';
import 'package:grandnode_odata_client/grandnode_odata_client.dart';
import 'package:grandnode_odata_client/src/api_client/client_auth.dart';
import 'package:grandnode_odata_client/src/api_client/dio_factory.dart';
import 'package:grandnode_odata_client/src/api_client/grandnode_odata_client_context.dart';

import 'test_helper.dart';

void main() async {
  final accessToken = await ClientAuth.getAuthToken(
    TestHelper.apiBaseUrl,
    TestHelper.email,
    TestHelper.password,
  );
  final clientContext = GrandNodeODataClientContext(DioFactory.create(
    apiBaseUrl: TestHelper.apiBaseUrl,
    accessToken: accessToken,
  ));

  group("Test query options", () {
    test('Get top 5 stores from your store - GET /odata/store', () async {
      clientContext.stores.top(5);
      expect(clientContext.stores.buildResourcePathWithQueryOptions(),
          "/odata/store?\$top=5");
      final result = await clientContext.stores.executeQuery();
      expect(result != null, true);
      expect(result.isSuccess, true);
      expect(result.hasValue, true);
      print(result.data.value.first != null);
    });

    test('Get top 5 products - GET /odata/product', () async {
      clientContext.products
        ..filter("Name eq 'Build your own computer'")
        ..top(5)
        ..count();
      final result = await clientContext.products.executeQuery();
      expect(result != null, true);
      expect(result.isSuccess, true);
      expect(result.hasValue, true);
      print(result.data.odataCount == 1);
    });

    test("Get product by key - executeQueryByKey - item found", () async {
      clientContext.products.id("5e3c32c8504e9c00e84247de");
      final result = await clientContext.products.executeQueryByKey();
      expect(result != null, true);
      expect(result.isSuccess, true);
      expect(result.hasValue, true);
      expect(result.data != null, true);
    });

    test("Get product by key - item not found", () async {
      clientContext.products.id("xxx");
      final result = await clientContext.products.executeQueryByKey();
      expect(result != null, true);
      expect(result.isFailure, true);
      expect(result.hasValue, false);
      expect(result.data == null, true);
    });
  });
}
