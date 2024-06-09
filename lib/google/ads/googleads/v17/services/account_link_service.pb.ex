defmodule Google.Ads.Googleads.V17.Services.CreateAccountLinkRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :customer_id, 1, type: :string, json_name: "customerId", deprecated: false

  field :account_link, 2,
    type: Google.Ads.Googleads.V17.Resources.AccountLink,
    json_name: "accountLink",
    deprecated: false
end

defmodule Google.Ads.Googleads.V17.Services.CreateAccountLinkResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false
end

defmodule Google.Ads.Googleads.V17.Services.MutateAccountLinkRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :customer_id, 1, type: :string, json_name: "customerId", deprecated: false

  field :operation, 2,
    type: Google.Ads.Googleads.V17.Services.AccountLinkOperation,
    deprecated: false

  field :partial_failure, 3, type: :bool, json_name: "partialFailure"
  field :validate_only, 4, type: :bool, json_name: "validateOnly"
end

defmodule Google.Ads.Googleads.V17.Services.AccountLinkOperation do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  oneof :operation, 0

  field :update_mask, 4, type: Google.Protobuf.FieldMask, json_name: "updateMask"
  field :update, 2, type: Google.Ads.Googleads.V17.Resources.AccountLink, oneof: 0
  field :remove, 3, type: :string, oneof: 0, deprecated: false
end

defmodule Google.Ads.Googleads.V17.Services.MutateAccountLinkResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :result, 1, type: Google.Ads.Googleads.V17.Services.MutateAccountLinkResult
  field :partial_failure_error, 2, type: Google.Rpc.Status, json_name: "partialFailureError"
end

defmodule Google.Ads.Googleads.V17.Services.MutateAccountLinkResult do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false
end

defmodule Google.Ads.Googleads.V17.Services.AccountLinkService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.ads.googleads.v17.services.AccountLinkService",
    protoc_gen_elixir_version: "0.12.0"

  rpc :CreateAccountLink,
      Google.Ads.Googleads.V17.Services.CreateAccountLinkRequest,
      Google.Ads.Googleads.V17.Services.CreateAccountLinkResponse

  rpc :MutateAccountLink,
      Google.Ads.Googleads.V17.Services.MutateAccountLinkRequest,
      Google.Ads.Googleads.V17.Services.MutateAccountLinkResponse
end

defmodule Google.Ads.Googleads.V17.Services.AccountLinkService.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Ads.Googleads.V17.Services.AccountLinkService.Service
end