defmodule Google.Bigtable.Admin.V2.CreateClusterMetadata.TableProgress.State do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :STATE_UNSPECIFIED, 0
  field :PENDING, 1
  field :COPYING, 2
  field :COMPLETED, 3
  field :CANCELLED, 4
end

defmodule Google.Bigtable.Admin.V2.CreateInstanceRequest.ClustersEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: Google.Bigtable.Admin.V2.Cluster
end

defmodule Google.Bigtable.Admin.V2.CreateInstanceRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :instance_id, 2, type: :string, json_name: "instanceId", deprecated: false
  field :instance, 3, type: Google.Bigtable.Admin.V2.Instance, deprecated: false

  field :clusters, 4,
    repeated: true,
    type: Google.Bigtable.Admin.V2.CreateInstanceRequest.ClustersEntry,
    map: true,
    deprecated: false
end

defmodule Google.Bigtable.Admin.V2.GetInstanceRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Bigtable.Admin.V2.ListInstancesRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_token, 2, type: :string, json_name: "pageToken"
end

defmodule Google.Bigtable.Admin.V2.ListInstancesResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :instances, 1, repeated: true, type: Google.Bigtable.Admin.V2.Instance
  field :failed_locations, 2, repeated: true, type: :string, json_name: "failedLocations"
  field :next_page_token, 3, type: :string, json_name: "nextPageToken"
end

defmodule Google.Bigtable.Admin.V2.PartialUpdateInstanceRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :instance, 1, type: Google.Bigtable.Admin.V2.Instance, deprecated: false

  field :update_mask, 2,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false
end

defmodule Google.Bigtable.Admin.V2.DeleteInstanceRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Bigtable.Admin.V2.CreateClusterRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :cluster_id, 2, type: :string, json_name: "clusterId", deprecated: false
  field :cluster, 3, type: Google.Bigtable.Admin.V2.Cluster, deprecated: false
end

defmodule Google.Bigtable.Admin.V2.GetClusterRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Bigtable.Admin.V2.ListClustersRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_token, 2, type: :string, json_name: "pageToken"
end

defmodule Google.Bigtable.Admin.V2.ListClustersResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :clusters, 1, repeated: true, type: Google.Bigtable.Admin.V2.Cluster
  field :failed_locations, 2, repeated: true, type: :string, json_name: "failedLocations"
  field :next_page_token, 3, type: :string, json_name: "nextPageToken"
end

defmodule Google.Bigtable.Admin.V2.DeleteClusterRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Bigtable.Admin.V2.CreateInstanceMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :original_request, 1,
    type: Google.Bigtable.Admin.V2.CreateInstanceRequest,
    json_name: "originalRequest"

  field :request_time, 2, type: Google.Protobuf.Timestamp, json_name: "requestTime"
  field :finish_time, 3, type: Google.Protobuf.Timestamp, json_name: "finishTime"
end

defmodule Google.Bigtable.Admin.V2.UpdateInstanceMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :original_request, 1,
    type: Google.Bigtable.Admin.V2.PartialUpdateInstanceRequest,
    json_name: "originalRequest"

  field :request_time, 2, type: Google.Protobuf.Timestamp, json_name: "requestTime"
  field :finish_time, 3, type: Google.Protobuf.Timestamp, json_name: "finishTime"
end

defmodule Google.Bigtable.Admin.V2.CreateClusterMetadata.TableProgress do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :estimated_size_bytes, 2, type: :int64, json_name: "estimatedSizeBytes"
  field :estimated_copied_bytes, 3, type: :int64, json_name: "estimatedCopiedBytes"

  field :state, 4,
    type: Google.Bigtable.Admin.V2.CreateClusterMetadata.TableProgress.State,
    enum: true
end

defmodule Google.Bigtable.Admin.V2.CreateClusterMetadata.TablesEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: Google.Bigtable.Admin.V2.CreateClusterMetadata.TableProgress
end

defmodule Google.Bigtable.Admin.V2.CreateClusterMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :original_request, 1,
    type: Google.Bigtable.Admin.V2.CreateClusterRequest,
    json_name: "originalRequest"

  field :request_time, 2, type: Google.Protobuf.Timestamp, json_name: "requestTime"
  field :finish_time, 3, type: Google.Protobuf.Timestamp, json_name: "finishTime"

  field :tables, 4,
    repeated: true,
    type: Google.Bigtable.Admin.V2.CreateClusterMetadata.TablesEntry,
    map: true
end

defmodule Google.Bigtable.Admin.V2.UpdateClusterMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :original_request, 1, type: Google.Bigtable.Admin.V2.Cluster, json_name: "originalRequest"
  field :request_time, 2, type: Google.Protobuf.Timestamp, json_name: "requestTime"
  field :finish_time, 3, type: Google.Protobuf.Timestamp, json_name: "finishTime"
end

defmodule Google.Bigtable.Admin.V2.PartialUpdateClusterMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :request_time, 1, type: Google.Protobuf.Timestamp, json_name: "requestTime"
  field :finish_time, 2, type: Google.Protobuf.Timestamp, json_name: "finishTime"

  field :original_request, 3,
    type: Google.Bigtable.Admin.V2.PartialUpdateClusterRequest,
    json_name: "originalRequest"
end

defmodule Google.Bigtable.Admin.V2.PartialUpdateClusterRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :cluster, 1, type: Google.Bigtable.Admin.V2.Cluster, deprecated: false

  field :update_mask, 2,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false
end

defmodule Google.Bigtable.Admin.V2.CreateAppProfileRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :app_profile_id, 2, type: :string, json_name: "appProfileId", deprecated: false

  field :app_profile, 3,
    type: Google.Bigtable.Admin.V2.AppProfile,
    json_name: "appProfile",
    deprecated: false

  field :ignore_warnings, 4, type: :bool, json_name: "ignoreWarnings"
end

defmodule Google.Bigtable.Admin.V2.GetAppProfileRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Bigtable.Admin.V2.ListAppProfilesRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 3, type: :int32, json_name: "pageSize"
  field :page_token, 2, type: :string, json_name: "pageToken"
end

defmodule Google.Bigtable.Admin.V2.ListAppProfilesResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :app_profiles, 1,
    repeated: true,
    type: Google.Bigtable.Admin.V2.AppProfile,
    json_name: "appProfiles"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :failed_locations, 3, repeated: true, type: :string, json_name: "failedLocations"
end

defmodule Google.Bigtable.Admin.V2.UpdateAppProfileRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :app_profile, 1,
    type: Google.Bigtable.Admin.V2.AppProfile,
    json_name: "appProfile",
    deprecated: false

  field :update_mask, 2,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false

  field :ignore_warnings, 3, type: :bool, json_name: "ignoreWarnings"
end

defmodule Google.Bigtable.Admin.V2.DeleteAppProfileRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :ignore_warnings, 2, type: :bool, json_name: "ignoreWarnings", deprecated: false
end

defmodule Google.Bigtable.Admin.V2.UpdateAppProfileMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3
end

defmodule Google.Bigtable.Admin.V2.ListHotTabletsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :start_time, 2, type: Google.Protobuf.Timestamp, json_name: "startTime"
  field :end_time, 3, type: Google.Protobuf.Timestamp, json_name: "endTime"
  field :page_size, 4, type: :int32, json_name: "pageSize"
  field :page_token, 5, type: :string, json_name: "pageToken"
end

defmodule Google.Bigtable.Admin.V2.ListHotTabletsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :hot_tablets, 1,
    repeated: true,
    type: Google.Bigtable.Admin.V2.HotTablet,
    json_name: "hotTablets"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Bigtable.Admin.V2.BigtableInstanceAdmin.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.bigtable.admin.v2.BigtableInstanceAdmin",
    protoc_gen_elixir_version: "0.14.1"

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

  rpc :ListHotTablets,
      Google.Bigtable.Admin.V2.ListHotTabletsRequest,
      Google.Bigtable.Admin.V2.ListHotTabletsResponse
end

defmodule Google.Bigtable.Admin.V2.BigtableInstanceAdmin.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Bigtable.Admin.V2.BigtableInstanceAdmin.Service
end
