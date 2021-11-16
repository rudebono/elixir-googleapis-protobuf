defmodule Google.Bigtable.Admin.V2.CreateInstanceRequest.ClustersEntry do
  @moduledoc false
  use Protobuf, map: true, syntax: :proto3

  @type t :: %__MODULE__{
          key: String.t(),
          value: Google.Bigtable.Admin.V2.Cluster.t() | nil
        }

  defstruct [:key, :value]

  field :key, 1, type: :string
  field :value, 2, type: Google.Bigtable.Admin.V2.Cluster

  def transform_module(), do: nil
end

defmodule Google.Bigtable.Admin.V2.CreateInstanceRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          instance_id: String.t(),
          instance: Google.Bigtable.Admin.V2.Instance.t() | nil,
          clusters: %{String.t() => Google.Bigtable.Admin.V2.Cluster.t() | nil}
        }

  defstruct [:parent, :instance_id, :instance, :clusters]

  field :parent, 1, type: :string
  field :instance_id, 2, type: :string, json_name: "instanceId"
  field :instance, 3, type: Google.Bigtable.Admin.V2.Instance

  field :clusters, 4,
    repeated: true,
    type: Google.Bigtable.Admin.V2.CreateInstanceRequest.ClustersEntry,
    map: true

  def transform_module(), do: nil
end

defmodule Google.Bigtable.Admin.V2.GetInstanceRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string

  def transform_module(), do: nil
end

defmodule Google.Bigtable.Admin.V2.ListInstancesRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          page_token: String.t()
        }

  defstruct [:parent, :page_token]

  field :parent, 1, type: :string
  field :page_token, 2, type: :string, json_name: "pageToken"

  def transform_module(), do: nil
end

defmodule Google.Bigtable.Admin.V2.ListInstancesResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          instances: [Google.Bigtable.Admin.V2.Instance.t()],
          failed_locations: [String.t()],
          next_page_token: String.t()
        }

  defstruct [:instances, :failed_locations, :next_page_token]

  field :instances, 1, repeated: true, type: Google.Bigtable.Admin.V2.Instance
  field :failed_locations, 2, repeated: true, type: :string, json_name: "failedLocations"
  field :next_page_token, 3, type: :string, json_name: "nextPageToken"

  def transform_module(), do: nil
end

defmodule Google.Bigtable.Admin.V2.PartialUpdateInstanceRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          instance: Google.Bigtable.Admin.V2.Instance.t() | nil,
          update_mask: Google.Protobuf.FieldMask.t() | nil
        }

  defstruct [:instance, :update_mask]

  field :instance, 1, type: Google.Bigtable.Admin.V2.Instance
  field :update_mask, 2, type: Google.Protobuf.FieldMask, json_name: "updateMask"

  def transform_module(), do: nil
end

defmodule Google.Bigtable.Admin.V2.DeleteInstanceRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string

  def transform_module(), do: nil
end

defmodule Google.Bigtable.Admin.V2.CreateClusterRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          cluster_id: String.t(),
          cluster: Google.Bigtable.Admin.V2.Cluster.t() | nil
        }

  defstruct [:parent, :cluster_id, :cluster]

  field :parent, 1, type: :string
  field :cluster_id, 2, type: :string, json_name: "clusterId"
  field :cluster, 3, type: Google.Bigtable.Admin.V2.Cluster

  def transform_module(), do: nil
end

defmodule Google.Bigtable.Admin.V2.GetClusterRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string

  def transform_module(), do: nil
end

defmodule Google.Bigtable.Admin.V2.ListClustersRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          page_token: String.t()
        }

  defstruct [:parent, :page_token]

  field :parent, 1, type: :string
  field :page_token, 2, type: :string, json_name: "pageToken"

  def transform_module(), do: nil
end

defmodule Google.Bigtable.Admin.V2.ListClustersResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          clusters: [Google.Bigtable.Admin.V2.Cluster.t()],
          failed_locations: [String.t()],
          next_page_token: String.t()
        }

  defstruct [:clusters, :failed_locations, :next_page_token]

  field :clusters, 1, repeated: true, type: Google.Bigtable.Admin.V2.Cluster
  field :failed_locations, 2, repeated: true, type: :string, json_name: "failedLocations"
  field :next_page_token, 3, type: :string, json_name: "nextPageToken"

  def transform_module(), do: nil
end

defmodule Google.Bigtable.Admin.V2.DeleteClusterRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string

  def transform_module(), do: nil
end

defmodule Google.Bigtable.Admin.V2.CreateInstanceMetadata do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          original_request: Google.Bigtable.Admin.V2.CreateInstanceRequest.t() | nil,
          request_time: Google.Protobuf.Timestamp.t() | nil,
          finish_time: Google.Protobuf.Timestamp.t() | nil
        }

  defstruct [:original_request, :request_time, :finish_time]

  field :original_request, 1,
    type: Google.Bigtable.Admin.V2.CreateInstanceRequest,
    json_name: "originalRequest"

  field :request_time, 2, type: Google.Protobuf.Timestamp, json_name: "requestTime"
  field :finish_time, 3, type: Google.Protobuf.Timestamp, json_name: "finishTime"

  def transform_module(), do: nil
end

defmodule Google.Bigtable.Admin.V2.UpdateInstanceMetadata do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          original_request: Google.Bigtable.Admin.V2.PartialUpdateInstanceRequest.t() | nil,
          request_time: Google.Protobuf.Timestamp.t() | nil,
          finish_time: Google.Protobuf.Timestamp.t() | nil
        }

  defstruct [:original_request, :request_time, :finish_time]

  field :original_request, 1,
    type: Google.Bigtable.Admin.V2.PartialUpdateInstanceRequest,
    json_name: "originalRequest"

  field :request_time, 2, type: Google.Protobuf.Timestamp, json_name: "requestTime"
  field :finish_time, 3, type: Google.Protobuf.Timestamp, json_name: "finishTime"

  def transform_module(), do: nil
end

defmodule Google.Bigtable.Admin.V2.CreateClusterMetadata do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          original_request: Google.Bigtable.Admin.V2.CreateClusterRequest.t() | nil,
          request_time: Google.Protobuf.Timestamp.t() | nil,
          finish_time: Google.Protobuf.Timestamp.t() | nil
        }

  defstruct [:original_request, :request_time, :finish_time]

  field :original_request, 1,
    type: Google.Bigtable.Admin.V2.CreateClusterRequest,
    json_name: "originalRequest"

  field :request_time, 2, type: Google.Protobuf.Timestamp, json_name: "requestTime"
  field :finish_time, 3, type: Google.Protobuf.Timestamp, json_name: "finishTime"

  def transform_module(), do: nil
end

defmodule Google.Bigtable.Admin.V2.UpdateClusterMetadata do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          original_request: Google.Bigtable.Admin.V2.Cluster.t() | nil,
          request_time: Google.Protobuf.Timestamp.t() | nil,
          finish_time: Google.Protobuf.Timestamp.t() | nil
        }

  defstruct [:original_request, :request_time, :finish_time]

  field :original_request, 1, type: Google.Bigtable.Admin.V2.Cluster, json_name: "originalRequest"
  field :request_time, 2, type: Google.Protobuf.Timestamp, json_name: "requestTime"
  field :finish_time, 3, type: Google.Protobuf.Timestamp, json_name: "finishTime"

  def transform_module(), do: nil
end

defmodule Google.Bigtable.Admin.V2.PartialUpdateClusterMetadata do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          request_time: Google.Protobuf.Timestamp.t() | nil,
          finish_time: Google.Protobuf.Timestamp.t() | nil,
          original_request: Google.Bigtable.Admin.V2.PartialUpdateClusterRequest.t() | nil
        }

  defstruct [:request_time, :finish_time, :original_request]

  field :request_time, 1, type: Google.Protobuf.Timestamp, json_name: "requestTime"
  field :finish_time, 2, type: Google.Protobuf.Timestamp, json_name: "finishTime"

  field :original_request, 3,
    type: Google.Bigtable.Admin.V2.PartialUpdateClusterRequest,
    json_name: "originalRequest"

  def transform_module(), do: nil
end

defmodule Google.Bigtable.Admin.V2.PartialUpdateClusterRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          cluster: Google.Bigtable.Admin.V2.Cluster.t() | nil,
          update_mask: Google.Protobuf.FieldMask.t() | nil
        }

  defstruct [:cluster, :update_mask]

  field :cluster, 1, type: Google.Bigtable.Admin.V2.Cluster
  field :update_mask, 2, type: Google.Protobuf.FieldMask, json_name: "updateMask"

  def transform_module(), do: nil
end

defmodule Google.Bigtable.Admin.V2.CreateAppProfileRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          app_profile_id: String.t(),
          app_profile: Google.Bigtable.Admin.V2.AppProfile.t() | nil,
          ignore_warnings: boolean
        }

  defstruct [:parent, :app_profile_id, :app_profile, :ignore_warnings]

  field :parent, 1, type: :string
  field :app_profile_id, 2, type: :string, json_name: "appProfileId"
  field :app_profile, 3, type: Google.Bigtable.Admin.V2.AppProfile, json_name: "appProfile"
  field :ignore_warnings, 4, type: :bool, json_name: "ignoreWarnings"

  def transform_module(), do: nil
end

defmodule Google.Bigtable.Admin.V2.GetAppProfileRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string

  def transform_module(), do: nil
end

defmodule Google.Bigtable.Admin.V2.ListAppProfilesRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          page_size: integer,
          page_token: String.t()
        }

  defstruct [:parent, :page_size, :page_token]

  field :parent, 1, type: :string
  field :page_size, 3, type: :int32, json_name: "pageSize"
  field :page_token, 2, type: :string, json_name: "pageToken"

  def transform_module(), do: nil
end

defmodule Google.Bigtable.Admin.V2.ListAppProfilesResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          app_profiles: [Google.Bigtable.Admin.V2.AppProfile.t()],
          next_page_token: String.t(),
          failed_locations: [String.t()]
        }

  defstruct [:app_profiles, :next_page_token, :failed_locations]

  field :app_profiles, 1,
    repeated: true,
    type: Google.Bigtable.Admin.V2.AppProfile,
    json_name: "appProfiles"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :failed_locations, 3, repeated: true, type: :string, json_name: "failedLocations"

  def transform_module(), do: nil
end

defmodule Google.Bigtable.Admin.V2.UpdateAppProfileRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          app_profile: Google.Bigtable.Admin.V2.AppProfile.t() | nil,
          update_mask: Google.Protobuf.FieldMask.t() | nil,
          ignore_warnings: boolean
        }

  defstruct [:app_profile, :update_mask, :ignore_warnings]

  field :app_profile, 1, type: Google.Bigtable.Admin.V2.AppProfile, json_name: "appProfile"
  field :update_mask, 2, type: Google.Protobuf.FieldMask, json_name: "updateMask"
  field :ignore_warnings, 3, type: :bool, json_name: "ignoreWarnings"

  def transform_module(), do: nil
end

defmodule Google.Bigtable.Admin.V2.DeleteAppProfileRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          ignore_warnings: boolean
        }

  defstruct [:name, :ignore_warnings]

  field :name, 1, type: :string
  field :ignore_warnings, 2, type: :bool, json_name: "ignoreWarnings"

  def transform_module(), do: nil
end

defmodule Google.Bigtable.Admin.V2.UpdateAppProfileMetadata do
  @moduledoc false
  use Protobuf, syntax: :proto3
  @type t :: %__MODULE__{}

  defstruct []

  def transform_module(), do: nil
end

defmodule Google.Bigtable.Admin.V2.BigtableInstanceAdmin.Service do
  @moduledoc false
  use GRPC.Service, name: "google.bigtable.admin.v2.BigtableInstanceAdmin"

  rpc :CreateInstance,
      Google.Bigtable.Admin.V2.CreateInstanceRequest,
      Google.Longrunning.Operation

  rpc :GetInstance, Google.Bigtable.Admin.V2.GetInstanceRequest, Google.Bigtable.Admin.V2.Instance

  rpc :ListInstances,
      Google.Bigtable.Admin.V2.ListInstancesRequest,
      Google.Bigtable.Admin.V2.ListInstancesResponse

  rpc :UpdateInstance, Google.Bigtable.Admin.V2.Instance, Google.Bigtable.Admin.V2.Instance

  rpc :PartialUpdateInstance,
      Google.Bigtable.Admin.V2.PartialUpdateInstanceRequest,
      Google.Longrunning.Operation

  rpc :DeleteInstance, Google.Bigtable.Admin.V2.DeleteInstanceRequest, Google.Protobuf.Empty

  rpc :CreateCluster, Google.Bigtable.Admin.V2.CreateClusterRequest, Google.Longrunning.Operation

  rpc :GetCluster, Google.Bigtable.Admin.V2.GetClusterRequest, Google.Bigtable.Admin.V2.Cluster

  rpc :ListClusters,
      Google.Bigtable.Admin.V2.ListClustersRequest,
      Google.Bigtable.Admin.V2.ListClustersResponse

  rpc :UpdateCluster, Google.Bigtable.Admin.V2.Cluster, Google.Longrunning.Operation

  rpc :PartialUpdateCluster,
      Google.Bigtable.Admin.V2.PartialUpdateClusterRequest,
      Google.Longrunning.Operation

  rpc :DeleteCluster, Google.Bigtable.Admin.V2.DeleteClusterRequest, Google.Protobuf.Empty

  rpc :CreateAppProfile,
      Google.Bigtable.Admin.V2.CreateAppProfileRequest,
      Google.Bigtable.Admin.V2.AppProfile

  rpc :GetAppProfile,
      Google.Bigtable.Admin.V2.GetAppProfileRequest,
      Google.Bigtable.Admin.V2.AppProfile

  rpc :ListAppProfiles,
      Google.Bigtable.Admin.V2.ListAppProfilesRequest,
      Google.Bigtable.Admin.V2.ListAppProfilesResponse

  rpc :UpdateAppProfile,
      Google.Bigtable.Admin.V2.UpdateAppProfileRequest,
      Google.Longrunning.Operation

  rpc :DeleteAppProfile, Google.Bigtable.Admin.V2.DeleteAppProfileRequest, Google.Protobuf.Empty

  rpc :GetIamPolicy, Google.Iam.V1.GetIamPolicyRequest, Google.Iam.V1.Policy

  rpc :SetIamPolicy, Google.Iam.V1.SetIamPolicyRequest, Google.Iam.V1.Policy

  rpc :TestIamPermissions,
      Google.Iam.V1.TestIamPermissionsRequest,
      Google.Iam.V1.TestIamPermissionsResponse
end

defmodule Google.Bigtable.Admin.V2.BigtableInstanceAdmin.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Bigtable.Admin.V2.BigtableInstanceAdmin.Service
end
