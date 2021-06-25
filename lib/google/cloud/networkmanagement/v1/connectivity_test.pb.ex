defmodule Google.Cloud.Networkmanagement.V1.Endpoint.NetworkType do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :NETWORK_TYPE_UNSPECIFIED | :GCP_NETWORK | :NON_GCP_NETWORK

  field :NETWORK_TYPE_UNSPECIFIED, 0

  field :GCP_NETWORK, 1

  field :NON_GCP_NETWORK, 2
end

defmodule Google.Cloud.Networkmanagement.V1.ReachabilityDetails.Result do
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

defmodule Google.Cloud.Networkmanagement.V1.ConnectivityTest.LabelsEntry do
  @moduledoc false
  use Protobuf, map: true, syntax: :proto3

  @type t :: %__MODULE__{
          key: String.t(),
          value: String.t()
        }

  defstruct [:key, :value]

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Networkmanagement.V1.ConnectivityTest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          description: String.t(),
          source: Google.Cloud.Networkmanagement.V1.Endpoint.t() | nil,
          destination: Google.Cloud.Networkmanagement.V1.Endpoint.t() | nil,
          protocol: String.t(),
          related_projects: [String.t()],
          display_name: String.t(),
          labels: %{String.t() => String.t()},
          create_time: Google.Protobuf.Timestamp.t() | nil,
          update_time: Google.Protobuf.Timestamp.t() | nil,
          reachability_details: Google.Cloud.Networkmanagement.V1.ReachabilityDetails.t() | nil
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
    :reachability_details
  ]

  field :name, 1, type: :string
  field :description, 2, type: :string
  field :source, 3, type: Google.Cloud.Networkmanagement.V1.Endpoint
  field :destination, 4, type: Google.Cloud.Networkmanagement.V1.Endpoint
  field :protocol, 5, type: :string
  field :related_projects, 6, repeated: true, type: :string
  field :display_name, 7, type: :string

  field :labels, 8,
    repeated: true,
    type: Google.Cloud.Networkmanagement.V1.ConnectivityTest.LabelsEntry,
    map: true

  field :create_time, 10, type: Google.Protobuf.Timestamp
  field :update_time, 11, type: Google.Protobuf.Timestamp
  field :reachability_details, 12, type: Google.Cloud.Networkmanagement.V1.ReachabilityDetails
end

defmodule Google.Cloud.Networkmanagement.V1.Endpoint do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          ip_address: String.t(),
          port: integer,
          instance: String.t(),
          gke_master_cluster: String.t(),
          cloud_sql_instance: String.t(),
          network: String.t(),
          network_type: Google.Cloud.Networkmanagement.V1.Endpoint.NetworkType.t(),
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

  field :ip_address, 1, type: :string
  field :port, 2, type: :int32
  field :instance, 3, type: :string
  field :gke_master_cluster, 7, type: :string
  field :cloud_sql_instance, 8, type: :string
  field :network, 4, type: :string
  field :network_type, 5, type: Google.Cloud.Networkmanagement.V1.Endpoint.NetworkType, enum: true
  field :project_id, 6, type: :string
end

defmodule Google.Cloud.Networkmanagement.V1.ReachabilityDetails do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          result: Google.Cloud.Networkmanagement.V1.ReachabilityDetails.Result.t(),
          verify_time: Google.Protobuf.Timestamp.t() | nil,
          error: Google.Rpc.Status.t() | nil,
          traces: [Google.Cloud.Networkmanagement.V1.Trace.t()]
        }

  defstruct [:result, :verify_time, :error, :traces]

  field :result, 1, type: Google.Cloud.Networkmanagement.V1.ReachabilityDetails.Result, enum: true
  field :verify_time, 2, type: Google.Protobuf.Timestamp
  field :error, 3, type: Google.Rpc.Status
  field :traces, 5, repeated: true, type: Google.Cloud.Networkmanagement.V1.Trace
end
