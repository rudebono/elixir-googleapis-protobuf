defmodule Google.Ads.Searchads360.V0.Services.ListAccessibleCustomersRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3
end

defmodule Google.Ads.Searchads360.V0.Services.ListAccessibleCustomersResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :resource_names, 1, repeated: true, type: :string, json_name: "resourceNames"
end

defmodule Google.Ads.Searchads360.V0.Services.CustomerService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.ads.searchads360.v0.services.CustomerService",
    protoc_gen_elixir_version: "0.15.0"

  rpc :ListAccessibleCustomers,
      Google.Ads.Searchads360.V0.Services.ListAccessibleCustomersRequest,
      Google.Ads.Searchads360.V0.Services.ListAccessibleCustomersResponse
end

defmodule Google.Ads.Searchads360.V0.Services.CustomerService.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Ads.Searchads360.V0.Services.CustomerService.Service
end
