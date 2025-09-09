defmodule Google.Cloud.Locationfinder.V1.CloudLocation.CloudProvider do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :CLOUD_PROVIDER_UNSPECIFIED, 0
  field :CLOUD_PROVIDER_GCP, 1
  field :CLOUD_PROVIDER_AWS, 2
  field :CLOUD_PROVIDER_AZURE, 3
  field :CLOUD_PROVIDER_OCI, 4
end

defmodule Google.Cloud.Locationfinder.V1.CloudLocation.CloudLocationType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :CLOUD_LOCATION_TYPE_UNSPECIFIED, 0
  field :CLOUD_LOCATION_TYPE_REGION, 1
  field :CLOUD_LOCATION_TYPE_ZONE, 2
  field :CLOUD_LOCATION_TYPE_REGION_EXTENSION, 3
  field :CLOUD_LOCATION_TYPE_GDCC_ZONE, 4
end

defmodule Google.Cloud.Locationfinder.V1.CloudLocation do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false

  field :containing_cloud_location, 2,
    type: :string,
    json_name: "containingCloudLocation",
    deprecated: false

  field :display_name, 3, type: :string, json_name: "displayName", deprecated: false

  field :cloud_provider, 4,
    type: Google.Cloud.Locationfinder.V1.CloudLocation.CloudProvider,
    json_name: "cloudProvider",
    enum: true,
    deprecated: false

  field :territory_code, 5, type: :string, json_name: "territoryCode", deprecated: false

  field :cloud_location_type, 6,
    type: Google.Cloud.Locationfinder.V1.CloudLocation.CloudLocationType,
    json_name: "cloudLocationType",
    enum: true,
    deprecated: false

  field :carbon_free_energy_percentage, 7,
    proto3_optional: true,
    type: :float,
    json_name: "carbonFreeEnergyPercentage",
    deprecated: false
end

defmodule Google.Cloud.Locationfinder.V1.ListCloudLocationsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken", deprecated: false
  field :filter, 4, type: :string, deprecated: false
end

defmodule Google.Cloud.Locationfinder.V1.ListCloudLocationsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :cloud_locations, 1,
    repeated: true,
    type: Google.Cloud.Locationfinder.V1.CloudLocation,
    json_name: "cloudLocations",
    deprecated: false

  field :next_page_token, 2, type: :string, json_name: "nextPageToken", deprecated: false
end

defmodule Google.Cloud.Locationfinder.V1.GetCloudLocationRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Locationfinder.V1.SearchCloudLocationsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false

  field :source_cloud_location, 2,
    type: :string,
    json_name: "sourceCloudLocation",
    deprecated: false

  field :page_size, 3, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 4, type: :string, json_name: "pageToken", deprecated: false
  field :query, 6, type: :string, deprecated: false
end

defmodule Google.Cloud.Locationfinder.V1.SearchCloudLocationsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :cloud_locations, 1,
    repeated: true,
    type: Google.Cloud.Locationfinder.V1.CloudLocation,
    json_name: "cloudLocations",
    deprecated: false

  field :next_page_token, 2, type: :string, json_name: "nextPageToken", deprecated: false
end
