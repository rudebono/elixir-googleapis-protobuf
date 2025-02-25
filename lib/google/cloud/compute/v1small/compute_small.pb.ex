defmodule Google.Cloud.Compute.V1small.Address.AddressType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :UNDEFINED_ADDRESS_TYPE, 0
  field :EXTERNAL, 35_607_499
  field :INTERNAL, 279_295_677
  field :UNSPECIFIED_TYPE, 53_933_922
end

defmodule Google.Cloud.Compute.V1small.Address.IpVersion do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :UNDEFINED_IP_VERSION, 0
  field :IPV4, 2_254_341
  field :IPV6, 2_254_343
  field :UNSPECIFIED_VERSION, 21_850_000
end

defmodule Google.Cloud.Compute.V1small.Address.NetworkTier do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :UNDEFINED_NETWORK_TIER, 0
  field :PREMIUM, 399_530_551
  field :STANDARD, 484_642_493
end

defmodule Google.Cloud.Compute.V1small.Address.Purpose do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :UNDEFINED_PURPOSE, 0
  field :DNS_RESOLVER, 476_114_556
  field :GCE_ENDPOINT, 230_515_243
  field :NAT_AUTO, 163_666_477
  field :VPC_PEERING, 400_800_170
end

defmodule Google.Cloud.Compute.V1small.Address.Status do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :UNDEFINED_STATUS, 0
  field :IN_USE, 17_393_485
  field :RESERVED, 432_241_448
  field :RESERVING, 514_587_225
end

defmodule Google.Cloud.Compute.V1small.Operation.Status do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :UNDEFINED_STATUS, 0
  field :DONE, 2_104_194
  field :PENDING, 35_394_935
  field :RUNNING, 121_282_975
end

defmodule Google.Cloud.Compute.V1small.Warning.Code do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :UNDEFINED_CODE, 0
  field :CLEANUP_FAILED, 150_308_440
  field :DEPRECATED_RESOURCE_USED, 391_835_586
  field :DEPRECATED_TYPE_USED, 346_526_230
  field :DISK_SIZE_LARGER_THAN_IMAGE_SIZE, 369_442_967
  field :EXPERIMENTAL_TYPE_USED, 451_954_443
  field :EXTERNAL_API_WARNING, 175_546_307
  field :FIELD_VALUE_OVERRIDEN, 329_669_423
  field :INJECTED_KERNELS_DEPRECATED, 417_377_419
  field :MISSING_TYPE_DEPENDENCY, 344_505_463
  field :NEXT_HOP_ADDRESS_NOT_ASSIGNED, 324_964_999
  field :NEXT_HOP_CANNOT_IP_FORWARD, 383_382_887
  field :NEXT_HOP_INSTANCE_NOT_FOUND, 464_250_446
  field :NEXT_HOP_INSTANCE_NOT_ON_NETWORK, 243_758_146
  field :NEXT_HOP_NOT_RUNNING, 417_081_265
  field :NOT_CRITICAL_ERROR, 105_763_924
  field :NO_RESULTS_ON_PAGE, 30_036_744
  field :REQUIRED_TOS_AGREEMENT, 3_745_539
  field :RESOURCE_IN_USE_BY_OTHER_RESOURCE_WARNING, 496_728_641
  field :RESOURCE_NOT_DELETED, 168_598_460
  field :SCHEMA_VALIDATION_IGNORED, 275_245_642
  field :SINGLE_INSTANCE_PROPERTY_TEMPLATE, 268_305_617
  field :UNDECLARED_PROPERTIES, 390_513_439
  field :UNREACHABLE, 13_328_052
end

defmodule Google.Cloud.Compute.V1small.Warnings.Code do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :UNDEFINED_CODE, 0
  field :CLEANUP_FAILED, 150_308_440
  field :DEPRECATED_RESOURCE_USED, 391_835_586
  field :DEPRECATED_TYPE_USED, 346_526_230
  field :DISK_SIZE_LARGER_THAN_IMAGE_SIZE, 369_442_967
  field :EXPERIMENTAL_TYPE_USED, 451_954_443
  field :EXTERNAL_API_WARNING, 175_546_307
  field :FIELD_VALUE_OVERRIDEN, 329_669_423
  field :INJECTED_KERNELS_DEPRECATED, 417_377_419
  field :MISSING_TYPE_DEPENDENCY, 344_505_463
  field :NEXT_HOP_ADDRESS_NOT_ASSIGNED, 324_964_999
  field :NEXT_HOP_CANNOT_IP_FORWARD, 383_382_887
  field :NEXT_HOP_INSTANCE_NOT_FOUND, 464_250_446
  field :NEXT_HOP_INSTANCE_NOT_ON_NETWORK, 243_758_146
  field :NEXT_HOP_NOT_RUNNING, 417_081_265
  field :NOT_CRITICAL_ERROR, 105_763_924
  field :NO_RESULTS_ON_PAGE, 30_036_744
  field :REQUIRED_TOS_AGREEMENT, 3_745_539
  field :RESOURCE_IN_USE_BY_OTHER_RESOURCE_WARNING, 496_728_641
  field :RESOURCE_NOT_DELETED, 168_598_460
  field :SCHEMA_VALIDATION_IGNORED, 275_245_642
  field :SINGLE_INSTANCE_PROPERTY_TEMPLATE, 268_305_617
  field :UNDECLARED_PROPERTIES, 390_513_439
  field :UNREACHABLE, 13_328_052
end

defmodule Google.Cloud.Compute.V1small.Address do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :address, 462_920_692, proto3_optional: true, type: :string
  field :address_type, 264_307_877, proto3_optional: true, type: :string, json_name: "addressType"

  field :creation_timestamp, 30_525_366,
    proto3_optional: true,
    type: :string,
    json_name: "creationTimestamp"

  field :description, 422_937_596, proto3_optional: true, type: :string
  field :id, 3355, proto3_optional: true, type: :uint64
  field :ip_version, 294_959_552, proto3_optional: true, type: :string, json_name: "ipVersion"
  field :kind, 3_292_052, proto3_optional: true, type: :string
  field :name, 3_373_707, proto3_optional: true, type: :string
  field :network, 232_872_494, proto3_optional: true, type: :string
  field :network_tier, 517_397_843, proto3_optional: true, type: :string, json_name: "networkTier"

  field :prefix_length, 453_565_747,
    proto3_optional: true,
    type: :int32,
    json_name: "prefixLength"

  field :purpose, 316_407_070, proto3_optional: true, type: :string
  field :region, 138_946_292, proto3_optional: true, type: :string
  field :self_link, 456_214_797, proto3_optional: true, type: :string, json_name: "selfLink"
  field :status, 181_260_274, proto3_optional: true, type: :string
  field :subnetwork, 307_827_694, proto3_optional: true, type: :string
  field :users, 111_578_632, repeated: true, type: :string
end

defmodule Google.Cloud.Compute.V1small.AddressAggregatedList.ItemsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: Google.Cloud.Compute.V1small.AddressesScopedList
end

defmodule Google.Cloud.Compute.V1small.AddressAggregatedList do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :id, 3355, proto3_optional: true, type: :string

  field :items, 100_526_016,
    repeated: true,
    type: Google.Cloud.Compute.V1small.AddressAggregatedList.ItemsEntry,
    map: true

  field :kind, 3_292_052, proto3_optional: true, type: :string

  field :next_page_token, 79_797_525,
    proto3_optional: true,
    type: :string,
    json_name: "nextPageToken"

  field :self_link, 456_214_797, proto3_optional: true, type: :string, json_name: "selfLink"
  field :warning, 50_704_284, proto3_optional: true, type: Google.Cloud.Compute.V1small.Warning
end

defmodule Google.Cloud.Compute.V1small.AddressList do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :id, 3355, proto3_optional: true, type: :string
  field :items, 100_526_016, repeated: true, type: Google.Cloud.Compute.V1small.Address
  field :kind, 3_292_052, proto3_optional: true, type: :string

  field :next_page_token, 79_797_525,
    proto3_optional: true,
    type: :string,
    json_name: "nextPageToken"

  field :self_link, 456_214_797, proto3_optional: true, type: :string, json_name: "selfLink"
  field :warning, 50_704_284, proto3_optional: true, type: Google.Cloud.Compute.V1small.Warning
end

defmodule Google.Cloud.Compute.V1small.AddressesScopedList do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :addresses, 337_673_122, repeated: true, type: Google.Cloud.Compute.V1small.Address
  field :warning, 50_704_284, proto3_optional: true, type: Google.Cloud.Compute.V1small.Warning
end

defmodule Google.Cloud.Compute.V1small.AggregatedListAddressesRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :filter, 336_120_696, proto3_optional: true, type: :string

  field :include_all_scopes, 391_327_988,
    proto3_optional: true,
    type: :bool,
    json_name: "includeAllScopes"

  field :max_results, 54_715_419, proto3_optional: true, type: :uint32, json_name: "maxResults"
  field :order_by, 160_562_920, proto3_optional: true, type: :string, json_name: "orderBy"
  field :page_token, 19_994_697, proto3_optional: true, type: :string, json_name: "pageToken"
  field :project, 227_560_217, type: :string, deprecated: false
end

defmodule Google.Cloud.Compute.V1small.Data do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :key, 106_079, proto3_optional: true, type: :string
  field :value, 111_972_721, proto3_optional: true, type: :string
end

defmodule Google.Cloud.Compute.V1small.DeleteAddressRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :address, 462_920_692, type: :string, deprecated: false
  field :project, 227_560_217, type: :string, deprecated: false
  field :region, 138_946_292, type: :string, deprecated: false
  field :request_id, 37_109_963, proto3_optional: true, type: :string, json_name: "requestId"
end

defmodule Google.Cloud.Compute.V1small.Error do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :errors, 315_977_579, repeated: true, type: Google.Cloud.Compute.V1small.Errors
end

defmodule Google.Cloud.Compute.V1small.Errors do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :code, 3_059_181, proto3_optional: true, type: :string
  field :location, 290_430_901, proto3_optional: true, type: :string
  field :message, 418_054_151, proto3_optional: true, type: :string
end

defmodule Google.Cloud.Compute.V1small.GetRegionOperationRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :operation, 52_090_215, type: :string, deprecated: false
  field :project, 227_560_217, type: :string, deprecated: false
  field :region, 138_946_292, type: :string, deprecated: false
end

defmodule Google.Cloud.Compute.V1small.InsertAddressRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :address_resource, 483_888_121,
    type: Google.Cloud.Compute.V1small.Address,
    json_name: "addressResource",
    deprecated: false

  field :project, 227_560_217, type: :string, deprecated: false
  field :region, 138_946_292, type: :string, deprecated: false
  field :request_id, 37_109_963, proto3_optional: true, type: :string, json_name: "requestId"
end

defmodule Google.Cloud.Compute.V1small.ListAddressesRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :filter, 336_120_696, proto3_optional: true, type: :string
  field :max_results, 54_715_419, proto3_optional: true, type: :uint32, json_name: "maxResults"
  field :order_by, 160_562_920, type: :string, json_name: "orderBy", deprecated: false
  field :page_token, 19_994_697, proto3_optional: true, type: :string, json_name: "pageToken"
  field :project, 227_560_217, type: :string, deprecated: false
  field :region, 138_946_292, type: :string, deprecated: false
end

defmodule Google.Cloud.Compute.V1small.Operation do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :client_operation_id, 297_240_295,
    proto3_optional: true,
    type: :string,
    json_name: "clientOperationId"

  field :creation_timestamp, 30_525_366,
    proto3_optional: true,
    type: :string,
    json_name: "creationTimestamp"

  field :description, 422_937_596, proto3_optional: true, type: :string
  field :end_time, 114_938_801, proto3_optional: true, type: :string, json_name: "endTime"
  field :error, 96_784_904, proto3_optional: true, type: Google.Cloud.Compute.V1small.Error

  field :http_error_message, 202_521_945,
    proto3_optional: true,
    type: :string,
    json_name: "httpErrorMessage",
    deprecated: false

  field :http_error_status_code, 312_345_196,
    proto3_optional: true,
    type: :int32,
    json_name: "httpErrorStatusCode",
    deprecated: false

  field :id, 3355, proto3_optional: true, type: :uint64
  field :insert_time, 433_722_515, proto3_optional: true, type: :string, json_name: "insertTime"
  field :kind, 3_292_052, proto3_optional: true, type: :string
  field :name, 3_373_707, proto3_optional: true, type: :string, deprecated: false

  field :operation_type, 177_650_450,
    proto3_optional: true,
    type: :string,
    json_name: "operationType"

  field :progress, 72_663_597, proto3_optional: true, type: :int32
  field :region, 138_946_292, proto3_optional: true, type: :string
  field :self_link, 456_214_797, proto3_optional: true, type: :string, json_name: "selfLink"
  field :start_time, 37_467_274, proto3_optional: true, type: :string, json_name: "startTime"

  field :status, 181_260_274,
    proto3_optional: true,
    type: Google.Cloud.Compute.V1small.Operation.Status,
    enum: true,
    deprecated: false

  field :status_message, 297_428_154,
    proto3_optional: true,
    type: :string,
    json_name: "statusMessage"

  field :target_id, 258_165_385, proto3_optional: true, type: :uint64, json_name: "targetId"
  field :target_link, 62_671_336, proto3_optional: true, type: :string, json_name: "targetLink"
  field :user, 3_599_307, proto3_optional: true, type: :string
  field :warnings, 498_091_095, repeated: true, type: Google.Cloud.Compute.V1small.Warnings
  field :zone, 3_744_684, proto3_optional: true, type: :string
end

defmodule Google.Cloud.Compute.V1small.WaitRegionOperationRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :operation, 52_090_215, type: :string, deprecated: false
  field :project, 227_560_217, type: :string, deprecated: false
  field :region, 138_946_292, type: :string, deprecated: false
end

defmodule Google.Cloud.Compute.V1small.Warning do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :code, 3_059_181, proto3_optional: true, type: :string
  field :data, 3_076_010, repeated: true, type: Google.Cloud.Compute.V1small.Data
  field :message, 418_054_151, proto3_optional: true, type: :string
end

defmodule Google.Cloud.Compute.V1small.Warnings do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :code, 3_059_181, proto3_optional: true, type: :string
  field :data, 3_076_010, repeated: true, type: Google.Cloud.Compute.V1small.Data
  field :message, 418_054_151, proto3_optional: true, type: :string
end

defmodule Google.Cloud.Compute.V1small.Addresses.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.cloud.compute.v1small.Addresses",
    protoc_gen_elixir_version: "0.14.1"

  rpc :AggregatedList,
      Google.Cloud.Compute.V1small.AggregatedListAddressesRequest,
      Google.Cloud.Compute.V1small.AddressAggregatedList

  rpc :Delete,
      Google.Cloud.Compute.V1small.DeleteAddressRequest,
      Google.Cloud.Compute.V1small.Operation

  rpc :Insert,
      Google.Cloud.Compute.V1small.InsertAddressRequest,
      Google.Cloud.Compute.V1small.Operation

  rpc :List,
      Google.Cloud.Compute.V1small.ListAddressesRequest,
      Google.Cloud.Compute.V1small.AddressList
end

defmodule Google.Cloud.Compute.V1small.Addresses.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Cloud.Compute.V1small.Addresses.Service
end

defmodule Google.Cloud.Compute.V1small.RegionOperations.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.cloud.compute.v1small.RegionOperations",
    protoc_gen_elixir_version: "0.14.1"

  rpc :Get,
      Google.Cloud.Compute.V1small.GetRegionOperationRequest,
      Google.Cloud.Compute.V1small.Operation

  rpc :Wait,
      Google.Cloud.Compute.V1small.WaitRegionOperationRequest,
      Google.Cloud.Compute.V1small.Operation
end

defmodule Google.Cloud.Compute.V1small.RegionOperations.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Cloud.Compute.V1small.RegionOperations.Service
end
