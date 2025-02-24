defmodule Google.Ads.Googleads.V17.Services.MutateCustomerClientLinkRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :customer_id, 1, type: :string, json_name: "customerId", deprecated: false

  field :operation, 2,
    type: Google.Ads.Googleads.V17.Services.CustomerClientLinkOperation,
    deprecated: false

  field :validate_only, 3, type: :bool, json_name: "validateOnly"
end

defmodule Google.Ads.Googleads.V17.Services.CustomerClientLinkOperation do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  oneof :operation, 0

  field :update_mask, 4, type: Google.Protobuf.FieldMask, json_name: "updateMask"
  field :create, 1, type: Google.Ads.Googleads.V17.Resources.CustomerClientLink, oneof: 0
  field :update, 2, type: Google.Ads.Googleads.V17.Resources.CustomerClientLink, oneof: 0
end

defmodule Google.Ads.Googleads.V17.Services.MutateCustomerClientLinkResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :result, 1, type: Google.Ads.Googleads.V17.Services.MutateCustomerClientLinkResult
end

defmodule Google.Ads.Googleads.V17.Services.MutateCustomerClientLinkResult do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false
end

defmodule Google.Ads.Googleads.V17.Services.CustomerClientLinkService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.ads.googleads.v17.services.CustomerClientLinkService",
    protoc_gen_elixir_version: "0.14.1"

  rpc :MutateCustomerClientLink,
      Google.Ads.Googleads.V17.Services.MutateCustomerClientLinkRequest,
      Google.Ads.Googleads.V17.Services.MutateCustomerClientLinkResponse
end

defmodule Google.Ads.Googleads.V17.Services.CustomerClientLinkService.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Ads.Googleads.V17.Services.CustomerClientLinkService.Service
end
