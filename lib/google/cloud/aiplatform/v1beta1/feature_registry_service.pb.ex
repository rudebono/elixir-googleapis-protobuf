defmodule Google.Cloud.Aiplatform.V1beta1.CreateFeatureGroupRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false

  field :feature_group, 2,
    type: Google.Cloud.Aiplatform.V1beta1.FeatureGroup,
    json_name: "featureGroup",
    deprecated: false

  field :feature_group_id, 3, type: :string, json_name: "featureGroupId", deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.GetFeatureGroupRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.ListFeatureGroupsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :filter, 2, type: :string
  field :page_size, 3, type: :int32, json_name: "pageSize"
  field :page_token, 4, type: :string, json_name: "pageToken"
  field :order_by, 5, type: :string, json_name: "orderBy"
end

defmodule Google.Cloud.Aiplatform.V1beta1.ListFeatureGroupsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :feature_groups, 1,
    repeated: true,
    type: Google.Cloud.Aiplatform.V1beta1.FeatureGroup,
    json_name: "featureGroups"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Aiplatform.V1beta1.UpdateFeatureGroupRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :feature_group, 1,
    type: Google.Cloud.Aiplatform.V1beta1.FeatureGroup,
    json_name: "featureGroup",
    deprecated: false

  field :update_mask, 2, type: Google.Protobuf.FieldMask, json_name: "updateMask"
end

defmodule Google.Cloud.Aiplatform.V1beta1.DeleteFeatureGroupRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :force, 2, type: :bool
end

defmodule Google.Cloud.Aiplatform.V1beta1.CreateFeatureMonitorRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false

  field :feature_monitor, 2,
    type: Google.Cloud.Aiplatform.V1beta1.FeatureMonitor,
    json_name: "featureMonitor",
    deprecated: false

  field :feature_monitor_id, 3, type: :string, json_name: "featureMonitorId", deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.GetFeatureMonitorRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.ListFeatureMonitorsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :filter, 2, type: :string, deprecated: false
  field :page_size, 3, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 4, type: :string, json_name: "pageToken", deprecated: false
  field :order_by, 5, type: :string, json_name: "orderBy", deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.UpdateFeatureMonitorRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :feature_monitor, 1,
    type: Google.Cloud.Aiplatform.V1beta1.FeatureMonitor,
    json_name: "featureMonitor",
    deprecated: false

  field :update_mask, 2,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.DeleteFeatureMonitorRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.ListFeatureMonitorsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :feature_monitors, 1,
    repeated: true,
    type: Google.Cloud.Aiplatform.V1beta1.FeatureMonitor,
    json_name: "featureMonitors"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Aiplatform.V1beta1.CreateFeatureGroupOperationMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :generic_metadata, 1,
    type: Google.Cloud.Aiplatform.V1beta1.GenericOperationMetadata,
    json_name: "genericMetadata"
end

defmodule Google.Cloud.Aiplatform.V1beta1.UpdateFeatureGroupOperationMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :generic_metadata, 1,
    type: Google.Cloud.Aiplatform.V1beta1.GenericOperationMetadata,
    json_name: "genericMetadata"
end

defmodule Google.Cloud.Aiplatform.V1beta1.CreateRegistryFeatureOperationMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :generic_metadata, 1,
    type: Google.Cloud.Aiplatform.V1beta1.GenericOperationMetadata,
    json_name: "genericMetadata"
end

defmodule Google.Cloud.Aiplatform.V1beta1.UpdateFeatureOperationMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :generic_metadata, 1,
    type: Google.Cloud.Aiplatform.V1beta1.GenericOperationMetadata,
    json_name: "genericMetadata"
end

defmodule Google.Cloud.Aiplatform.V1beta1.CreateFeatureMonitorOperationMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :generic_metadata, 1,
    type: Google.Cloud.Aiplatform.V1beta1.GenericOperationMetadata,
    json_name: "genericMetadata"
end

defmodule Google.Cloud.Aiplatform.V1beta1.UpdateFeatureMonitorOperationMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :generic_metadata, 1,
    type: Google.Cloud.Aiplatform.V1beta1.GenericOperationMetadata,
    json_name: "genericMetadata"
end

defmodule Google.Cloud.Aiplatform.V1beta1.CreateFeatureMonitorJobRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false

  field :feature_monitor_job, 2,
    type: Google.Cloud.Aiplatform.V1beta1.FeatureMonitorJob,
    json_name: "featureMonitorJob",
    deprecated: false

  field :feature_monitor_job_id, 3,
    type: :int64,
    json_name: "featureMonitorJobId",
    deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.GetFeatureMonitorJobRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.ListFeatureMonitorJobsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :filter, 2, type: :string, deprecated: false
  field :page_size, 3, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 4, type: :string, json_name: "pageToken", deprecated: false
  field :order_by, 5, type: :string, json_name: "orderBy", deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.ListFeatureMonitorJobsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :feature_monitor_jobs, 1,
    repeated: true,
    type: Google.Cloud.Aiplatform.V1beta1.FeatureMonitorJob,
    json_name: "featureMonitorJobs"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Aiplatform.V1beta1.FeatureRegistryService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.cloud.aiplatform.v1beta1.FeatureRegistryService",
    protoc_gen_elixir_version: "0.14.1"

  rpc :CreateFeatureGroup,
      Google.Cloud.Aiplatform.V1beta1.CreateFeatureGroupRequest,
      Google.Longrunning.Operation

  rpc :GetFeatureGroup,
      Google.Cloud.Aiplatform.V1beta1.GetFeatureGroupRequest,
      Google.Cloud.Aiplatform.V1beta1.FeatureGroup

  rpc :ListFeatureGroups,
      Google.Cloud.Aiplatform.V1beta1.ListFeatureGroupsRequest,
      Google.Cloud.Aiplatform.V1beta1.ListFeatureGroupsResponse

  rpc :UpdateFeatureGroup,
      Google.Cloud.Aiplatform.V1beta1.UpdateFeatureGroupRequest,
      Google.Longrunning.Operation

  rpc :DeleteFeatureGroup,
      Google.Cloud.Aiplatform.V1beta1.DeleteFeatureGroupRequest,
      Google.Longrunning.Operation

  rpc :CreateFeature,
      Google.Cloud.Aiplatform.V1beta1.CreateFeatureRequest,
      Google.Longrunning.Operation

  rpc :BatchCreateFeatures,
      Google.Cloud.Aiplatform.V1beta1.BatchCreateFeaturesRequest,
      Google.Longrunning.Operation

  rpc :GetFeature,
      Google.Cloud.Aiplatform.V1beta1.GetFeatureRequest,
      Google.Cloud.Aiplatform.V1beta1.Feature

  rpc :ListFeatures,
      Google.Cloud.Aiplatform.V1beta1.ListFeaturesRequest,
      Google.Cloud.Aiplatform.V1beta1.ListFeaturesResponse

  rpc :UpdateFeature,
      Google.Cloud.Aiplatform.V1beta1.UpdateFeatureRequest,
      Google.Longrunning.Operation

  rpc :DeleteFeature,
      Google.Cloud.Aiplatform.V1beta1.DeleteFeatureRequest,
      Google.Longrunning.Operation

  rpc :CreateFeatureMonitor,
      Google.Cloud.Aiplatform.V1beta1.CreateFeatureMonitorRequest,
      Google.Longrunning.Operation

  rpc :GetFeatureMonitor,
      Google.Cloud.Aiplatform.V1beta1.GetFeatureMonitorRequest,
      Google.Cloud.Aiplatform.V1beta1.FeatureMonitor

  rpc :ListFeatureMonitors,
      Google.Cloud.Aiplatform.V1beta1.ListFeatureMonitorsRequest,
      Google.Cloud.Aiplatform.V1beta1.ListFeatureMonitorsResponse

  rpc :UpdateFeatureMonitor,
      Google.Cloud.Aiplatform.V1beta1.UpdateFeatureMonitorRequest,
      Google.Longrunning.Operation

  rpc :DeleteFeatureMonitor,
      Google.Cloud.Aiplatform.V1beta1.DeleteFeatureMonitorRequest,
      Google.Longrunning.Operation

  rpc :CreateFeatureMonitorJob,
      Google.Cloud.Aiplatform.V1beta1.CreateFeatureMonitorJobRequest,
      Google.Cloud.Aiplatform.V1beta1.FeatureMonitorJob

  rpc :GetFeatureMonitorJob,
      Google.Cloud.Aiplatform.V1beta1.GetFeatureMonitorJobRequest,
      Google.Cloud.Aiplatform.V1beta1.FeatureMonitorJob

  rpc :ListFeatureMonitorJobs,
      Google.Cloud.Aiplatform.V1beta1.ListFeatureMonitorJobsRequest,
      Google.Cloud.Aiplatform.V1beta1.ListFeatureMonitorJobsResponse
end

defmodule Google.Cloud.Aiplatform.V1beta1.FeatureRegistryService.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Cloud.Aiplatform.V1beta1.FeatureRegistryService.Service
end
