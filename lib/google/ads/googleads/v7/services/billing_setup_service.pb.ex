defmodule Google.Ads.Googleads.V7.Services.GetBillingSetupRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false
end
defmodule Google.Ads.Googleads.V7.Services.MutateBillingSetupRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :customer_id, 1, type: :string, json_name: "customerId", deprecated: false

  field :operation, 2,
    type: Google.Ads.Googleads.V7.Services.BillingSetupOperation,
    deprecated: false
end
defmodule Google.Ads.Googleads.V7.Services.BillingSetupOperation do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  oneof :operation, 0

  field :create, 2, type: Google.Ads.Googleads.V7.Resources.BillingSetup, oneof: 0
  field :remove, 1, type: :string, oneof: 0
end
defmodule Google.Ads.Googleads.V7.Services.MutateBillingSetupResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :result, 1, type: Google.Ads.Googleads.V7.Services.MutateBillingSetupResult
end
defmodule Google.Ads.Googleads.V7.Services.MutateBillingSetupResult do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :resource_name, 1, type: :string, json_name: "resourceName"
end
defmodule Google.Ads.Googleads.V7.Services.BillingSetupService.Service do
  @moduledoc false
  use GRPC.Service,
    name: "google.ads.googleads.v7.services.BillingSetupService",
    protoc_gen_elixir_version: "0.10.0"

  rpc :GetBillingSetup,
      Google.Ads.Googleads.V7.Services.GetBillingSetupRequest,
      Google.Ads.Googleads.V7.Resources.BillingSetup

  rpc :MutateBillingSetup,
      Google.Ads.Googleads.V7.Services.MutateBillingSetupRequest,
      Google.Ads.Googleads.V7.Services.MutateBillingSetupResponse
end

defmodule Google.Ads.Googleads.V7.Services.BillingSetupService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Ads.Googleads.V7.Services.BillingSetupService.Service
end
