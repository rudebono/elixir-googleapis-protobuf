defmodule Google.Ads.Searchads360.V0.Services.GetCustomColumnRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false
end

defmodule Google.Ads.Searchads360.V0.Services.ListCustomColumnsRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :customer_id, 1, type: :string, json_name: "customerId", deprecated: false
end

defmodule Google.Ads.Searchads360.V0.Services.ListCustomColumnsResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :custom_columns, 1,
    repeated: true,
    type: Google.Ads.Searchads360.V0.Resources.CustomColumn,
    json_name: "customColumns"
end

defmodule Google.Ads.Searchads360.V0.Services.CustomColumnService.Service do
  @moduledoc false
  use GRPC.Service,
    name: "google.ads.searchads360.v0.services.CustomColumnService",
    protoc_gen_elixir_version: "0.11.0"

  rpc :GetCustomColumn,
      Google.Ads.Searchads360.V0.Services.GetCustomColumnRequest,
      Google.Ads.Searchads360.V0.Resources.CustomColumn

  rpc :ListCustomColumns,
      Google.Ads.Searchads360.V0.Services.ListCustomColumnsRequest,
      Google.Ads.Searchads360.V0.Services.ListCustomColumnsResponse
end

defmodule Google.Ads.Searchads360.V0.Services.CustomColumnService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Ads.Searchads360.V0.Services.CustomColumnService.Service
end