defmodule Google.Cloud.Gdchardwaremanagement.V1alpha.SubmitOrderRequest.Type do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :TYPE_UNSPECIFIED, 0
  field :INFO_PENDING, 1
  field :INFO_COMPLETE, 2
end

defmodule Google.Cloud.Gdchardwaremanagement.V1alpha.RecordActionOnCommentRequest.ActionType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :ACTION_TYPE_UNSPECIFIED, 0
  field :READ, 1
  field :UNREAD, 2
end

defmodule Google.Cloud.Gdchardwaremanagement.V1alpha.SignalZoneStateRequest.StateSignal do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :STATE_SIGNAL_UNSPECIFIED, 0
  field :FACTORY_TURNUP_CHECKS_PASSED, 1
  field :READY_FOR_SITE_TURNUP, 1
  field :FACTORY_TURNUP_CHECKS_FAILED, 2
end

defmodule Google.Cloud.Gdchardwaremanagement.V1alpha.ListOrdersRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken", deprecated: false
  field :filter, 4, type: :string, deprecated: false
  field :order_by, 5, type: :string, json_name: "orderBy", deprecated: false
end

defmodule Google.Cloud.Gdchardwaremanagement.V1alpha.ListOrdersResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :orders, 1, repeated: true, type: Google.Cloud.Gdchardwaremanagement.V1alpha.Order
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :unreachable, 3, repeated: true, type: :string
end

defmodule Google.Cloud.Gdchardwaremanagement.V1alpha.GetOrderRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Gdchardwaremanagement.V1alpha.CreateOrderRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :order_id, 2, type: :string, json_name: "orderId", deprecated: false
  field :order, 3, type: Google.Cloud.Gdchardwaremanagement.V1alpha.Order, deprecated: false
  field :request_id, 4, type: :string, json_name: "requestId", deprecated: false
end

defmodule Google.Cloud.Gdchardwaremanagement.V1alpha.UpdateOrderRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :update_mask, 1,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false

  field :order, 2, type: Google.Cloud.Gdchardwaremanagement.V1alpha.Order, deprecated: false
  field :request_id, 3, type: :string, json_name: "requestId", deprecated: false
end

defmodule Google.Cloud.Gdchardwaremanagement.V1alpha.DeleteOrderRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :request_id, 2, type: :string, json_name: "requestId", deprecated: false
  field :force, 3, type: :bool, deprecated: false
end

defmodule Google.Cloud.Gdchardwaremanagement.V1alpha.SubmitOrderRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :request_id, 2, type: :string, json_name: "requestId", deprecated: false

  field :type, 3,
    type: Google.Cloud.Gdchardwaremanagement.V1alpha.SubmitOrderRequest.Type,
    enum: true,
    deprecated: false
end

defmodule Google.Cloud.Gdchardwaremanagement.V1alpha.ListSitesRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken", deprecated: false
  field :filter, 4, type: :string, deprecated: false
  field :order_by, 5, type: :string, json_name: "orderBy", deprecated: false
end

defmodule Google.Cloud.Gdchardwaremanagement.V1alpha.ListSitesResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :sites, 1, repeated: true, type: Google.Cloud.Gdchardwaremanagement.V1alpha.Site
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :unreachable, 3, repeated: true, type: :string
end

defmodule Google.Cloud.Gdchardwaremanagement.V1alpha.GetSiteRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Gdchardwaremanagement.V1alpha.CreateSiteRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :site_id, 2, type: :string, json_name: "siteId", deprecated: false
  field :site, 3, type: Google.Cloud.Gdchardwaremanagement.V1alpha.Site, deprecated: false
  field :request_id, 4, type: :string, json_name: "requestId", deprecated: false
end

defmodule Google.Cloud.Gdchardwaremanagement.V1alpha.UpdateSiteRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :update_mask, 1,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false

  field :site, 2, type: Google.Cloud.Gdchardwaremanagement.V1alpha.Site, deprecated: false
  field :request_id, 3, type: :string, json_name: "requestId", deprecated: false
end

defmodule Google.Cloud.Gdchardwaremanagement.V1alpha.ListHardwareGroupsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken", deprecated: false
  field :filter, 4, type: :string, deprecated: false
  field :order_by, 5, type: :string, json_name: "orderBy", deprecated: false
end

defmodule Google.Cloud.Gdchardwaremanagement.V1alpha.ListHardwareGroupsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :hardware_groups, 1,
    repeated: true,
    type: Google.Cloud.Gdchardwaremanagement.V1alpha.HardwareGroup,
    json_name: "hardwareGroups"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :unreachable, 3, repeated: true, type: :string
end

defmodule Google.Cloud.Gdchardwaremanagement.V1alpha.GetHardwareGroupRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Gdchardwaremanagement.V1alpha.CreateHardwareGroupRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :hardware_group_id, 2, type: :string, json_name: "hardwareGroupId", deprecated: false

  field :hardware_group, 3,
    type: Google.Cloud.Gdchardwaremanagement.V1alpha.HardwareGroup,
    json_name: "hardwareGroup",
    deprecated: false

  field :request_id, 4, type: :string, json_name: "requestId", deprecated: false
end

defmodule Google.Cloud.Gdchardwaremanagement.V1alpha.UpdateHardwareGroupRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :update_mask, 1,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false

  field :hardware_group, 2,
    type: Google.Cloud.Gdchardwaremanagement.V1alpha.HardwareGroup,
    json_name: "hardwareGroup",
    deprecated: false

  field :request_id, 3, type: :string, json_name: "requestId", deprecated: false
end

defmodule Google.Cloud.Gdchardwaremanagement.V1alpha.DeleteHardwareGroupRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :request_id, 2, type: :string, json_name: "requestId", deprecated: false
end

defmodule Google.Cloud.Gdchardwaremanagement.V1alpha.ListHardwareRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken", deprecated: false
  field :filter, 4, type: :string, deprecated: false
  field :order_by, 5, type: :string, json_name: "orderBy", deprecated: false
end

defmodule Google.Cloud.Gdchardwaremanagement.V1alpha.ListHardwareResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :hardware, 1, repeated: true, type: Google.Cloud.Gdchardwaremanagement.V1alpha.Hardware
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :unreachable, 3, repeated: true, type: :string
end

defmodule Google.Cloud.Gdchardwaremanagement.V1alpha.GetHardwareRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Gdchardwaremanagement.V1alpha.CreateHardwareRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :hardware_id, 2, type: :string, json_name: "hardwareId", deprecated: false
  field :hardware, 3, type: Google.Cloud.Gdchardwaremanagement.V1alpha.Hardware, deprecated: false
end

defmodule Google.Cloud.Gdchardwaremanagement.V1alpha.UpdateHardwareRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :update_mask, 1,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false

  field :hardware, 2, type: Google.Cloud.Gdchardwaremanagement.V1alpha.Hardware, deprecated: false
  field :request_id, 3, type: :string, json_name: "requestId", deprecated: false
end

defmodule Google.Cloud.Gdchardwaremanagement.V1alpha.DeleteHardwareRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :request_id, 2, type: :string, json_name: "requestId", deprecated: false
end

defmodule Google.Cloud.Gdchardwaremanagement.V1alpha.ListCommentsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken", deprecated: false
  field :filter, 4, type: :string, deprecated: false
  field :order_by, 5, type: :string, json_name: "orderBy", deprecated: false
end

defmodule Google.Cloud.Gdchardwaremanagement.V1alpha.ListCommentsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :comments, 1, repeated: true, type: Google.Cloud.Gdchardwaremanagement.V1alpha.Comment
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :unreachable, 3, repeated: true, type: :string
end

defmodule Google.Cloud.Gdchardwaremanagement.V1alpha.GetCommentRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Gdchardwaremanagement.V1alpha.CreateCommentRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :comment_id, 2, type: :string, json_name: "commentId", deprecated: false
  field :comment, 3, type: Google.Cloud.Gdchardwaremanagement.V1alpha.Comment, deprecated: false
  field :request_id, 4, type: :string, json_name: "requestId", deprecated: false
end

defmodule Google.Cloud.Gdchardwaremanagement.V1alpha.RecordActionOnCommentRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false

  field :action_type, 2,
    type: Google.Cloud.Gdchardwaremanagement.V1alpha.RecordActionOnCommentRequest.ActionType,
    json_name: "actionType",
    enum: true,
    deprecated: false
end

defmodule Google.Cloud.Gdchardwaremanagement.V1alpha.ListChangeLogEntriesRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken", deprecated: false
  field :filter, 4, type: :string, deprecated: false
  field :order_by, 5, type: :string, json_name: "orderBy", deprecated: false
end

defmodule Google.Cloud.Gdchardwaremanagement.V1alpha.ListChangeLogEntriesResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :change_log_entries, 1,
    repeated: true,
    type: Google.Cloud.Gdchardwaremanagement.V1alpha.ChangeLogEntry,
    json_name: "changeLogEntries"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :unreachable, 3, repeated: true, type: :string
end

defmodule Google.Cloud.Gdchardwaremanagement.V1alpha.GetChangeLogEntryRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Gdchardwaremanagement.V1alpha.ListSkusRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken", deprecated: false
  field :filter, 4, type: :string, deprecated: false
  field :order_by, 5, type: :string, json_name: "orderBy", deprecated: false
end

defmodule Google.Cloud.Gdchardwaremanagement.V1alpha.ListSkusResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :skus, 1, repeated: true, type: Google.Cloud.Gdchardwaremanagement.V1alpha.Sku
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :unreachable, 3, repeated: true, type: :string
end

defmodule Google.Cloud.Gdchardwaremanagement.V1alpha.GetSkuRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Gdchardwaremanagement.V1alpha.ListZonesRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken", deprecated: false
  field :filter, 4, type: :string, deprecated: false
  field :order_by, 5, type: :string, json_name: "orderBy", deprecated: false
end

defmodule Google.Cloud.Gdchardwaremanagement.V1alpha.ListZonesResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :zones, 1, repeated: true, type: Google.Cloud.Gdchardwaremanagement.V1alpha.Zone
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :unreachable, 3, repeated: true, type: :string
end

defmodule Google.Cloud.Gdchardwaremanagement.V1alpha.GetZoneRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Gdchardwaremanagement.V1alpha.CreateZoneRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :zone_id, 2, type: :string, json_name: "zoneId", deprecated: false
  field :zone, 3, type: Google.Cloud.Gdchardwaremanagement.V1alpha.Zone, deprecated: false
  field :request_id, 4, type: :string, json_name: "requestId", deprecated: false
end

defmodule Google.Cloud.Gdchardwaremanagement.V1alpha.UpdateZoneRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :update_mask, 1,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false

  field :zone, 2, type: Google.Cloud.Gdchardwaremanagement.V1alpha.Zone, deprecated: false
  field :request_id, 3, type: :string, json_name: "requestId", deprecated: false
end

defmodule Google.Cloud.Gdchardwaremanagement.V1alpha.DeleteZoneRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :request_id, 2, type: :string, json_name: "requestId", deprecated: false
end

defmodule Google.Cloud.Gdchardwaremanagement.V1alpha.SignalZoneStateRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :request_id, 2, type: :string, json_name: "requestId", deprecated: false

  field :state_signal, 3,
    type: Google.Cloud.Gdchardwaremanagement.V1alpha.SignalZoneStateRequest.StateSignal,
    json_name: "stateSignal",
    enum: true,
    deprecated: false
end

defmodule Google.Cloud.Gdchardwaremanagement.V1alpha.OperationMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :create_time, 1,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :end_time, 2, type: Google.Protobuf.Timestamp, json_name: "endTime", deprecated: false
  field :target, 3, type: :string, deprecated: false
  field :verb, 4, type: :string, deprecated: false
  field :status_message, 5, type: :string, json_name: "statusMessage", deprecated: false

  field :requested_cancellation, 6,
    type: :bool,
    json_name: "requestedCancellation",
    deprecated: false

  field :api_version, 7, type: :string, json_name: "apiVersion", deprecated: false
end

defmodule Google.Cloud.Gdchardwaremanagement.V1alpha.GDCHardwareManagement.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.cloud.gdchardwaremanagement.v1alpha.GDCHardwareManagement",
    protoc_gen_elixir_version: "0.12.0"

  rpc :ListOrders,
      Google.Cloud.Gdchardwaremanagement.V1alpha.ListOrdersRequest,
      Google.Cloud.Gdchardwaremanagement.V1alpha.ListOrdersResponse

  rpc :GetOrder,
      Google.Cloud.Gdchardwaremanagement.V1alpha.GetOrderRequest,
      Google.Cloud.Gdchardwaremanagement.V1alpha.Order

  rpc :CreateOrder,
      Google.Cloud.Gdchardwaremanagement.V1alpha.CreateOrderRequest,
      Google.Longrunning.Operation

  rpc :UpdateOrder,
      Google.Cloud.Gdchardwaremanagement.V1alpha.UpdateOrderRequest,
      Google.Longrunning.Operation

  rpc :DeleteOrder,
      Google.Cloud.Gdchardwaremanagement.V1alpha.DeleteOrderRequest,
      Google.Longrunning.Operation

  rpc :SubmitOrder,
      Google.Cloud.Gdchardwaremanagement.V1alpha.SubmitOrderRequest,
      Google.Longrunning.Operation

  rpc :ListSites,
      Google.Cloud.Gdchardwaremanagement.V1alpha.ListSitesRequest,
      Google.Cloud.Gdchardwaremanagement.V1alpha.ListSitesResponse

  rpc :GetSite,
      Google.Cloud.Gdchardwaremanagement.V1alpha.GetSiteRequest,
      Google.Cloud.Gdchardwaremanagement.V1alpha.Site

  rpc :CreateSite,
      Google.Cloud.Gdchardwaremanagement.V1alpha.CreateSiteRequest,
      Google.Longrunning.Operation

  rpc :UpdateSite,
      Google.Cloud.Gdchardwaremanagement.V1alpha.UpdateSiteRequest,
      Google.Longrunning.Operation

  rpc :ListHardwareGroups,
      Google.Cloud.Gdchardwaremanagement.V1alpha.ListHardwareGroupsRequest,
      Google.Cloud.Gdchardwaremanagement.V1alpha.ListHardwareGroupsResponse

  rpc :GetHardwareGroup,
      Google.Cloud.Gdchardwaremanagement.V1alpha.GetHardwareGroupRequest,
      Google.Cloud.Gdchardwaremanagement.V1alpha.HardwareGroup

  rpc :CreateHardwareGroup,
      Google.Cloud.Gdchardwaremanagement.V1alpha.CreateHardwareGroupRequest,
      Google.Longrunning.Operation

  rpc :UpdateHardwareGroup,
      Google.Cloud.Gdchardwaremanagement.V1alpha.UpdateHardwareGroupRequest,
      Google.Longrunning.Operation

  rpc :DeleteHardwareGroup,
      Google.Cloud.Gdchardwaremanagement.V1alpha.DeleteHardwareGroupRequest,
      Google.Longrunning.Operation

  rpc :ListHardware,
      Google.Cloud.Gdchardwaremanagement.V1alpha.ListHardwareRequest,
      Google.Cloud.Gdchardwaremanagement.V1alpha.ListHardwareResponse

  rpc :GetHardware,
      Google.Cloud.Gdchardwaremanagement.V1alpha.GetHardwareRequest,
      Google.Cloud.Gdchardwaremanagement.V1alpha.Hardware

  rpc :CreateHardware,
      Google.Cloud.Gdchardwaremanagement.V1alpha.CreateHardwareRequest,
      Google.Longrunning.Operation

  rpc :UpdateHardware,
      Google.Cloud.Gdchardwaremanagement.V1alpha.UpdateHardwareRequest,
      Google.Longrunning.Operation

  rpc :DeleteHardware,
      Google.Cloud.Gdchardwaremanagement.V1alpha.DeleteHardwareRequest,
      Google.Longrunning.Operation

  rpc :ListComments,
      Google.Cloud.Gdchardwaremanagement.V1alpha.ListCommentsRequest,
      Google.Cloud.Gdchardwaremanagement.V1alpha.ListCommentsResponse

  rpc :GetComment,
      Google.Cloud.Gdchardwaremanagement.V1alpha.GetCommentRequest,
      Google.Cloud.Gdchardwaremanagement.V1alpha.Comment

  rpc :CreateComment,
      Google.Cloud.Gdchardwaremanagement.V1alpha.CreateCommentRequest,
      Google.Longrunning.Operation

  rpc :RecordActionOnComment,
      Google.Cloud.Gdchardwaremanagement.V1alpha.RecordActionOnCommentRequest,
      Google.Cloud.Gdchardwaremanagement.V1alpha.Comment

  rpc :ListChangeLogEntries,
      Google.Cloud.Gdchardwaremanagement.V1alpha.ListChangeLogEntriesRequest,
      Google.Cloud.Gdchardwaremanagement.V1alpha.ListChangeLogEntriesResponse

  rpc :GetChangeLogEntry,
      Google.Cloud.Gdchardwaremanagement.V1alpha.GetChangeLogEntryRequest,
      Google.Cloud.Gdchardwaremanagement.V1alpha.ChangeLogEntry

  rpc :ListSkus,
      Google.Cloud.Gdchardwaremanagement.V1alpha.ListSkusRequest,
      Google.Cloud.Gdchardwaremanagement.V1alpha.ListSkusResponse

  rpc :GetSku,
      Google.Cloud.Gdchardwaremanagement.V1alpha.GetSkuRequest,
      Google.Cloud.Gdchardwaremanagement.V1alpha.Sku

  rpc :ListZones,
      Google.Cloud.Gdchardwaremanagement.V1alpha.ListZonesRequest,
      Google.Cloud.Gdchardwaremanagement.V1alpha.ListZonesResponse

  rpc :GetZone,
      Google.Cloud.Gdchardwaremanagement.V1alpha.GetZoneRequest,
      Google.Cloud.Gdchardwaremanagement.V1alpha.Zone

  rpc :CreateZone,
      Google.Cloud.Gdchardwaremanagement.V1alpha.CreateZoneRequest,
      Google.Longrunning.Operation

  rpc :UpdateZone,
      Google.Cloud.Gdchardwaremanagement.V1alpha.UpdateZoneRequest,
      Google.Longrunning.Operation

  rpc :DeleteZone,
      Google.Cloud.Gdchardwaremanagement.V1alpha.DeleteZoneRequest,
      Google.Longrunning.Operation

  rpc :SignalZoneState,
      Google.Cloud.Gdchardwaremanagement.V1alpha.SignalZoneStateRequest,
      Google.Longrunning.Operation
end

defmodule Google.Cloud.Gdchardwaremanagement.V1alpha.GDCHardwareManagement.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Cloud.Gdchardwaremanagement.V1alpha.GDCHardwareManagement.Service
end