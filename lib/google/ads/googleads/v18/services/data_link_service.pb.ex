defmodule Google.Ads.Googleads.V18.Services.CreateDataLinkRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :customer_id, 1, type: :string, json_name: "customerId", deprecated: false

  field :data_link, 2,
    type: Google.Ads.Googleads.V18.Resources.DataLink,
    json_name: "dataLink",
    deprecated: false
end

defmodule Google.Ads.Googleads.V18.Services.CreateDataLinkResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false
end

defmodule Google.Ads.Googleads.V18.Services.DataLinkService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.ads.googleads.v18.services.DataLinkService",
    protoc_gen_elixir_version: "0.13.0"

  rpc :CreateDataLink,
      Google.Ads.Googleads.V18.Services.CreateDataLinkRequest,
      Google.Ads.Googleads.V18.Services.CreateDataLinkResponse
end

defmodule Google.Ads.Googleads.V18.Services.DataLinkService.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Ads.Googleads.V18.Services.DataLinkService.Service
end