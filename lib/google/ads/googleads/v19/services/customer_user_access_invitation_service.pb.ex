defmodule Google.Ads.Googleads.V19.Services.MutateCustomerUserAccessInvitationRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :customer_id, 1, type: :string, json_name: "customerId", deprecated: false

  field :operation, 2,
    type: Google.Ads.Googleads.V19.Services.CustomerUserAccessInvitationOperation,
    deprecated: false
end

defmodule Google.Ads.Googleads.V19.Services.CustomerUserAccessInvitationOperation do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  oneof :operation, 0

  field :create, 1,
    type: Google.Ads.Googleads.V19.Resources.CustomerUserAccessInvitation,
    oneof: 0

  field :remove, 2, type: :string, oneof: 0, deprecated: false
end

defmodule Google.Ads.Googleads.V19.Services.MutateCustomerUserAccessInvitationResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :result, 1,
    type: Google.Ads.Googleads.V19.Services.MutateCustomerUserAccessInvitationResult
end

defmodule Google.Ads.Googleads.V19.Services.MutateCustomerUserAccessInvitationResult do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false
end

defmodule Google.Ads.Googleads.V19.Services.CustomerUserAccessInvitationService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.ads.googleads.v19.services.CustomerUserAccessInvitationService",
    protoc_gen_elixir_version: "0.14.1"

  rpc :MutateCustomerUserAccessInvitation,
      Google.Ads.Googleads.V19.Services.MutateCustomerUserAccessInvitationRequest,
      Google.Ads.Googleads.V19.Services.MutateCustomerUserAccessInvitationResponse
end

defmodule Google.Ads.Googleads.V19.Services.CustomerUserAccessInvitationService.Stub do
  @moduledoc false

  use GRPC.Stub,
    service: Google.Ads.Googleads.V19.Services.CustomerUserAccessInvitationService.Service
end
