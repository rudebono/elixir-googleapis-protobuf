defmodule Google.Ads.Googleads.V15.Services.MutateCustomerUserAccessRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :customer_id, 1, type: :string, json_name: "customerId", deprecated: false

  field :operation, 2,
    type: Google.Ads.Googleads.V15.Services.CustomerUserAccessOperation,
    deprecated: false
end

defmodule Google.Ads.Googleads.V15.Services.CustomerUserAccessOperation do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  oneof :operation, 0

  field :update_mask, 3, type: Google.Protobuf.FieldMask, json_name: "updateMask"
  field :update, 1, type: Google.Ads.Googleads.V15.Resources.CustomerUserAccess, oneof: 0
  field :remove, 2, type: :string, oneof: 0, deprecated: false
end

defmodule Google.Ads.Googleads.V15.Services.MutateCustomerUserAccessResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :result, 1, type: Google.Ads.Googleads.V15.Services.MutateCustomerUserAccessResult
end

defmodule Google.Ads.Googleads.V15.Services.MutateCustomerUserAccessResult do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false
end

defmodule Google.Ads.Googleads.V15.Services.CustomerUserAccessService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.ads.googleads.v15.services.CustomerUserAccessService",
    protoc_gen_elixir_version: "0.12.0"

  rpc :MutateCustomerUserAccess,
      Google.Ads.Googleads.V15.Services.MutateCustomerUserAccessRequest,
      Google.Ads.Googleads.V15.Services.MutateCustomerUserAccessResponse
end

defmodule Google.Ads.Googleads.V15.Services.CustomerUserAccessService.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Ads.Googleads.V15.Services.CustomerUserAccessService.Service
end