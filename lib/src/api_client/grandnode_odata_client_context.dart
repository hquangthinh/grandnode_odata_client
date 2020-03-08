import 'package:dio/dio.dart';
import 'package:grandnode_odata_client/src/api_client/impl/category_odata_client_context.dart';
import 'package:grandnode_odata_client/src/api_client/impl/category_template_odata_client_context.dart';
import 'package:grandnode_odata_client/src/api_client/impl/country_odata_client_context.dart';
import 'package:grandnode_odata_client/src/api_client/impl/currency_odata_client_context.dart';
import 'package:grandnode_odata_client/src/api_client/impl/customer_odata_client_context.dart';
import 'package:grandnode_odata_client/src/api_client/impl/customer_role_odata_client_context.dart';
import 'package:grandnode_odata_client/src/api_client/impl/delivery_date_odata_client_context.dart';
import 'package:grandnode_odata_client/src/api_client/impl/language_odata_client_context.dart';
import 'package:grandnode_odata_client/src/api_client/impl/manufacturer_odata_client_context.dart';
import 'package:grandnode_odata_client/src/api_client/impl/manufacturer_template_odata_client_context.dart';
import 'package:grandnode_odata_client/src/api_client/impl/pickup_point_odata_client_context.dart';
import 'package:grandnode_odata_client/src/api_client/impl/picture_odata_client_context.dart';
import 'package:grandnode_odata_client/src/api_client/impl/product_attribute_odata_client_context.dart';
import 'package:grandnode_odata_client/src/api_client/impl/product_template_odata_client_context.dart';
import 'package:grandnode_odata_client/src/api_client/impl/shipping_method_odata_client_context.dart';
import 'package:grandnode_odata_client/src/api_client/impl/specification_attribute_odata_client_context.dart';
import 'package:grandnode_odata_client/src/api_client/impl/state_province_odata_client_context.dart';
import 'package:grandnode_odata_client/src/api_client/impl/vendor_odata_client_context.dart';
import 'package:grandnode_odata_client/src/api_client/impl/warehouse_odata_client_context.dart';
import 'package:grandnode_odata_client/src/api_client/odata_client_context.dart';
import 'package:grandnode_odata_client/src/api_client/impl/product_odata_client_context.dart';
import 'package:grandnode_odata_client/src/api_client/impl/store_odata_client_context.dart';
import 'package:grandnode_odata_client/src/models/catalog/category_dto.dart';
import 'package:grandnode_odata_client/src/models/catalog/category_template_dto.dart';
import 'package:grandnode_odata_client/src/models/catalog/manufacturer_dto.dart';
import 'package:grandnode_odata_client/src/models/catalog/manufacturer_template_dto.dart';
import 'package:grandnode_odata_client/src/models/catalog/product_attribute_dto.dart';
import 'package:grandnode_odata_client/src/models/catalog/product_dto.dart';
import 'package:grandnode_odata_client/src/models/catalog/product_template_dto.dart';
import 'package:grandnode_odata_client/src/models/catalog/specification_attribute_dto.dart';
import 'package:grandnode_odata_client/src/models/common/country_dto.dart';
import 'package:grandnode_odata_client/src/models/common/currency_dto.dart';
import 'package:grandnode_odata_client/src/models/common/language_dto.dart';
import 'package:grandnode_odata_client/src/models/common/picture_dto.dart';
import 'package:grandnode_odata_client/src/models/common/state_province_dto.dart';
import 'package:grandnode_odata_client/src/models/common/store_dto.dart';
import 'package:grandnode_odata_client/src/models/customer/customer_dto.dart';
import 'package:grandnode_odata_client/src/models/customer/customer_role_dto.dart';
import 'package:grandnode_odata_client/src/models/customer/vendor_dto.dart';
import 'package:grandnode_odata_client/src/models/shipping/delivery_date_dto.dart';
import 'package:grandnode_odata_client/src/models/shipping/pickup_point_dto.dart';
import 'package:grandnode_odata_client/src/models/shipping/shipping_method_dto.dart';
import 'package:grandnode_odata_client/src/models/shipping/warehouse_dto.dart';

class GrandNodeODataClientContext {
  GrandNodeODataClientContext(this.httpClient);

  final Dio httpClient;
  ODataClientContext<CategoryDto> _category;
  ODataClientContext<CategoryTemplateDto> _categoryTemplate;
  ODataClientContext<CountryDto> _country;
  ODataClientContext<CurrencyDto> _currency;
  ODataClientContext<CustomerDto> _customer;
  ODataClientContext<CustomerRoleDto> _customerRole;
  ODataClientContext<DeliveryDateDto> _deliveryDate;
  ODataClientContext<LanguageDto> _language;
  ODataClientContext<ManufacturerDto> _manufacturer;
  ODataClientContext<ManufacturerTemplateDto> _manufacturerTemplate;
  ODataClientContext<PickupPointDto> _pickupPoint;
  ODataClientContext<PictureDto> _picture;
  ODataClientContext<ProductAttributeDto> _productAttribute;
  ODataClientContext<ProductDto> _product;
  ODataClientContext<ProductTemplateDto> _productTemplate;
  ODataClientContext<ShippingMethodDto> _shippingMethod;
  ODataClientContext<SpecificationAttributeDto> _specificationAttribute;
  ODataClientContext<StateProvinceDto> _stateProvince;
  ODataClientContext<StoreDto> _store;
  ODataClientContext<VendorDto> _vendor;
  ODataClientContext<WarehouseDto> _warehouse;

  ODataClientContext<CategoryDto> get categories {
    if (_category == null)
      _category = CategoryODataClientContext(this.httpClient);
    return _category;
  }

  ODataClientContext<CategoryTemplateDto> get categoryTemplates {
    if (_categoryTemplate == null)
      _categoryTemplate = CategoryTemplateODataClientContext(this.httpClient);
    return _categoryTemplate;
  }

  ODataClientContext<CountryDto> get countries {
    if (_country == null) _country = CountryODataClientContext(this.httpClient);
    return _country;
  }

  ODataClientContext<CurrencyDto> get currencies {
    if (_currency == null)
      _currency = CurrencyODataClientContext(this.httpClient);
    return _currency;
  }

  ODataClientContext<CustomerDto> get customers {
    if (_customer == null)
      _customer = CustomerODataClientContext(this.httpClient);
    return _customer;
  }

  ODataClientContext<CustomerRoleDto> get customerRoles {
    if (_customerRole == null)
      _customerRole = CustomerRoleODataClientContext(this.httpClient);
    return _customerRole;
  }

  ODataClientContext<DeliveryDateDto> get deliveryDates {
    if (_deliveryDate == null)
      _deliveryDate = DeliveryDateODataClientContext(this.httpClient);
    return _deliveryDate;
  }

  ODataClientContext<LanguageDto> get languages {
    if (_language == null)
      _language = LanguageODataClientContext(this.httpClient);
    return _language;
  }

  ODataClientContext<ManufacturerDto> get manufacturers {
    if (_manufacturer == null)
      _manufacturer = ManufacturerODataClientContext(this.httpClient);
    return _manufacturer;
  }

  ODataClientContext<ManufacturerTemplateDto> get manufacturerTemplates {
    if (_manufacturerTemplate == null)
      _manufacturerTemplate =
          ManufacturerTemplateODataClientContext(this.httpClient);
    return _manufacturerTemplate;
  }

  ODataClientContext<PickupPointDto> get pickupPoints {
    if (_pickupPoint == null)
      _pickupPoint = PickupPointODataClientContext(this.httpClient);
    return _pickupPoint;
  }

  ODataClientContext<PictureDto> get pictures {
    if (_picture == null) _picture = PictureODataClientContext(this.httpClient);
    return _picture;
  }

  ODataClientContext<ProductAttributeDto> get productAttributess {
    if (_productAttribute == null)
      _productAttribute = ProductAttributeODataClientContext(this.httpClient);
    return _productAttribute;
  }

  ODataClientContext<ProductDto> get products {
    if (_product == null) _product = ProductODataClientContext(this.httpClient);
    return _product;
  }

  ODataClientContext<ProductTemplateDto> get productTemplates {
    if (_productTemplate == null)
      _productTemplate = ProductTemplateODataClientContext(this.httpClient);
    return _productTemplate;
  }

  ODataClientContext<ShippingMethodDto> get shippingMethods {
    if (_shippingMethod == null)
      _shippingMethod = ShippingMethodODataClientContext(this.httpClient);
    return _shippingMethod;
  }

  ODataClientContext<SpecificationAttributeDto> get specificationAttributes {
    if (_specificationAttribute == null)
      _specificationAttribute =
          SpecificationAttributeODataClientContext(this.httpClient);
    return _specificationAttribute;
  }

  ODataClientContext<StateProvinceDto> get stateProvinces {
    if (_stateProvince == null)
      _stateProvince = StateProvinceODataClientContext(this.httpClient);
    return _stateProvince;
  }

  ODataClientContext<StoreDto> get stores {
    if (_store == null) _store = StoreODataClientContext(this.httpClient);
    return _store;
  }

  ODataClientContext<VendorDto> get vendors {
    if (_vendor == null) _vendor = VendorODataClientContext(this.httpClient);
    return _vendor;
  }

  ODataClientContext<WarehouseDto> get warehouses {
    if (_warehouse == null)
      _warehouse = WarehouseODataClientContext(this.httpClient);
    return _warehouse;
  }

  close() {
    httpClient.close();
  }
}
