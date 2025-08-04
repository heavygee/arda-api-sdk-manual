# DefaultApi

All URIs are relative to *http://localhost*

|Method | HTTP request | Description|
|------------- | ------------- | -------------|
|[**accountAccountIdGet**](#accountaccountidget) | **GET** /account/{accountId} | GET account by accountId|
|[**apiAdminAccountAccountIdGet**](#apiadminaccountaccountidget) | **GET** /api/admin/account/{accountId} | GET account by accountId|
|[**apiAdminAccountAccountIdStatsGet**](#apiadminaccountaccountidstatsget) | **GET** /api/admin/account/{accountId}/stats | GET stats by accountId|
|[**apiAdminAuthSchemasGet**](#apiadminauthschemasget) | **GET** /api/admin/auth/schemas | GET schemas|
|[**apiAdminFabricatorJobJobIdGet**](#apiadminfabricatorjobjobidget) | **GET** /api/admin/fabricator/job/{jobId} | GET job by jobId|
|[**apiAdminFabricatorJobJobIdPut**](#apiadminfabricatorjobjobidput) | **PUT** /api/admin/fabricator/job/{jobId} | PUT job by jobId|
|[**apiAdminFabricatorJobsGet**](#apiadminfabricatorjobsget) | **GET** /api/admin/fabricator/jobs | GET jobs|
|[**apiAdminFabricatorProductsGet**](#apiadminfabricatorproductsget) | **GET** /api/admin/fabricator/products | GET products|
|[**apiAdminFabricatorSchemas2Get**](#apiadminfabricatorschemas2get) | **GET** /api/admin/fabricator/schemas2 | GET schemas2|
|[**apiAdminInventoryItemItemIdGet**](#apiadmininventoryitemitemidget) | **GET** /api/admin/inventory/item/{itemId} | GET item by itemId|
|[**apiAdminInventoryItemsGet**](#apiadmininventoryitemsget) | **GET** /api/admin/inventory/items | GET items|
|[**apiAdminInventoryStatsGet**](#apiadmininventorystatsget) | **GET** /api/admin/inventory/stats | GET stats|
|[**apiAdminShipperNextGet**](#apiadminshippernextget) | **GET** /api/admin/shipper/next | GET next|
|[**apiAdminShipperShipmentShipmentIdGet**](#apiadminshippershipmentshipmentidget) | **GET** /api/admin/shipper/shipment/{shipmentId} | GET shipment by shipmentId|
|[**apiAdminShipperShipmentsGet**](#apiadminshippershipmentsget) | **GET** /api/admin/shipper/shipments | GET shipments|
|[**apiAdminShipperStatsGet**](#apiadminshipperstatsget) | **GET** /api/admin/shipper/stats | GET stats|
|[**apiAdminShopOrderOrderIdChecklistGet**](#apiadminshoporderorderidchecklistget) | **GET** /api/admin/shop/order/{orderId}/checklist | GET checklist by orderId|
|[**apiAdminShopOrderOrderIdGet**](#apiadminshoporderorderidget) | **GET** /api/admin/shop/order/{orderId} | GET order by orderId|
|[**apiAdminShopOrderOrderIdInventoryGet**](#apiadminshoporderorderidinventoryget) | **GET** /api/admin/shop/order/{orderId}/inventory | GET inventory by orderId|
|[**apiAdminShopOrderOrderIdPut**](#apiadminshoporderorderidput) | **PUT** /api/admin/shop/order/{orderId} | PUT order by orderId|
|[**apiAdminShopOrderOrderIdScanRequestsGet**](#apiadminshoporderorderidscanrequestsget) | **GET** /api/admin/shop/order/{orderId}/scan_requests | GET scan_requests by orderId|
|[**apiAdminShopOrderOrderIdSyncLineItemsGet**](#apiadminshoporderorderidsynclineitemsget) | **GET** /api/admin/shop/order/{orderId}/sync_line_items | GET sync_line_items by orderId|
|[**apiAdminShopOrderPost**](#apiadminshoporderpost) | **POST** /api/admin/shop/order | POST order|
|[**apiAdminShopOrdersGet**](#apiadminshopordersget) | **GET** /api/admin/shop/orders | GET orders|
|[**apiAdminShopOrdersReport2Get**](#apiadminshopordersreport2get) | **GET** /api/admin/shop/orders/report2 | GET report2|
|[**apiAdminShopShopifyOrderShopifyOrderIdGet**](#apiadminshopshopifyordershopifyorderidget) | **GET** /api/admin/shop/shopify_order/{shopifyOrderId} | GET shopify_order by shopifyOrderId|
|[**fabricatorGet**](#fabricatorget) | **GET** /fabricator | GET fabricator|
|[**fabricatorJobJobIdGet**](#fabricatorjobjobidget) | **GET** /fabricator/job/{jobId} | GET job by jobId|
|[**inventoryGet**](#inventoryget) | **GET** /inventory | GET inventory|
|[**inventoryItemItemIdGet**](#inventoryitemitemidget) | **GET** /inventory/item/{itemId} | GET item by itemId|
|[**shipperGet**](#shipperget) | **GET** /shipper | GET shipper|
|[**shipperQueueGet**](#shipperqueueget) | **GET** /shipper/queue | GET queue|
|[**shopOrderOrderIdGet**](#shoporderorderidget) | **GET** /shop/order/{orderId} | GET order by orderId|
|[**shopOrdersGet**](#shopordersget) | **GET** /shop/orders | GET orders|

# **accountAccountIdGet**
> accountAccountIdGet()


### Example

```typescript
import {
    DefaultApi,
    Configuration
} from '@heavygee/arda-api-sdk';

const configuration = new Configuration();
const apiInstance = new DefaultApi(configuration);

let accountId: string; // (default to undefined)

const { status, data } = await apiInstance.accountAccountIdGet(
    accountId
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **accountId** | [**string**] |  | defaults to undefined|


### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**200** | OK |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiAdminAccountAccountIdGet**
> ApiAdminAccountAccountIdGet200Response apiAdminAccountAccountIdGet()


### Example

```typescript
import {
    DefaultApi,
    Configuration
} from '@heavygee/arda-api-sdk';

const configuration = new Configuration();
const apiInstance = new DefaultApi(configuration);

let accountId: string; // (default to undefined)

const { status, data } = await apiInstance.apiAdminAccountAccountIdGet(
    accountId
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **accountId** | [**string**] |  | defaults to undefined|


### Return type

**ApiAdminAccountAccountIdGet200Response**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**200** |  |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiAdminAccountAccountIdStatsGet**
> ApiAdminAccountAccountIdStatsGet200Response apiAdminAccountAccountIdStatsGet()


### Example

```typescript
import {
    DefaultApi,
    Configuration
} from '@heavygee/arda-api-sdk';

const configuration = new Configuration();
const apiInstance = new DefaultApi(configuration);

let accountId: string; // (default to undefined)

const { status, data } = await apiInstance.apiAdminAccountAccountIdStatsGet(
    accountId
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **accountId** | [**string**] |  | defaults to undefined|


### Return type

**ApiAdminAccountAccountIdStatsGet200Response**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**200** |  |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiAdminAuthSchemasGet**
> apiAdminAuthSchemasGet()


### Example

```typescript
import {
    DefaultApi,
    Configuration
} from '@heavygee/arda-api-sdk';

const configuration = new Configuration();
const apiInstance = new DefaultApi(configuration);

const { status, data } = await apiInstance.apiAdminAuthSchemasGet();
```

### Parameters
This endpoint does not have any parameters.


### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**200** | OK |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiAdminFabricatorJobJobIdGet**
> apiAdminFabricatorJobJobIdGet()


### Example

```typescript
import {
    DefaultApi,
    Configuration
} from '@heavygee/arda-api-sdk';

const configuration = new Configuration();
const apiInstance = new DefaultApi(configuration);

let jobId: string; // (default to undefined)

const { status, data } = await apiInstance.apiAdminFabricatorJobJobIdGet(
    jobId
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **jobId** | [**string**] |  | defaults to undefined|


### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**200** | OK |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiAdminFabricatorJobJobIdPut**
> ApiAdminFabricatorJobJobIdPut200Response apiAdminFabricatorJobJobIdPut()


### Example

```typescript
import {
    DefaultApi,
    Configuration,
    ApiAdminFabricatorJobJobIdPutRequest
} from '@heavygee/arda-api-sdk';

const configuration = new Configuration();
const apiInstance = new DefaultApi(configuration);

let jobId: string; // (default to undefined)
let apiAdminFabricatorJobJobIdPutRequest: ApiAdminFabricatorJobJobIdPutRequest; // (optional)

const { status, data } = await apiInstance.apiAdminFabricatorJobJobIdPut(
    jobId,
    apiAdminFabricatorJobJobIdPutRequest
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **apiAdminFabricatorJobJobIdPutRequest** | **ApiAdminFabricatorJobJobIdPutRequest**|  | |
| **jobId** | [**string**] |  | defaults to undefined|


### Return type

**ApiAdminFabricatorJobJobIdPut200Response**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**200** |  |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiAdminFabricatorJobsGet**
> ApiAdminFabricatorJobsGet200Response apiAdminFabricatorJobsGet()


### Example

```typescript
import {
    DefaultApi,
    Configuration
} from '@heavygee/arda-api-sdk';

const configuration = new Configuration();
const apiInstance = new DefaultApi(configuration);

let limit: number; // (optional) (default to undefined)
let offset: number; // (optional) (default to undefined)

const { status, data } = await apiInstance.apiAdminFabricatorJobsGet(
    limit,
    offset
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **limit** | [**number**] |  | (optional) defaults to undefined|
| **offset** | [**number**] |  | (optional) defaults to undefined|


### Return type

**ApiAdminFabricatorJobsGet200Response**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**200** |  |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiAdminFabricatorProductsGet**
> apiAdminFabricatorProductsGet()


### Example

```typescript
import {
    DefaultApi,
    Configuration
} from '@heavygee/arda-api-sdk';

const configuration = new Configuration();
const apiInstance = new DefaultApi(configuration);

const { status, data } = await apiInstance.apiAdminFabricatorProductsGet();
```

### Parameters
This endpoint does not have any parameters.


### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**200** | OK |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiAdminFabricatorSchemas2Get**
> apiAdminFabricatorSchemas2Get()


### Example

```typescript
import {
    DefaultApi,
    Configuration
} from '@heavygee/arda-api-sdk';

const configuration = new Configuration();
const apiInstance = new DefaultApi(configuration);

const { status, data } = await apiInstance.apiAdminFabricatorSchemas2Get();
```

### Parameters
This endpoint does not have any parameters.


### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**200** | OK |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiAdminInventoryItemItemIdGet**
> ApiAdminInventoryItemItemIdGet200Response apiAdminInventoryItemItemIdGet()


### Example

```typescript
import {
    DefaultApi,
    Configuration
} from '@heavygee/arda-api-sdk';

const configuration = new Configuration();
const apiInstance = new DefaultApi(configuration);

let itemId: string; // (default to undefined)

const { status, data } = await apiInstance.apiAdminInventoryItemItemIdGet(
    itemId
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **itemId** | [**string**] |  | defaults to undefined|


### Return type

**ApiAdminInventoryItemItemIdGet200Response**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**200** |  |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiAdminInventoryItemsGet**
> apiAdminInventoryItemsGet()


### Example

```typescript
import {
    DefaultApi,
    Configuration
} from '@heavygee/arda-api-sdk';

const configuration = new Configuration();
const apiInstance = new DefaultApi(configuration);

let limit: number; // (optional) (default to undefined)
let offset: number; // (optional) (default to undefined)

const { status, data } = await apiInstance.apiAdminInventoryItemsGet(
    limit,
    offset
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **limit** | [**number**] |  | (optional) defaults to undefined|
| **offset** | [**number**] |  | (optional) defaults to undefined|


### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**200** | OK |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiAdminInventoryStatsGet**
> apiAdminInventoryStatsGet()


### Example

```typescript
import {
    DefaultApi,
    Configuration
} from '@heavygee/arda-api-sdk';

const configuration = new Configuration();
const apiInstance = new DefaultApi(configuration);

const { status, data } = await apiInstance.apiAdminInventoryStatsGet();
```

### Parameters
This endpoint does not have any parameters.


### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**200** | OK |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiAdminShipperNextGet**
> ApiAdminShipperNextGet200Response apiAdminShipperNextGet()


### Example

```typescript
import {
    DefaultApi,
    Configuration
} from '@heavygee/arda-api-sdk';

const configuration = new Configuration();
const apiInstance = new DefaultApi(configuration);

let limit: number; // (optional) (default to undefined)
let notShopifyProductIds: number; // (optional) (default to undefined)

const { status, data } = await apiInstance.apiAdminShipperNextGet(
    limit,
    notShopifyProductIds
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **limit** | [**number**] |  | (optional) defaults to undefined|
| **notShopifyProductIds** | [**number**] |  | (optional) defaults to undefined|


### Return type

**ApiAdminShipperNextGet200Response**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**200** |  |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiAdminShipperShipmentShipmentIdGet**
> ApiAdminShipperShipmentShipmentIdGet200Response apiAdminShipperShipmentShipmentIdGet()


### Example

```typescript
import {
    DefaultApi,
    Configuration
} from '@heavygee/arda-api-sdk';

const configuration = new Configuration();
const apiInstance = new DefaultApi(configuration);

let shipmentId: string; // (default to undefined)

const { status, data } = await apiInstance.apiAdminShipperShipmentShipmentIdGet(
    shipmentId
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **shipmentId** | [**string**] |  | defaults to undefined|


### Return type

**ApiAdminShipperShipmentShipmentIdGet200Response**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**200** |  |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiAdminShipperShipmentsGet**
> apiAdminShipperShipmentsGet()


### Example

```typescript
import {
    DefaultApi,
    Configuration
} from '@heavygee/arda-api-sdk';

const configuration = new Configuration();
const apiInstance = new DefaultApi(configuration);

let bigOrderId: string; // (optional) (default to undefined)

const { status, data } = await apiInstance.apiAdminShipperShipmentsGet(
    bigOrderId
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **bigOrderId** | [**string**] |  | (optional) defaults to undefined|


### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**200** | OK |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiAdminShipperStatsGet**
> apiAdminShipperStatsGet()


### Example

```typescript
import {
    DefaultApi,
    Configuration
} from '@heavygee/arda-api-sdk';

const configuration = new Configuration();
const apiInstance = new DefaultApi(configuration);

const { status, data } = await apiInstance.apiAdminShipperStatsGet();
```

### Parameters
This endpoint does not have any parameters.


### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**200** | OK |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiAdminShopOrderOrderIdChecklistGet**
> ApiAdminShopOrderOrderIdChecklistGet200Response apiAdminShopOrderOrderIdChecklistGet()


### Example

```typescript
import {
    DefaultApi,
    Configuration
} from '@heavygee/arda-api-sdk';

const configuration = new Configuration();
const apiInstance = new DefaultApi(configuration);

let orderId: string; // (default to undefined)

const { status, data } = await apiInstance.apiAdminShopOrderOrderIdChecklistGet(
    orderId
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **orderId** | [**string**] |  | defaults to undefined|


### Return type

**ApiAdminShopOrderOrderIdChecklistGet200Response**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**200** |  |  -  |
|**422** |  |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiAdminShopOrderOrderIdGet**
> apiAdminShopOrderOrderIdGet()


### Example

```typescript
import {
    DefaultApi,
    Configuration
} from '@heavygee/arda-api-sdk';

const configuration = new Configuration();
const apiInstance = new DefaultApi(configuration);

let orderId: string; // (default to undefined)

const { status, data } = await apiInstance.apiAdminShopOrderOrderIdGet(
    orderId
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **orderId** | [**string**] |  | defaults to undefined|


### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**200** | OK |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiAdminShopOrderOrderIdInventoryGet**
> Array<ApiAdminShopOrderOrderIdInventoryGet200ResponseInner> apiAdminShopOrderOrderIdInventoryGet()


### Example

```typescript
import {
    DefaultApi,
    Configuration
} from '@heavygee/arda-api-sdk';

const configuration = new Configuration();
const apiInstance = new DefaultApi(configuration);

let orderId: string; // (default to undefined)

const { status, data } = await apiInstance.apiAdminShopOrderOrderIdInventoryGet(
    orderId
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **orderId** | [**string**] |  | defaults to undefined|


### Return type

**Array<ApiAdminShopOrderOrderIdInventoryGet200ResponseInner>**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**200** |  |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiAdminShopOrderOrderIdPut**
> apiAdminShopOrderOrderIdPut()


### Example

```typescript
import {
    DefaultApi,
    Configuration,
    ApiAdminShopOrderOrderIdPutRequest
} from '@heavygee/arda-api-sdk';

const configuration = new Configuration();
const apiInstance = new DefaultApi(configuration);

let orderId: string; // (default to undefined)
let apiAdminShopOrderOrderIdPutRequest: ApiAdminShopOrderOrderIdPutRequest; // (optional)

const { status, data } = await apiInstance.apiAdminShopOrderOrderIdPut(
    orderId,
    apiAdminShopOrderOrderIdPutRequest
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **apiAdminShopOrderOrderIdPutRequest** | **ApiAdminShopOrderOrderIdPutRequest**|  | |
| **orderId** | [**string**] |  | defaults to undefined|


### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**200** | OK |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiAdminShopOrderOrderIdScanRequestsGet**
> apiAdminShopOrderOrderIdScanRequestsGet()


### Example

```typescript
import {
    DefaultApi,
    Configuration
} from '@heavygee/arda-api-sdk';

const configuration = new Configuration();
const apiInstance = new DefaultApi(configuration);

let orderId: string; // (default to undefined)

const { status, data } = await apiInstance.apiAdminShopOrderOrderIdScanRequestsGet(
    orderId
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **orderId** | [**string**] |  | defaults to undefined|


### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**200** | OK |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiAdminShopOrderOrderIdSyncLineItemsGet**
> boolean apiAdminShopOrderOrderIdSyncLineItemsGet()


### Example

```typescript
import {
    DefaultApi,
    Configuration
} from '@heavygee/arda-api-sdk';

const configuration = new Configuration();
const apiInstance = new DefaultApi(configuration);

let orderId: string; // (default to undefined)

const { status, data } = await apiInstance.apiAdminShopOrderOrderIdSyncLineItemsGet(
    orderId
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **orderId** | [**string**] |  | defaults to undefined|


### Return type

**boolean**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**200** |  |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiAdminShopOrderPost**
> ApiAdminShopOrderPost200Response apiAdminShopOrderPost()


### Example

```typescript
import {
    DefaultApi,
    Configuration,
    ApiAdminShopOrderPostRequest
} from '@heavygee/arda-api-sdk';

const configuration = new Configuration();
const apiInstance = new DefaultApi(configuration);

let apiAdminShopOrderPostRequest: ApiAdminShopOrderPostRequest; // (optional)

const { status, data } = await apiInstance.apiAdminShopOrderPost(
    apiAdminShopOrderPostRequest
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **apiAdminShopOrderPostRequest** | **ApiAdminShopOrderPostRequest**|  | |


### Return type

**ApiAdminShopOrderPost200Response**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**200** |  |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiAdminShopOrdersGet**
> apiAdminShopOrdersGet()


### Example

```typescript
import {
    DefaultApi,
    Configuration
} from '@heavygee/arda-api-sdk';

const configuration = new Configuration();
const apiInstance = new DefaultApi(configuration);

let origin: string; // (optional) (default to undefined)
let limit: number; // (optional) (default to undefined)

const { status, data } = await apiInstance.apiAdminShopOrdersGet(
    origin,
    limit
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **origin** | [**string**] |  | (optional) defaults to undefined|
| **limit** | [**number**] |  | (optional) defaults to undefined|


### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**200** | OK |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiAdminShopOrdersReport2Get**
> apiAdminShopOrdersReport2Get()


### Example

```typescript
import {
    DefaultApi,
    Configuration
} from '@heavygee/arda-api-sdk';

const configuration = new Configuration();
const apiInstance = new DefaultApi(configuration);

let groupBy: string; // (optional) (default to undefined)
let orderBy: string; // (optional) (default to undefined)
let origin: string; // (optional) (default to undefined)
let state: string; // (optional) (default to undefined)

const { status, data } = await apiInstance.apiAdminShopOrdersReport2Get(
    groupBy,
    orderBy,
    origin,
    state
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **groupBy** | [**string**] |  | (optional) defaults to undefined|
| **orderBy** | [**string**] |  | (optional) defaults to undefined|
| **origin** | [**string**] |  | (optional) defaults to undefined|
| **state** | [**string**] |  | (optional) defaults to undefined|


### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**200** | OK |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiAdminShopShopifyOrderShopifyOrderIdGet**
> apiAdminShopShopifyOrderShopifyOrderIdGet()


### Example

```typescript
import {
    DefaultApi,
    Configuration
} from '@heavygee/arda-api-sdk';

const configuration = new Configuration();
const apiInstance = new DefaultApi(configuration);

let shopifyOrderId: number; // (default to undefined)

const { status, data } = await apiInstance.apiAdminShopShopifyOrderShopifyOrderIdGet(
    shopifyOrderId
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **shopifyOrderId** | [**number**] |  | defaults to undefined|


### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**200** | OK |  -  |
|**400** |  |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **fabricatorGet**
> fabricatorGet()


### Example

```typescript
import {
    DefaultApi,
    Configuration
} from '@heavygee/arda-api-sdk';

const configuration = new Configuration();
const apiInstance = new DefaultApi(configuration);

const { status, data } = await apiInstance.fabricatorGet();
```

### Parameters
This endpoint does not have any parameters.


### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**200** | OK |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **fabricatorJobJobIdGet**
> fabricatorJobJobIdGet()


### Example

```typescript
import {
    DefaultApi,
    Configuration
} from '@heavygee/arda-api-sdk';

const configuration = new Configuration();
const apiInstance = new DefaultApi(configuration);

let jobId: string; // (default to undefined)

const { status, data } = await apiInstance.fabricatorJobJobIdGet(
    jobId
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **jobId** | [**string**] |  | defaults to undefined|


### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**200** | OK |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **inventoryGet**
> inventoryGet()


### Example

```typescript
import {
    DefaultApi,
    Configuration
} from '@heavygee/arda-api-sdk';

const configuration = new Configuration();
const apiInstance = new DefaultApi(configuration);

const { status, data } = await apiInstance.inventoryGet();
```

### Parameters
This endpoint does not have any parameters.


### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**200** | OK |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **inventoryItemItemIdGet**
> inventoryItemItemIdGet()


### Example

```typescript
import {
    DefaultApi,
    Configuration
} from '@heavygee/arda-api-sdk';

const configuration = new Configuration();
const apiInstance = new DefaultApi(configuration);

let itemId: string; // (default to undefined)

const { status, data } = await apiInstance.inventoryItemItemIdGet(
    itemId
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **itemId** | [**string**] |  | defaults to undefined|


### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**200** | OK |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **shipperGet**
> shipperGet()


### Example

```typescript
import {
    DefaultApi,
    Configuration
} from '@heavygee/arda-api-sdk';

const configuration = new Configuration();
const apiInstance = new DefaultApi(configuration);

const { status, data } = await apiInstance.shipperGet();
```

### Parameters
This endpoint does not have any parameters.


### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**200** | OK |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **shipperQueueGet**
> shipperQueueGet()


### Example

```typescript
import {
    DefaultApi,
    Configuration
} from '@heavygee/arda-api-sdk';

const configuration = new Configuration();
const apiInstance = new DefaultApi(configuration);

const { status, data } = await apiInstance.shipperQueueGet();
```

### Parameters
This endpoint does not have any parameters.


### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**200** | OK |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **shopOrderOrderIdGet**
> shopOrderOrderIdGet()


### Example

```typescript
import {
    DefaultApi,
    Configuration
} from '@heavygee/arda-api-sdk';

const configuration = new Configuration();
const apiInstance = new DefaultApi(configuration);

let orderId: string; // (default to undefined)

const { status, data } = await apiInstance.shopOrderOrderIdGet(
    orderId
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **orderId** | [**string**] |  | defaults to undefined|


### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**200** | OK |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **shopOrdersGet**
> shopOrdersGet()


### Example

```typescript
import {
    DefaultApi,
    Configuration
} from '@heavygee/arda-api-sdk';

const configuration = new Configuration();
const apiInstance = new DefaultApi(configuration);

let origin: string; // (optional) (default to undefined)

const { status, data } = await apiInstance.shopOrdersGet(
    origin
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **origin** | [**string**] |  | (optional) defaults to undefined|


### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**200** | OK |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

