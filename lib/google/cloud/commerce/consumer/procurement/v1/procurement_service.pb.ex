defmodule Google.Cloud.Commerce.Consumer.Procurement.V1.AutoRenewalBehavior do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :AUTO_RENEWAL_BEHAVIOR_UNSPECIFIED, 0
  field :AUTO_RENEWAL_BEHAVIOR_ENABLE, 1
  field :AUTO_RENEWAL_BEHAVIOR_DISABLE, 2
end

defmodule Google.Cloud.Commerce.Consumer.Procurement.V1.CancelOrderRequest.CancellationPolicy do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :CANCELLATION_POLICY_UNSPECIFIED, 0
  field :CANCELLATION_POLICY_CANCEL_IMMEDIATELY, 1
  field :CANCELLATION_POLICY_CANCEL_AT_TERM_END, 2
end

defmodule Google.Cloud.Commerce.Consumer.Procurement.V1.PlaceOrderRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :display_name, 6, type: :string, json_name: "displayName", deprecated: false

  field :line_item_info, 10,
    repeated: true,
    type: Google.Cloud.Commerce.Consumer.Procurement.V1.LineItemInfo,
    json_name: "lineItemInfo",
    deprecated: false

  field :request_id, 7, type: :string, json_name: "requestId", deprecated: false
end

defmodule Google.Cloud.Commerce.Consumer.Procurement.V1.PlaceOrderMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3
end

defmodule Google.Cloud.Commerce.Consumer.Procurement.V1.GetOrderRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Commerce.Consumer.Procurement.V1.ListOrdersRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
  field :filter, 4, type: :string
end

defmodule Google.Cloud.Commerce.Consumer.Procurement.V1.ListOrdersResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :orders, 1, repeated: true, type: Google.Cloud.Commerce.Consumer.Procurement.V1.Order
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Commerce.Consumer.Procurement.V1.ModifyOrderRequest.Modification do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :line_item_id, 1, type: :string, json_name: "lineItemId", deprecated: false

  field :change_type, 2,
    type: Google.Cloud.Commerce.Consumer.Procurement.V1.LineItemChangeType,
    json_name: "changeType",
    enum: true,
    deprecated: false

  field :new_line_item_info, 3,
    type: Google.Cloud.Commerce.Consumer.Procurement.V1.LineItemInfo,
    json_name: "newLineItemInfo",
    deprecated: false

  field :auto_renewal_behavior, 4,
    type: Google.Cloud.Commerce.Consumer.Procurement.V1.AutoRenewalBehavior,
    json_name: "autoRenewalBehavior",
    enum: true,
    deprecated: false
end

defmodule Google.Cloud.Commerce.Consumer.Procurement.V1.ModifyOrderRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false

  field :modifications, 6,
    repeated: true,
    type: Google.Cloud.Commerce.Consumer.Procurement.V1.ModifyOrderRequest.Modification,
    deprecated: false

  field :display_name, 5, type: :string, json_name: "displayName", deprecated: false
  field :etag, 4, type: :string, deprecated: false
end

defmodule Google.Cloud.Commerce.Consumer.Procurement.V1.ModifyOrderMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3
end

defmodule Google.Cloud.Commerce.Consumer.Procurement.V1.CancelOrderRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :etag, 2, type: :string, deprecated: false

  field :cancellation_policy, 3,
    type: Google.Cloud.Commerce.Consumer.Procurement.V1.CancelOrderRequest.CancellationPolicy,
    json_name: "cancellationPolicy",
    enum: true,
    deprecated: false
end

defmodule Google.Cloud.Commerce.Consumer.Procurement.V1.CancelOrderMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3
end

defmodule Google.Cloud.Commerce.Consumer.Procurement.V1.ConsumerProcurementService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.cloud.commerce.consumer.procurement.v1.ConsumerProcurementService",
    protoc_gen_elixir_version: "0.13.0"

  rpc :PlaceOrder,
      Google.Cloud.Commerce.Consumer.Procurement.V1.PlaceOrderRequest,
      Google.Longrunning.Operation

  rpc :GetOrder,
      Google.Cloud.Commerce.Consumer.Procurement.V1.GetOrderRequest,
      Google.Cloud.Commerce.Consumer.Procurement.V1.Order

  rpc :ListOrders,
      Google.Cloud.Commerce.Consumer.Procurement.V1.ListOrdersRequest,
      Google.Cloud.Commerce.Consumer.Procurement.V1.ListOrdersResponse

  rpc :ModifyOrder,
      Google.Cloud.Commerce.Consumer.Procurement.V1.ModifyOrderRequest,
      Google.Longrunning.Operation

  rpc :CancelOrder,
      Google.Cloud.Commerce.Consumer.Procurement.V1.CancelOrderRequest,
      Google.Longrunning.Operation
end

defmodule Google.Cloud.Commerce.Consumer.Procurement.V1.ConsumerProcurementService.Stub do
  @moduledoc false

  use GRPC.Stub,
    service: Google.Cloud.Commerce.Consumer.Procurement.V1.ConsumerProcurementService.Service
end