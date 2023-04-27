defmodule Google.Ads.Googleads.V13.Services.CustomerSkAdNetworkConversionValueSchemaOperation do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :update, 1,
    type: Google.Ads.Googleads.V13.Resources.CustomerSkAdNetworkConversionValueSchema
end

defmodule Google.Ads.Googleads.V13.Services.MutateCustomerSkAdNetworkConversionValueSchemaRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :customer_id, 1, type: :string, json_name: "customerId"

  field :operation, 2,
    type: Google.Ads.Googleads.V13.Services.CustomerSkAdNetworkConversionValueSchemaOperation

  field :validate_only, 3, type: :bool, json_name: "validateOnly"
end

defmodule Google.Ads.Googleads.V13.Services.MutateCustomerSkAdNetworkConversionValueSchemaResult do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false
  field :app_id, 2, type: :string, json_name: "appId"
end

defmodule Google.Ads.Googleads.V13.Services.MutateCustomerSkAdNetworkConversionValueSchemaResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :result, 1,
    type: Google.Ads.Googleads.V13.Services.MutateCustomerSkAdNetworkConversionValueSchemaResult
end

defmodule Google.Ads.Googleads.V13.Services.CustomerSkAdNetworkConversionValueSchemaService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.ads.googleads.v13.services.CustomerSkAdNetworkConversionValueSchemaService",
    protoc_gen_elixir_version: "0.12.0"

  rpc :MutateCustomerSkAdNetworkConversionValueSchema,
      Google.Ads.Googleads.V13.Services.MutateCustomerSkAdNetworkConversionValueSchemaRequest,
      Google.Ads.Googleads.V13.Services.MutateCustomerSkAdNetworkConversionValueSchemaResponse
end

defmodule Google.Ads.Googleads.V13.Services.CustomerSkAdNetworkConversionValueSchemaService.Stub do
  @moduledoc false

  use GRPC.Stub,
    service:
      Google.Ads.Googleads.V13.Services.CustomerSkAdNetworkConversionValueSchemaService.Service
end