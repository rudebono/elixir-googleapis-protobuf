defmodule Google.Cloud.Networkmanagement.V1.Endpoint.NetworkType do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :NETWORK_TYPE_UNSPECIFIED, 0
  field :GCP_NETWORK, 1
  field :NON_GCP_NETWORK, 2
end
defmodule Google.Cloud.Networkmanagement.V1.ReachabilityDetails.Result do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :RESULT_UNSPECIFIED, 0
  field :REACHABLE, 1
  field :UNREACHABLE, 2
  field :AMBIGUOUS, 4
  field :UNDETERMINED, 5
end
defmodule Google.Cloud.Networkmanagement.V1.ConnectivityTest.LabelsEntry do
  @moduledoc false
  use Protobuf, map: true, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end
defmodule Google.Cloud.Networkmanagement.V1.ConnectivityTest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :description, 2, type: :string
  field :source, 3, type: Google.Cloud.Networkmanagement.V1.Endpoint, deprecated: false
  field :destination, 4, type: Google.Cloud.Networkmanagement.V1.Endpoint, deprecated: false
  field :protocol, 5, type: :string
  field :related_projects, 6, repeated: true, type: :string, json_name: "relatedProjects"
  field :display_name, 7, type: :string, json_name: "displayName", deprecated: false

  field :labels, 8,
    repeated: true,
    type: Google.Cloud.Networkmanagement.V1.ConnectivityTest.LabelsEntry,
    map: true

  field :create_time, 10,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :update_time, 11,
    type: Google.Protobuf.Timestamp,
    json_name: "updateTime",
    deprecated: false

  field :reachability_details, 12,
    type: Google.Cloud.Networkmanagement.V1.ReachabilityDetails,
    json_name: "reachabilityDetails",
    deprecated: false
end
defmodule Google.Cloud.Networkmanagement.V1.Endpoint do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :ip_address, 1, type: :string, json_name: "ipAddress"
  field :port, 2, type: :int32
  field :instance, 3, type: :string
  field :gke_master_cluster, 7, type: :string, json_name: "gkeMasterCluster"
  field :cloud_sql_instance, 8, type: :string, json_name: "cloudSqlInstance"
  field :network, 4, type: :string

  field :network_type, 5,
    type: Google.Cloud.Networkmanagement.V1.Endpoint.NetworkType,
    json_name: "networkType",
    enum: true

  field :project_id, 6, type: :string, json_name: "projectId"
end
defmodule Google.Cloud.Networkmanagement.V1.ReachabilityDetails do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :result, 1, type: Google.Cloud.Networkmanagement.V1.ReachabilityDetails.Result, enum: true
  field :verify_time, 2, type: Google.Protobuf.Timestamp, json_name: "verifyTime"
  field :error, 3, type: Google.Rpc.Status
  field :traces, 5, repeated: true, type: Google.Cloud.Networkmanagement.V1.Trace
end
