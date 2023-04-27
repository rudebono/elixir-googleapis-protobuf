defmodule Google.Ads.Googleads.V13.Services.MutateCustomerClientLinkRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :customer_id, 1, type: :string, json_name: "customerId", deprecated: false

  field :operation, 2,
    type: Google.Ads.Googleads.V13.Services.CustomerClientLinkOperation,
    deprecated: false

  field :validate_only, 3, type: :bool, json_name: "validateOnly"
end

defmodule Google.Ads.Googleads.V13.Services.CustomerClientLinkOperation do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  oneof :operation, 0

  field :update_mask, 4, type: Google.Protobuf.FieldMask, json_name: "updateMask"
  field :create, 1, type: Google.Ads.Googleads.V13.Resources.CustomerClientLink, oneof: 0
  field :update, 2, type: Google.Ads.Googleads.V13.Resources.CustomerClientLink, oneof: 0
end

defmodule Google.Ads.Googleads.V13.Services.MutateCustomerClientLinkResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :result, 1, type: Google.Ads.Googleads.V13.Services.MutateCustomerClientLinkResult
end

defmodule Google.Ads.Googleads.V13.Services.MutateCustomerClientLinkResult do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false
end

defmodule Google.Ads.Googleads.V13.Services.CustomerClientLinkService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.ads.googleads.v13.services.CustomerClientLinkService",
    protoc_gen_elixir_version: "0.12.0"

  rpc :MutateCustomerClientLink,
      Google.Ads.Googleads.V13.Services.MutateCustomerClientLinkRequest,
      Google.Ads.Googleads.V13.Services.MutateCustomerClientLinkResponse
end

defmodule Google.Ads.Googleads.V13.Services.CustomerClientLinkService.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Ads.Googleads.V13.Services.CustomerClientLinkService.Service
end