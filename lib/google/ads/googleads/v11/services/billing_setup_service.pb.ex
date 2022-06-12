defmodule Google.Ads.Googleads.V11.Services.MutateBillingSetupRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :customer_id, 1, type: :string, json_name: "customerId", deprecated: false

  field :operation, 2,
    type: Google.Ads.Googleads.V11.Services.BillingSetupOperation,
    deprecated: false
end
defmodule Google.Ads.Googleads.V11.Services.BillingSetupOperation do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  oneof :operation, 0

  field :create, 2, type: Google.Ads.Googleads.V11.Resources.BillingSetup, oneof: 0
  field :remove, 1, type: :string, oneof: 0, deprecated: false
end
defmodule Google.Ads.Googleads.V11.Services.MutateBillingSetupResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :result, 1, type: Google.Ads.Googleads.V11.Services.MutateBillingSetupResult
end
defmodule Google.Ads.Googleads.V11.Services.MutateBillingSetupResult do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false
end
defmodule Google.Ads.Googleads.V11.Services.BillingSetupService.Service do
  @moduledoc false
  use GRPC.Service,
    name: "google.ads.googleads.v11.services.BillingSetupService",
    protoc_gen_elixir_version: "0.10.0"

  rpc :MutateBillingSetup,
      Google.Ads.Googleads.V11.Services.MutateBillingSetupRequest,
      Google.Ads.Googleads.V11.Services.MutateBillingSetupResponse
end

defmodule Google.Ads.Googleads.V11.Services.BillingSetupService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Ads.Googleads.V11.Services.BillingSetupService.Service
end
