defmodule Google.Cloud.Oracledatabase.V1.OdbNetwork.State do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :STATE_UNSPECIFIED, 0
  field :PROVISIONING, 1
  field :AVAILABLE, 2
  field :TERMINATING, 3
  field :FAILED, 4
end

defmodule Google.Cloud.Oracledatabase.V1.OdbNetwork.LabelsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Oracledatabase.V1.OdbNetwork do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :network, 2, type: :string, deprecated: false

  field :labels, 3,
    repeated: true,
    type: Google.Cloud.Oracledatabase.V1.OdbNetwork.LabelsEntry,
    map: true,
    deprecated: false

  field :create_time, 4,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :state, 5,
    type: Google.Cloud.Oracledatabase.V1.OdbNetwork.State,
    enum: true,
    deprecated: false

  field :entitlement_id, 6, type: :string, json_name: "entitlementId", deprecated: false
  field :gcp_oracle_zone, 7, type: :string, json_name: "gcpOracleZone", deprecated: false
end

defmodule Google.Cloud.Oracledatabase.V1.CreateOdbNetworkRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :odb_network_id, 2, type: :string, json_name: "odbNetworkId", deprecated: false

  field :odb_network, 3,
    type: Google.Cloud.Oracledatabase.V1.OdbNetwork,
    json_name: "odbNetwork",
    deprecated: false

  field :request_id, 4, type: :string, json_name: "requestId", deprecated: false
end

defmodule Google.Cloud.Oracledatabase.V1.DeleteOdbNetworkRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :request_id, 2, type: :string, json_name: "requestId", deprecated: false
end

defmodule Google.Cloud.Oracledatabase.V1.ListOdbNetworksRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken", deprecated: false
  field :filter, 4, type: :string, deprecated: false
  field :order_by, 5, type: :string, json_name: "orderBy", deprecated: false
end

defmodule Google.Cloud.Oracledatabase.V1.ListOdbNetworksResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :odb_networks, 1,
    repeated: true,
    type: Google.Cloud.Oracledatabase.V1.OdbNetwork,
    json_name: "odbNetworks"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :unreachable, 3, repeated: true, type: :string
end

defmodule Google.Cloud.Oracledatabase.V1.GetOdbNetworkRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end
