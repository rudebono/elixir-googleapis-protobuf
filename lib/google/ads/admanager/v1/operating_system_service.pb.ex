defmodule Google.Ads.Admanager.V1.GetOperatingSystemRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Ads.Admanager.V1.ListOperatingSystemsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken", deprecated: false
  field :filter, 4, type: :string, deprecated: false
  field :order_by, 5, type: :string, json_name: "orderBy", deprecated: false
  field :skip, 6, type: :int32, deprecated: false
end

defmodule Google.Ads.Admanager.V1.ListOperatingSystemsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :operating_systems, 1,
    repeated: true,
    type: Google.Ads.Admanager.V1.OperatingSystem,
    json_name: "operatingSystems"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :total_size, 3, type: :int32, json_name: "totalSize"
end

defmodule Google.Ads.Admanager.V1.OperatingSystemService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.ads.admanager.v1.OperatingSystemService",
    protoc_gen_elixir_version: "0.14.1"

  rpc :GetOperatingSystem,
      Google.Ads.Admanager.V1.GetOperatingSystemRequest,
      Google.Ads.Admanager.V1.OperatingSystem

  rpc :ListOperatingSystems,
      Google.Ads.Admanager.V1.ListOperatingSystemsRequest,
      Google.Ads.Admanager.V1.ListOperatingSystemsResponse
end

defmodule Google.Ads.Admanager.V1.OperatingSystemService.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Ads.Admanager.V1.OperatingSystemService.Service
end
