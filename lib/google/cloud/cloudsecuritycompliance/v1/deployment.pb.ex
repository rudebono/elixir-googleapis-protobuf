defmodule Google.Cloud.Cloudsecuritycompliance.V1.DeploymentState do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :DEPLOYMENT_STATE_UNSPECIFIED, 0
  field :DEPLOYMENT_STATE_VALIDATING, 1
  field :DEPLOYMENT_STATE_CREATING, 2
  field :DEPLOYMENT_STATE_DELETING, 3
  field :DEPLOYMENT_STATE_FAILED, 4
  field :DEPLOYMENT_STATE_READY, 5
  field :DEPLOYMENT_STATE_PARTIALLY_DEPLOYED, 6
  field :DEPLOYMENT_STATE_PARTIALLY_DELETED, 7
end

defmodule Google.Cloud.Cloudsecuritycompliance.V1.FrameworkDeployment do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false

  field :target_resource_config, 2,
    type: Google.Cloud.Cloudsecuritycompliance.V1.TargetResourceConfig,
    json_name: "targetResourceConfig",
    deprecated: false

  field :computed_target_resource, 3,
    type: :string,
    json_name: "computedTargetResource",
    deprecated: false

  field :framework, 4,
    type: Google.Cloud.Cloudsecuritycompliance.V1.FrameworkReference,
    deprecated: false

  field :description, 5, type: :string, deprecated: false

  field :cloud_control_metadata, 6,
    repeated: true,
    type: Google.Cloud.Cloudsecuritycompliance.V1.CloudControlMetadata,
    json_name: "cloudControlMetadata",
    deprecated: false

  field :deployment_state, 7,
    type: Google.Cloud.Cloudsecuritycompliance.V1.DeploymentState,
    json_name: "deploymentState",
    enum: true,
    deprecated: false

  field :create_time, 9,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :update_time, 10,
    type: Google.Protobuf.Timestamp,
    json_name: "updateTime",
    deprecated: false

  field :etag, 11, type: :string, deprecated: false

  field :target_resource_display_name, 13,
    type: :string,
    json_name: "targetResourceDisplayName",
    deprecated: false

  field :cloud_control_deployment_references, 14,
    repeated: true,
    type: Google.Cloud.Cloudsecuritycompliance.V1.CloudControlDeploymentReference,
    json_name: "cloudControlDeploymentReferences",
    deprecated: false
end

defmodule Google.Cloud.Cloudsecuritycompliance.V1.CloudControlDeployment do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false

  field :target_resource_config, 2,
    type: Google.Cloud.Cloudsecuritycompliance.V1.TargetResourceConfig,
    json_name: "targetResourceConfig",
    deprecated: false

  field :target_resource, 3, type: :string, json_name: "targetResource", deprecated: false

  field :cloud_control_metadata, 4,
    type: Google.Cloud.Cloudsecuritycompliance.V1.CloudControlMetadata,
    json_name: "cloudControlMetadata",
    deprecated: false

  field :description, 5, type: :string, deprecated: false

  field :deployment_state, 6,
    type: Google.Cloud.Cloudsecuritycompliance.V1.DeploymentState,
    json_name: "deploymentState",
    enum: true,
    deprecated: false

  field :create_time, 7,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :update_time, 8,
    type: Google.Protobuf.Timestamp,
    json_name: "updateTime",
    deprecated: false

  field :etag, 9, type: :string, deprecated: false

  field :parameter_substituted_cloud_control, 10,
    type: Google.Cloud.Cloudsecuritycompliance.V1.CloudControl,
    json_name: "parameterSubstitutedCloudControl",
    deprecated: false

  field :framework_deployment_references, 11,
    repeated: true,
    type: Google.Cloud.Cloudsecuritycompliance.V1.FrameworkDeploymentReference,
    json_name: "frameworkDeploymentReferences",
    deprecated: false

  field :target_resource_display_name, 12,
    type: :string,
    json_name: "targetResourceDisplayName",
    deprecated: false
end

defmodule Google.Cloud.Cloudsecuritycompliance.V1.TargetResourceConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :resource_config, 0

  field :existing_target_resource, 1,
    type: :string,
    json_name: "existingTargetResource",
    oneof: 0,
    deprecated: false

  field :target_resource_creation_config, 2,
    type: Google.Cloud.Cloudsecuritycompliance.V1.TargetResourceCreationConfig,
    json_name: "targetResourceCreationConfig",
    oneof: 0,
    deprecated: false
end

defmodule Google.Cloud.Cloudsecuritycompliance.V1.TargetResourceCreationConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :resource_creation_config, 0

  field :folder_creation_config, 1,
    type: Google.Cloud.Cloudsecuritycompliance.V1.FolderCreationConfig,
    json_name: "folderCreationConfig",
    oneof: 0,
    deprecated: false

  field :project_creation_config, 2,
    type: Google.Cloud.Cloudsecuritycompliance.V1.ProjectCreationConfig,
    json_name: "projectCreationConfig",
    oneof: 0,
    deprecated: false
end

defmodule Google.Cloud.Cloudsecuritycompliance.V1.FolderCreationConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :folder_display_name, 2, type: :string, json_name: "folderDisplayName", deprecated: false
end

defmodule Google.Cloud.Cloudsecuritycompliance.V1.ProjectCreationConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false

  field :project_display_name, 2,
    type: :string,
    json_name: "projectDisplayName",
    deprecated: false

  field :billing_account_id, 3, type: :string, json_name: "billingAccountId", deprecated: false
end

defmodule Google.Cloud.Cloudsecuritycompliance.V1.CloudControlMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :cloud_control_details, 1,
    type: Google.Cloud.Cloudsecuritycompliance.V1.CloudControlDetails,
    json_name: "cloudControlDetails",
    deprecated: false

  field :enforcement_mode, 2,
    type: Google.Cloud.Cloudsecuritycompliance.V1.EnforcementMode,
    json_name: "enforcementMode",
    enum: true,
    deprecated: false
end

defmodule Google.Cloud.Cloudsecuritycompliance.V1.CreateFrameworkDeploymentRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false

  field :framework_deployment_id, 2,
    type: :string,
    json_name: "frameworkDeploymentId",
    deprecated: false

  field :framework_deployment, 3,
    type: Google.Cloud.Cloudsecuritycompliance.V1.FrameworkDeployment,
    json_name: "frameworkDeployment",
    deprecated: false
end

defmodule Google.Cloud.Cloudsecuritycompliance.V1.DeleteFrameworkDeploymentRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :etag, 2, type: :string, deprecated: false
end

defmodule Google.Cloud.Cloudsecuritycompliance.V1.GetFrameworkDeploymentRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Cloudsecuritycompliance.V1.ListFrameworkDeploymentsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken", deprecated: false
  field :filter, 4, type: :string, deprecated: false
  field :order_by, 5, type: :string, json_name: "orderBy", deprecated: false
end

defmodule Google.Cloud.Cloudsecuritycompliance.V1.ListFrameworkDeploymentsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :framework_deployments, 1,
    repeated: true,
    type: Google.Cloud.Cloudsecuritycompliance.V1.FrameworkDeployment,
    json_name: "frameworkDeployments"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Cloudsecuritycompliance.V1.GetCloudControlDeploymentRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Cloudsecuritycompliance.V1.ListCloudControlDeploymentsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken", deprecated: false
  field :filter, 4, type: :string, deprecated: false
  field :order_by, 5, type: :string, json_name: "orderBy", deprecated: false
end

defmodule Google.Cloud.Cloudsecuritycompliance.V1.ListCloudControlDeploymentsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :cloud_control_deployments, 1,
    repeated: true,
    type: Google.Cloud.Cloudsecuritycompliance.V1.CloudControlDeployment,
    json_name: "cloudControlDeployments"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Cloudsecuritycompliance.V1.CloudControlDeploymentReference do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :cloud_control_deployment, 1,
    type: :string,
    json_name: "cloudControlDeployment",
    deprecated: false
end

defmodule Google.Cloud.Cloudsecuritycompliance.V1.FrameworkDeploymentReference do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :framework_deployment, 1,
    type: :string,
    json_name: "frameworkDeployment",
    deprecated: false

  field :framework_reference, 2,
    type: Google.Cloud.Cloudsecuritycompliance.V1.FrameworkReference,
    json_name: "frameworkReference",
    deprecated: false

  field :framework_display_name, 3,
    type: :string,
    json_name: "frameworkDisplayName",
    deprecated: false
end

defmodule Google.Cloud.Cloudsecuritycompliance.V1.Deployment.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.cloud.cloudsecuritycompliance.v1.Deployment",
    protoc_gen_elixir_version: "0.15.0"

  rpc :CreateFrameworkDeployment,
      Google.Cloud.Cloudsecuritycompliance.V1.CreateFrameworkDeploymentRequest,
      Google.Longrunning.Operation

  rpc :DeleteFrameworkDeployment,
      Google.Cloud.Cloudsecuritycompliance.V1.DeleteFrameworkDeploymentRequest,
      Google.Longrunning.Operation

  rpc :GetFrameworkDeployment,
      Google.Cloud.Cloudsecuritycompliance.V1.GetFrameworkDeploymentRequest,
      Google.Cloud.Cloudsecuritycompliance.V1.FrameworkDeployment

  rpc :ListFrameworkDeployments,
      Google.Cloud.Cloudsecuritycompliance.V1.ListFrameworkDeploymentsRequest,
      Google.Cloud.Cloudsecuritycompliance.V1.ListFrameworkDeploymentsResponse

  rpc :GetCloudControlDeployment,
      Google.Cloud.Cloudsecuritycompliance.V1.GetCloudControlDeploymentRequest,
      Google.Cloud.Cloudsecuritycompliance.V1.CloudControlDeployment

  rpc :ListCloudControlDeployments,
      Google.Cloud.Cloudsecuritycompliance.V1.ListCloudControlDeploymentsRequest,
      Google.Cloud.Cloudsecuritycompliance.V1.ListCloudControlDeploymentsResponse
end

defmodule Google.Cloud.Cloudsecuritycompliance.V1.Deployment.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Cloud.Cloudsecuritycompliance.V1.Deployment.Service
end
