import 'package:flutter_test/flutter_test.dart';
import 'package:grandnode_odata_client/grandnode_odata_client.dart';
import 'package:grandnode_odata_client/src/api_client/client_auth.dart';
import 'package:grandnode_odata_client/src/api_client/dio_factory.dart';
import 'package:grandnode_odata_client/src/api_client/grandnode_odata_client_context.dart';
import 'package:grandnode_odata_client/src/models/catalog/category_dto.dart';

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

  group("Test category client", () {
    var categoryId = "";
    test('Create category', () async {
      final json = CategoryDto(
        id: categoryId,
        name: "Test Category Name 3",
        description: "Test Description 3",
        categoryTemplateId: "5e3c32c8504e9c00e8424767",
        metaKeywords: "",
        metaDescription: "",
        metaTitle: "",
        seName: "",
        parentCategoryId: "",
        pictureId: null,
        pageSize: 0,
        allowCustomersToSelectPageSize: true,
        pageSizeOptions: "6, 3, 9",
        priceRanges: "",
        showOnHomePage: false,
        featuredProductsOnHomaPage: false,
        includeInTopMenu: false,
        published: true,
        displayOrder: 0,
        flag: null,
        flagStyle: null,
        icon: null,
        hideOnCatalog: false,
        showOnSearchBox: false,
        searchBoxDisplayOrder: 0,
      ).toJson();
      final result = await clientContext.categories.createOrUpdateEntity(json);
      expect(result != null, true);
      expect(result.isSuccess, true);
      expect(result.hasValue, true);
      expect(result.data.id.isNotEmpty, true);

      categoryId = result.data.id;
    });

    test("Get category by key", () async {
      clientContext.categories.id(categoryId);
      final result = await clientContext.categories.executeQueryByKey();
      expect(result != null, true);
      expect(result.isSuccess, true);
      expect(result.hasValue, true);
      expect(result.data.id.isNotEmpty, true);
    });

    test("Update full category", () async {
      clientContext.categories.id(categoryId);
      final result = await clientContext.categories.executeQueryByKey();
      final dto = result.data;

      dto.description =
          "Description is updated at ${DateTime.now().toIso8601String()}";
      final updateResult =
          await clientContext.categories.updateEntity(dto.toJson());

      expect(updateResult != null, true);
      expect(updateResult.isSuccess, true);
      expect(updateResult.hasValue, true);
      expect(updateResult.data.id.isNotEmpty, true);
    });

    test("Update partial category", () async {
      clientContext.categories.id(categoryId);
      await clientContext.categories.updatePartialEntity({
        "Description": "<p>Description 3 updated 3 by patch</p>",
        "PriceRanges": "1000-2000",
        "Flag": "hot"
      });

      clientContext.categories.id(categoryId);
      final updateResult = await clientContext.categories.executeQueryByKey();
      expect(updateResult != null, true);
      expect(updateResult.isSuccess, true);
      expect(updateResult.hasValue, true);
      expect(updateResult.data.id.isNotEmpty, true);
      expect(updateResult.data.priceRanges == "1000-2000", true);
    });

    test("Delete category", () async {
      clientContext.categories.id(categoryId);
      await clientContext.categories.deleteEntity();
    });
  });
}
