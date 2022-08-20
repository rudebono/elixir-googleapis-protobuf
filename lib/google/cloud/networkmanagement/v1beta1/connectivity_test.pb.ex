defmodule Google.Cloud.Networkmanagement.V1beta1.Endpoint.NetworkType do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :NETWORK_TYPE_UNSPECIFIED, 0
  field :GCP_NETWORK, 1
  field :NON_GCP_NETWORK, 2
end

defmodule Google.Cloud.Networkmanagement.V1beta1.ReachabilityDetails.Result do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :RESULT_UNSPECIFIED, 0
  field :REACHABLE, 1
  field :UNREACHABLE, 2
  field :AMBIGUOUS, 4
  field :UNDETERMINED, 5
end

defmodule Google.Cloud.Networkmanagement.V1beta1.ProbingDetails.ProbingResult do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :PROBING_RESULT_UNSPECIFIED, 0
  field :REACHABLE, 1
  field :UNREACHABLE, 2
  field :REACHABILITY_INCONSISTENT, 3
  field :UNDETERMINED, 4
end

defmodule Google.Cloud.Networkmanagement.V1beta1.ProbingDetails.ProbingAbortCause do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :PROBING_ABORT_CAUSE_UNSPECIFIED, 0
  field :PERMISSION_DENIED, 1
  field :NO_SOURCE_LOCATION, 2
end

defmodule Google.Cloud.Networkmanagement.V1beta1.ConnectivityTest.LabelsEntry do
  @moduledoc false
  use Protobuf, map: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Networkmanagement.V1beta1.ConnectivityTest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :description, 2, type: :string
  field :source, 3, type: Google.Cloud.Networkmanagement.V1beta1.Endpoint, deprecated: false
  field :destination, 4, type: Google.Cloud.Networkmanagement.V1beta1.Endpoint, deprecated: false
  field :protocol, 5, type: :string
  field :related_projects, 6, repeated: true, type: :string, json_name: "relatedProjects"
  field :display_name, 7, type: :string, json_name: "displayName", deprecated: false

  field :labels, 8,
    repeated: true,
    type: Google.Cloud.Networkmanagement.V1beta1.ConnectivityTest.LabelsEntry,
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
    type: Google.Cloud.Networkmanagement.V1beta1.ReachabilityDetails,
    json_name: "reachabilityDetails",
    deprecated: false

  field :probing_details, 14,
    type: Google.Cloud.Networkmanagement.V1beta1.ProbingDetails,
    json_name: "probingDetails",
    deprecated: false
end

defmodule Google.Cloud.Networkmanagement.V1beta1.Endpoint.CloudFunctionEndpoint do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :uri, 1, type: :string
end

defmodule Google.Cloud.Networkmanagement.V1beta1.Endpoint do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :ip_address, 1, type: :string, json_name: "ipAddress"
  field :port, 2, type: :int32
  field :instance, 3, type: :string
  field :gke_master_cluster, 7, type: :string, json_name: "gkeMasterCluster"
  field :cloud_sql_instance, 8, type: :string, json_name: "cloudSqlInstance"

  field :cloud_function, 10,
    type: Google.Cloud.Networkmanagement.V1beta1.Endpoint.CloudFunctionEndpoint,
    json_name: "cloudFunction"

  field :network, 4, type: :string

  field :network_type, 5,
    type: Google.Cloud.Networkmanagement.V1beta1.Endpoint.NetworkType,
    json_name: "networkType",
    enum: true

  field :project_id, 6, type: :string, json_name: "projectId"
end

defmodule Google.Cloud.Networkmanagement.V1beta1.ReachabilityDetails do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :result, 1,
    type: Google.Cloud.Networkmanagement.V1beta1.ReachabilityDetails.Result,
    enum: true

  field :verify_time, 2, type: Google.Protobuf.Timestamp, json_name: "verifyTime"
  field :error, 3, type: Google.Rpc.Status
  field :traces, 5, repeated: true, type: Google.Cloud.Networkmanagement.V1beta1.Trace
end

defmodule Google.Cloud.Networkmanagement.V1beta1.LatencyPercentile do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :percent, 1, type: :int32
  field :latency_micros, 2, type: :int64, json_name: "latencyMicros"
end

defmodule Google.Cloud.Networkmanagement.V1beta1.LatencyDistribution do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :latency_percentiles, 1,
    repeated: true,
    type: Google.Cloud.Networkmanagement.V1beta1.LatencyPercentile,
    json_name: "latencyPercentiles"
end

defmodule Google.Cloud.Networkmanagement.V1beta1.ProbingDetails.EdgeLocation do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :metropolitan_area, 1, type: :string, json_name: "metropolitanArea"
end

defmodule Google.Cloud.Networkmanagement.V1beta1.ProbingDetails do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :result, 1,
    type: Google.Cloud.Networkmanagement.V1beta1.ProbingDetails.ProbingResult,
    enum: true

  field :verify_time, 2, type: Google.Protobuf.Timestamp, json_name: "verifyTime"
  field :error, 3, type: Google.Rpc.Status

  field :abort_cause, 4,
    type: Google.Cloud.Networkmanagement.V1beta1.ProbingDetails.ProbingAbortCause,
    json_name: "abortCause",
    enum: true

  field :sent_probe_count, 5, type: :int32, json_name: "sentProbeCount"
  field :successful_probe_count, 6, type: :int32, json_name: "successfulProbeCount"

  field :endpoint_info, 7,
    type: Google.Cloud.Networkmanagement.V1beta1.EndpointInfo,
    json_name: "endpointInfo"

  field :probing_latency, 8,
    type: Google.Cloud.Networkmanagement.V1beta1.LatencyDistribution,
    json_name: "probingLatency"

  field :destination_egress_location, 9,
    type: Google.Cloud.Networkmanagement.V1beta1.ProbingDetails.EdgeLocation,
    json_name: "destinationEgressLocation"
end