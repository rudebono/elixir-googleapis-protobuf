defmodule Google.Ads.Googleads.V20.Services.MutateCustomerManagerLinkRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :customer_id, 1, type: :string, json_name: "customerId", deprecated: false

  field :operations, 2,
    repeated: true,
    type: Google.Ads.Googleads.V20.Services.CustomerManagerLinkOperation,
    deprecated: false

  field :validate_only, 3, type: :bool, json_name: "validateOnly"
end

defmodule Google.Ads.Googleads.V20.Services.MoveManagerLinkRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :customer_id, 1, type: :string, json_name: "customerId", deprecated: false

  field :previous_customer_manager_link, 2,
    type: :string,
    json_name: "previousCustomerManagerLink",
    deprecated: false

  field :new_manager, 3, type: :string, json_name: "newManager", deprecated: false
  field :validate_only, 4, type: :bool, json_name: "validateOnly"
end

defmodule Google.Ads.Googleads.V20.Services.CustomerManagerLinkOperation do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  oneof :operation, 0

  field :update_mask, 4, type: Google.Protobuf.FieldMask, json_name: "updateMask"
  field :update, 2, type: Google.Ads.Googleads.V20.Resources.CustomerManagerLink, oneof: 0
end

defmodule Google.Ads.Googleads.V20.Services.MutateCustomerManagerLinkResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :results, 1,
    repeated: true,
    type: Google.Ads.Googleads.V20.Services.MutateCustomerManagerLinkResult
end

defmodule Google.Ads.Googleads.V20.Services.MoveManagerLinkResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false
end

defmodule Google.Ads.Googleads.V20.Services.MutateCustomerManagerLinkResult do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false
end

defmodule Google.Ads.Googleads.V20.Services.CustomerManagerLinkService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.ads.googleads.v20.services.CustomerManagerLinkService",
    protoc_gen_elixir_version: "0.14.1"

  rpc :MutateCustomerManagerLink,
      Google.Ads.Googleads.V20.Services.MutateCustomerManagerLinkRequest,
      Google.Ads.Googleads.V20.Services.MutateCustomerManagerLinkResponse

  rpc :MoveManagerLink,
      Google.Ads.Googleads.V20.Services.MoveManagerLinkRequest,
      Google.Ads.Googleads.V20.Services.MoveManagerLinkResponse
end

defmodule Google.Ads.Googleads.V20.Services.CustomerManagerLinkService.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Ads.Googleads.V20.Services.CustomerManagerLinkService.Service
end
