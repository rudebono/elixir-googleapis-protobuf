defmodule Google.Cloud.Networkmanagement.V1beta1.Endpoint.NetworkType do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :NETWORK_TYPE_UNSPECIFIED | :GCP_NETWORK | :NON_GCP_NETWORK

  field :NETWORK_TYPE_UNSPECIFIED, 0
  field :GCP_NETWORK, 1
  field :NON_GCP_NETWORK, 2
end

defmodule Google.Cloud.Networkmanagement.V1beta1.ReachabilityDetails.Result do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer | :RESULT_UNSPECIFIED | :REACHABLE | :UNREACHABLE | :AMBIGUOUS | :UNDETERMINED

  field :RESULT_UNSPECIFIED, 0
  field :REACHABLE, 1
  field :UNREACHABLE, 2
  field :AMBIGUOUS, 4
  field :UNDETERMINED, 5
end

defmodule Google.Cloud.Networkmanagement.V1beta1.ProbingDetails.ProbingResult do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :PROBING_RESULT_UNSPECIFIED
          | :REACHABLE
          | :UNREACHABLE
          | :REACHABILITY_INCONSISTENT
          | :UNDETERMINED

  field :PROBING_RESULT_UNSPECIFIED, 0
  field :REACHABLE, 1
  field :UNREACHABLE, 2
  field :REACHABILITY_INCONSISTENT, 3
  field :UNDETERMINED, 4
end

defmodule Google.Cloud.Networkmanagement.V1beta1.ProbingDetails.ProbingAbortCause do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :PROBING_ABORT_CAUSE_UNSPECIFIED | :PERMISSION_DENIED | :NO_SOURCE_LOCATION

  field :PROBING_ABORT_CAUSE_UNSPECIFIED, 0
  field :PERMISSION_DENIED, 1
  field :NO_SOURCE_LOCATION, 2
end

defmodule Google.Cloud.Networkmanagement.V1beta1.ConnectivityTest.LabelsEntry do
  @moduledoc false
  use Protobuf, map: true, syntax: :proto3

  @type t :: %__MODULE__{
          key: String.t(),
          value: String.t()
        }

  defstruct [:key, :value]

  field :key, 1, type: :string
  field :value, 2, type: :string

  def transform_module(), do: nil
end

defmodule Google.Cloud.Networkmanagement.V1beta1.ConnectivityTest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          description: String.t(),
          source: Google.Cloud.Networkmanagement.V1beta1.Endpoint.t() | nil,
          destination: Google.Cloud.Networkmanagement.V1beta1.Endpoint.t() | nil,
          protocol: String.t(),
          related_projects: [String.t()],
          display_name: String.t(),
          labels: %{String.t() => String.t()},
          create_time: Google.Protobuf.Timestamp.t() | nil,
          update_time: Google.Protobuf.Timestamp.t() | nil,
          reachability_details:
            Google.Cloud.Networkmanagement.V1beta1.ReachabilityDetails.t() | nil,
          probing_details: Google.Cloud.Networkmanagement.V1beta1.ProbingDetails.t() | nil
        }

  defstruct [
    :name,
    :description,
    :source,
    :destination,
    :protocol,
    :related_projects,
    :display_name,
    :labels,
    :create_time,
    :update_time,
    :reachability_details,
    :probing_details
  ]

  field :name, 1, type: :string
  field :description, 2, type: :string
  field :source, 3, type: Google.Cloud.Networkmanagement.V1beta1.Endpoint
  field :destination, 4, type: Google.Cloud.Networkmanagement.V1beta1.Endpoint
  field :protocol, 5, type: :string
  field :related_projects, 6, repeated: true, type: :string, json_name: "relatedProjects"
  field :display_name, 7, type: :string, json_name: "displayName"

  field :labels, 8,
    repeated: true,
    type: Google.Cloud.Networkmanagement.V1beta1.ConnectivityTest.LabelsEntry,
    map: true

  field :create_time, 10, type: Google.Protobuf.Timestamp, json_name: "createTime"
  field :update_time, 11, type: Google.Protobuf.Timestamp, json_name: "updateTime"

  field :reachability_details, 12,
    type: Google.Cloud.Networkmanagement.V1beta1.ReachabilityDetails,
    json_name: "reachabilityDetails"

  field :probing_details, 14,
    type: Google.Cloud.Networkmanagement.V1beta1.ProbingDetails,
    json_name: "probingDetails"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Networkmanagement.V1beta1.Endpoint do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          ip_address: String.t(),
          port: integer,
          instance: String.t(),
          gke_master_cluster: String.t(),
          cloud_sql_instance: String.t(),
          network: String.t(),
          network_type: Google.Cloud.Networkmanagement.V1beta1.Endpoint.NetworkType.t(),
          project_id: String.t()
        }

  defstruct [
    :ip_address,
    :port,
    :instance,
    :gke_master_cluster,
    :cloud_sql_instance,
    :network,
    :network_type,
    :project_id
  ]

  field :ip_address, 1, type: :string, json_name: "ipAddress"
  field :port, 2, type: :int32
  field :instance, 3, type: :string
  field :gke_master_cluster, 7, type: :string, json_name: "gkeMasterCluster"
  field :cloud_sql_instance, 8, type: :string, json_name: "cloudSqlInstance"
  field :network, 4, type: :string

  field :network_type, 5,
    type: Google.Cloud.Networkmanagement.V1beta1.Endpoint.NetworkType,
    enum: true,
    json_name: "networkType"

  field :project_id, 6, type: :string, json_name: "projectId"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Networkmanagement.V1beta1.ReachabilityDetails do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          result: Google.Cloud.Networkmanagement.V1beta1.ReachabilityDetails.Result.t(),
          verify_time: Google.Protobuf.Timestamp.t() | nil,
          error: Google.Rpc.Status.t() | nil,
          traces: [Google.Cloud.Networkmanagement.V1beta1.Trace.t()]
        }

  defstruct [:result, :verify_time, :error, :traces]

  field :result, 1,
    type: Google.Cloud.Networkmanagement.V1beta1.ReachabilityDetails.Result,
    enum: true

  field :verify_time, 2, type: Google.Protobuf.Timestamp, json_name: "verifyTime"
  field :error, 3, type: Google.Rpc.Status
  field :traces, 5, repeated: true, type: Google.Cloud.Networkmanagement.V1beta1.Trace

  def transform_module(), do: nil
end

defmodule Google.Cloud.Networkmanagement.V1beta1.LatencyPercentile do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          percent: integer,
          latency_micros: integer
        }

  defstruct [:percent, :latency_micros]

  field :percent, 1, type: :int32
  field :latency_micros, 2, type: :int64, json_name: "latencyMicros"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Networkmanagement.V1beta1.LatencyDistribution do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          latency_percentiles: [Google.Cloud.Networkmanagement.V1beta1.LatencyPercentile.t()]
        }

  defstruct [:latency_percentiles]

  field :latency_percentiles, 1,
    repeated: true,
    type: Google.Cloud.Networkmanagement.V1beta1.LatencyPercentile,
    json_name: "latencyPercentiles"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Networkmanagement.V1beta1.ProbingDetails do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          result: Google.Cloud.Networkmanagement.V1beta1.ProbingDetails.ProbingResult.t(),
          verify_time: Google.Protobuf.Timestamp.t() | nil,
          error: Google.Rpc.Status.t() | nil,
          abort_cause:
            Google.Cloud.Networkmanagement.V1beta1.ProbingDetails.ProbingAbortCause.t(),
          sent_probe_count: integer,
          successful_probe_count: integer,
          endpoint_info: Google.Cloud.Networkmanagement.V1beta1.EndpointInfo.t() | nil,
          probing_latency: Google.Cloud.Networkmanagement.V1beta1.LatencyDistribution.t() | nil
        }

  defstruct [
    :result,
    :verify_time,
    :error,
    :abort_cause,
    :sent_probe_count,
    :successful_probe_count,
    :endpoint_info,
    :probing_latency
  ]

  field :result, 1,
    type: Google.Cloud.Networkmanagement.V1beta1.ProbingDetails.ProbingResult,
    enum: true

  field :verify_time, 2, type: Google.Protobuf.Timestamp, json_name: "verifyTime"
  field :error, 3, type: Google.Rpc.Status

  field :abort_cause, 4,
    type: Google.Cloud.Networkmanagement.V1beta1.ProbingDetails.ProbingAbortCause,
    enum: true,
    json_name: "abortCause"

  field :sent_probe_count, 5, type: :int32, json_name: "sentProbeCount"
  field :successful_probe_count, 6, type: :int32, json_name: "successfulProbeCount"

  field :endpoint_info, 7,
    type: Google.Cloud.Networkmanagement.V1beta1.EndpointInfo,
    json_name: "endpointInfo"

  field :probing_latency, 8,
    type: Google.Cloud.Networkmanagement.V1beta1.LatencyDistribution,
    json_name: "probingLatency"

  def transform_module(), do: nil
end
