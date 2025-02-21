defmodule Google.Cloud.Location.ListLocationsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string
  field :filter, 2, type: :string
  field :page_size, 3, type: :int32, json_name: "pageSize"
  field :page_token, 4, type: :string, json_name: "pageToken"
end

defmodule Google.Cloud.Location.ListLocationsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :locations, 1, repeated: true, type: Google.Cloud.Location.Location
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Location.GetLocationRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string
end

defmodule Google.Cloud.Location.Location.LabelsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Location.Location do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string
  field :location_id, 4, type: :string, json_name: "locationId"
  field :display_name, 5, type: :string, json_name: "displayName"
  field :labels, 2, repeated: true, type: Google.Cloud.Location.Location.LabelsEntry, map: true
  field :metadata, 3, type: Google.Protobuf.Any
end

defmodule Google.Cloud.Location.Locations.Service do
  @moduledoc false

  use GRPC.Service, name: "google.cloud.location.Locations", protoc_gen_elixir_version: "0.14.1"

  rpc :ListLocations,
      Google.Cloud.Location.ListLocationsRequest,
      Google.Cloud.Location.ListLocationsResponse

  rpc :GetLocation, Google.Cloud.Location.GetLocationRequest, Google.Cloud.Location.Location
end

defmodule Google.Cloud.Location.Locations.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Cloud.Location.Locations.Service
end
