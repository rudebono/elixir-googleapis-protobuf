defmodule Google.Cloud.Commerce.Consumer.Procurement.V1alpha1.PlaceOrderRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :display_name, 6, type: :string, json_name: "displayName", deprecated: false

  field :line_item_info, 10,
    repeated: true,
    type: Google.Cloud.Commerce.Consumer.Procurement.V1alpha1.LineItemInfo,
    json_name: "lineItemInfo",
    deprecated: false

  field :request_id, 7, type: :string, json_name: "requestId", deprecated: false
end

defmodule Google.Cloud.Commerce.Consumer.Procurement.V1alpha1.PlaceOrderMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3
end

defmodule Google.Cloud.Commerce.Consumer.Procurement.V1alpha1.GetOrderRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Commerce.Consumer.Procurement.V1alpha1.ListOrdersRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
  field :filter, 4, type: :string
end

defmodule Google.Cloud.Commerce.Consumer.Procurement.V1alpha1.ListOrdersResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :orders, 1,
    repeated: true,
    type: Google.Cloud.Commerce.Consumer.Procurement.V1alpha1.Order

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Commerce.Consumer.Procurement.V1alpha1.ConsumerProcurementService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.cloud.commerce.consumer.procurement.v1alpha1.ConsumerProcurementService",
    protoc_gen_elixir_version: "0.15.0"

  rpc :PlaceOrder,
      Google.Cloud.Commerce.Consumer.Procurement.V1alpha1.PlaceOrderRequest,
      Google.Longrunning.Operation

  rpc :GetOrder,
      Google.Cloud.Commerce.Consumer.Procurement.V1alpha1.GetOrderRequest,
      Google.Cloud.Commerce.Consumer.Procurement.V1alpha1.Order

  rpc :ListOrders,
      Google.Cloud.Commerce.Consumer.Procurement.V1alpha1.ListOrdersRequest,
      Google.Cloud.Commerce.Consumer.Procurement.V1alpha1.ListOrdersResponse
end

defmodule Google.Cloud.Commerce.Consumer.Procurement.V1alpha1.ConsumerProcurementService.Stub do
  @moduledoc false

  use GRPC.Stub,
    service:
      Google.Cloud.Commerce.Consumer.Procurement.V1alpha1.ConsumerProcurementService.Service
end
