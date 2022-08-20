defmodule Google.Ads.Googleads.V9.Services.GetCustomerUserAccessInvitationRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false
end

defmodule Google.Ads.Googleads.V9.Services.MutateCustomerUserAccessInvitationRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :customer_id, 1, type: :string, json_name: "customerId", deprecated: false

  field :operation, 2,
    type: Google.Ads.Googleads.V9.Services.CustomerUserAccessInvitationOperation,
    deprecated: false
end

defmodule Google.Ads.Googleads.V9.Services.CustomerUserAccessInvitationOperation do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  oneof :operation, 0

  field :create, 1, type: Google.Ads.Googleads.V9.Resources.CustomerUserAccessInvitation, oneof: 0
  field :remove, 2, type: :string, oneof: 0
end

defmodule Google.Ads.Googleads.V9.Services.MutateCustomerUserAccessInvitationResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :result, 1,
    type: Google.Ads.Googleads.V9.Services.MutateCustomerUserAccessInvitationResult
end

defmodule Google.Ads.Googleads.V9.Services.MutateCustomerUserAccessInvitationResult do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :resource_name, 1, type: :string, json_name: "resourceName"
end

defmodule Google.Ads.Googleads.V9.Services.CustomerUserAccessInvitationService.Service do
  @moduledoc false
  use GRPC.Service,
    name: "google.ads.googleads.v9.services.CustomerUserAccessInvitationService",
    protoc_gen_elixir_version: "0.11.0"

  rpc :GetCustomerUserAccessInvitation,
      Google.Ads.Googleads.V9.Services.GetCustomerUserAccessInvitationRequest,
      Google.Ads.Googleads.V9.Resources.CustomerUserAccessInvitation

  rpc :MutateCustomerUserAccessInvitation,
      Google.Ads.Googleads.V9.Services.MutateCustomerUserAccessInvitationRequest,
      Google.Ads.Googleads.V9.Services.MutateCustomerUserAccessInvitationResponse
end

defmodule Google.Ads.Googleads.V9.Services.CustomerUserAccessInvitationService.Stub do
  @moduledoc false
  use GRPC.Stub,
    service: Google.Ads.Googleads.V9.Services.CustomerUserAccessInvitationService.Service
end