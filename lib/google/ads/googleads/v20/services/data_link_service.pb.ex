defmodule Google.Ads.Googleads.V20.Services.CreateDataLinkRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :customer_id, 1, type: :string, json_name: "customerId", deprecated: false

  field :data_link, 2,
    type: Google.Ads.Googleads.V20.Resources.DataLink,
    json_name: "dataLink",
    deprecated: false
end

defmodule Google.Ads.Googleads.V20.Services.CreateDataLinkResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false
end

defmodule Google.Ads.Googleads.V20.Services.RemoveDataLinkRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :customer_id, 1, type: :string, json_name: "customerId", deprecated: false
  field :resource_name, 2, type: :string, json_name: "resourceName", deprecated: false
end

defmodule Google.Ads.Googleads.V20.Services.RemoveDataLinkResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false
end

defmodule Google.Ads.Googleads.V20.Services.UpdateDataLinkRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :customer_id, 1, type: :string, json_name: "customerId", deprecated: false

  field :data_link_status, 2,
    type: Google.Ads.Googleads.V20.Enums.DataLinkStatusEnum.DataLinkStatus,
    json_name: "dataLinkStatus",
    enum: true,
    deprecated: false

  field :resource_name, 3, type: :string, json_name: "resourceName", deprecated: false
end

defmodule Google.Ads.Googleads.V20.Services.UpdateDataLinkResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false
end

defmodule Google.Ads.Googleads.V20.Services.DataLinkService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.ads.googleads.v20.services.DataLinkService",
    protoc_gen_elixir_version: "0.14.1"

  rpc :CreateDataLink,
      Google.Ads.Googleads.V20.Services.CreateDataLinkRequest,
      Google.Ads.Googleads.V20.Services.CreateDataLinkResponse

  rpc :RemoveDataLink,
      Google.Ads.Googleads.V20.Services.RemoveDataLinkRequest,
      Google.Ads.Googleads.V20.Services.RemoveDataLinkResponse

  rpc :UpdateDataLink,
      Google.Ads.Googleads.V20.Services.UpdateDataLinkRequest,
      Google.Ads.Googleads.V20.Services.UpdateDataLinkResponse
end

defmodule Google.Ads.Googleads.V20.Services.DataLinkService.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Ads.Googleads.V20.Services.DataLinkService.Service
end
