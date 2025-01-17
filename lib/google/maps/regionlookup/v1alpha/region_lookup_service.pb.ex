defmodule Google.Maps.Regionlookup.V1alpha.LookupRegionRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :identifiers, 1, repeated: true, type: Google.Maps.Regionlookup.V1alpha.RegionIdentifier
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
end

defmodule Google.Maps.Regionlookup.V1alpha.LookupRegionResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :matches, 1, repeated: true, type: Google.Maps.Regionlookup.V1alpha.RegionMatch
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Maps.Regionlookup.V1alpha.SearchRegionRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :search_values, 1,
    repeated: true,
    type: Google.Maps.Regionlookup.V1alpha.RegionSearchValue,
    json_name: "searchValues"

  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
end

defmodule Google.Maps.Regionlookup.V1alpha.SearchRegionResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :matches, 1, repeated: true, type: Google.Maps.Regionlookup.V1alpha.RegionMatch
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Maps.Regionlookup.V1alpha.RegionLookup.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.maps.regionlookup.v1alpha.RegionLookup",
    protoc_gen_elixir_version: "0.14.0"

  rpc :LookupRegion,
      Google.Maps.Regionlookup.V1alpha.LookupRegionRequest,
      Google.Maps.Regionlookup.V1alpha.LookupRegionResponse

  rpc :SearchRegion,
      Google.Maps.Regionlookup.V1alpha.SearchRegionRequest,
      Google.Maps.Regionlookup.V1alpha.SearchRegionResponse
end

defmodule Google.Maps.Regionlookup.V1alpha.RegionLookup.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Maps.Regionlookup.V1alpha.RegionLookup.Service
end
