defmodule Google.Ads.Googleads.V18.Services.CustomerSkAdNetworkConversionValueSchemaOperation do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :update, 1,
    type: Google.Ads.Googleads.V18.Resources.CustomerSkAdNetworkConversionValueSchema
end

defmodule Google.Ads.Googleads.V18.Services.MutateCustomerSkAdNetworkConversionValueSchemaRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :customer_id, 1, type: :string, json_name: "customerId"

  field :operation, 2,
    type: Google.Ads.Googleads.V18.Services.CustomerSkAdNetworkConversionValueSchemaOperation

  field :validate_only, 3, type: :bool, json_name: "validateOnly"
  field :enable_warnings, 4, type: :bool, json_name: "enableWarnings", deprecated: false
end

defmodule Google.Ads.Googleads.V18.Services.MutateCustomerSkAdNetworkConversionValueSchemaResult do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false
  field :app_id, 2, type: :string, json_name: "appId"
end

defmodule Google.Ads.Googleads.V18.Services.MutateCustomerSkAdNetworkConversionValueSchemaResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :result, 1,
    type: Google.Ads.Googleads.V18.Services.MutateCustomerSkAdNetworkConversionValueSchemaResult

  field :warning, 2, type: Google.Rpc.Status
end

defmodule Google.Ads.Googleads.V18.Services.CustomerSkAdNetworkConversionValueSchemaService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.ads.googleads.v18.services.CustomerSkAdNetworkConversionValueSchemaService",
    protoc_gen_elixir_version: "0.15.0"

  rpc :MutateCustomerSkAdNetworkConversionValueSchema,
      Google.Ads.Googleads.V18.Services.MutateCustomerSkAdNetworkConversionValueSchemaRequest,
      Google.Ads.Googleads.V18.Services.MutateCustomerSkAdNetworkConversionValueSchemaResponse
end

defmodule Google.Ads.Googleads.V18.Services.CustomerSkAdNetworkConversionValueSchemaService.Stub do
  @moduledoc false

  use GRPC.Stub,
    service:
      Google.Ads.Googleads.V18.Services.CustomerSkAdNetworkConversionValueSchemaService.Service
end
