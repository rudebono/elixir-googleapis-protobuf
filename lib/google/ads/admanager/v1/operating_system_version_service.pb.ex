defmodule Google.Ads.Admanager.V1.GetOperatingSystemVersionRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Ads.Admanager.V1.ListOperatingSystemVersionsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken", deprecated: false
  field :filter, 4, type: :string, deprecated: false
  field :order_by, 5, type: :string, json_name: "orderBy", deprecated: false
  field :skip, 6, type: :int32, deprecated: false
end

defmodule Google.Ads.Admanager.V1.ListOperatingSystemVersionsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :operating_system_versions, 1,
    repeated: true,
    type: Google.Ads.Admanager.V1.OperatingSystemVersion,
    json_name: "operatingSystemVersions"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :total_size, 3, type: :int32, json_name: "totalSize"
end

defmodule Google.Ads.Admanager.V1.OperatingSystemVersionService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.ads.admanager.v1.OperatingSystemVersionService",
    protoc_gen_elixir_version: "0.14.1"

  rpc :GetOperatingSystemVersion,
      Google.Ads.Admanager.V1.GetOperatingSystemVersionRequest,
      Google.Ads.Admanager.V1.OperatingSystemVersion

  rpc :ListOperatingSystemVersions,
      Google.Ads.Admanager.V1.ListOperatingSystemVersionsRequest,
      Google.Ads.Admanager.V1.ListOperatingSystemVersionsResponse
end

defmodule Google.Ads.Admanager.V1.OperatingSystemVersionService.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Ads.Admanager.V1.OperatingSystemVersionService.Service
end
