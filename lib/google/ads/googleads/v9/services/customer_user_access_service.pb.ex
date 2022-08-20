defmodule Google.Ads.Googleads.V9.Services.GetCustomerUserAccessRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false
end

defmodule Google.Ads.Googleads.V9.Services.MutateCustomerUserAccessRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :customer_id, 1, type: :string, json_name: "customerId", deprecated: false

  field :operation, 2,
    type: Google.Ads.Googleads.V9.Services.CustomerUserAccessOperation,
    deprecated: false
end

defmodule Google.Ads.Googleads.V9.Services.CustomerUserAccessOperation do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  oneof :operation, 0

  field :update_mask, 3, type: Google.Protobuf.FieldMask, json_name: "updateMask"
  field :update, 1, type: Google.Ads.Googleads.V9.Resources.CustomerUserAccess, oneof: 0
  field :remove, 2, type: :string, oneof: 0
end

defmodule Google.Ads.Googleads.V9.Services.MutateCustomerUserAccessResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :result, 1, type: Google.Ads.Googleads.V9.Services.MutateCustomerUserAccessResult
end

defmodule Google.Ads.Googleads.V9.Services.MutateCustomerUserAccessResult do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :resource_name, 1, type: :string, json_name: "resourceName"
end

defmodule Google.Ads.Googleads.V9.Services.CustomerUserAccessService.Service do
  @moduledoc false
  use GRPC.Service,
    name: "google.ads.googleads.v9.services.CustomerUserAccessService",
    protoc_gen_elixir_version: "0.11.0"

  rpc :GetCustomerUserAccess,
      Google.Ads.Googleads.V9.Services.GetCustomerUserAccessRequest,
      Google.Ads.Googleads.V9.Resources.CustomerUserAccess

  rpc :MutateCustomerUserAccess,
      Google.Ads.Googleads.V9.Services.MutateCustomerUserAccessRequest,
      Google.Ads.Googleads.V9.Services.MutateCustomerUserAccessResponse
end

defmodule Google.Ads.Googleads.V9.Services.CustomerUserAccessService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Ads.Googleads.V9.Services.CustomerUserAccessService.Service
end