defmodule Google.Cloud.Securitycenter.V2.CloudProvider do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :CLOUD_PROVIDER_UNSPECIFIED, 0
  field :GOOGLE_CLOUD_PLATFORM, 1
  field :AMAZON_WEB_SERVICES, 2
  field :MICROSOFT_AZURE, 3
end

defmodule Google.Cloud.Securitycenter.V2.ResourcePath.ResourcePathNodeType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :RESOURCE_PATH_NODE_TYPE_UNSPECIFIED, 0
  field :GCP_ORGANIZATION, 1
  field :GCP_FOLDER, 2
  field :GCP_PROJECT, 3
  field :AWS_ORGANIZATION, 4
  field :AWS_ORGANIZATIONAL_UNIT, 5
  field :AWS_ACCOUNT, 6
  field :AZURE_MANAGEMENT_GROUP, 7
  field :AZURE_SUBSCRIPTION, 8
  field :AZURE_RESOURCE_GROUP, 9
end

defmodule Google.Cloud.Securitycenter.V2.Resource do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  oneof :cloud_provider_metadata, 0

  field :name, 1, type: :string
  field :display_name, 2, type: :string, json_name: "displayName"
  field :type, 3, type: :string

  field :cloud_provider, 4,
    type: Google.Cloud.Securitycenter.V2.CloudProvider,
    json_name: "cloudProvider",
    enum: true

  field :service, 5, type: :string
  field :location, 6, type: :string

  field :gcp_metadata, 7,
    type: Google.Cloud.Securitycenter.V2.GcpMetadata,
    json_name: "gcpMetadata",
    oneof: 0

  field :aws_metadata, 8,
    type: Google.Cloud.Securitycenter.V2.AwsMetadata,
    json_name: "awsMetadata",
    oneof: 0

  field :azure_metadata, 9,
    type: Google.Cloud.Securitycenter.V2.AzureMetadata,
    json_name: "azureMetadata",
    oneof: 0

  field :resource_path, 10,
    type: Google.Cloud.Securitycenter.V2.ResourcePath,
    json_name: "resourcePath"

  field :resource_path_string, 11, type: :string, json_name: "resourcePathString"
end

defmodule Google.Cloud.Securitycenter.V2.GcpMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :project, 1, type: :string
  field :project_display_name, 2, type: :string, json_name: "projectDisplayName"
  field :parent, 3, type: :string
  field :parent_display_name, 4, type: :string, json_name: "parentDisplayName"

  field :folders, 5,
    repeated: true,
    type: Google.Cloud.Securitycenter.V2.Folder,
    deprecated: false

  field :organization, 6, type: :string
end

defmodule Google.Cloud.Securitycenter.V2.AwsMetadata.AwsOrganization do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :id, 1, type: :string
end

defmodule Google.Cloud.Securitycenter.V2.AwsMetadata.AwsOrganizationalUnit do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :id, 1, type: :string
  field :name, 2, type: :string
end

defmodule Google.Cloud.Securitycenter.V2.AwsMetadata.AwsAccount do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :id, 1, type: :string
  field :name, 2, type: :string
end

defmodule Google.Cloud.Securitycenter.V2.AwsMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :organization, 1, type: Google.Cloud.Securitycenter.V2.AwsMetadata.AwsOrganization

  field :organizational_units, 2,
    repeated: true,
    type: Google.Cloud.Securitycenter.V2.AwsMetadata.AwsOrganizationalUnit,
    json_name: "organizationalUnits"

  field :account, 3, type: Google.Cloud.Securitycenter.V2.AwsMetadata.AwsAccount
end

defmodule Google.Cloud.Securitycenter.V2.AzureMetadata.AzureManagementGroup do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :id, 1, type: :string
  field :display_name, 2, type: :string, json_name: "displayName"
end

defmodule Google.Cloud.Securitycenter.V2.AzureMetadata.AzureSubscription do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :id, 1, type: :string
  field :display_name, 2, type: :string, json_name: "displayName"
end

defmodule Google.Cloud.Securitycenter.V2.AzureMetadata.AzureResourceGroup do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :name, 1, type: :string
end

defmodule Google.Cloud.Securitycenter.V2.AzureMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :management_groups, 1,
    repeated: true,
    type: Google.Cloud.Securitycenter.V2.AzureMetadata.AzureManagementGroup,
    json_name: "managementGroups"

  field :subscription, 2, type: Google.Cloud.Securitycenter.V2.AzureMetadata.AzureSubscription

  field :resource_group, 3,
    type: Google.Cloud.Securitycenter.V2.AzureMetadata.AzureResourceGroup,
    json_name: "resourceGroup"
end

defmodule Google.Cloud.Securitycenter.V2.ResourcePath.ResourcePathNode do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :node_type, 1,
    type: Google.Cloud.Securitycenter.V2.ResourcePath.ResourcePathNodeType,
    json_name: "nodeType",
    enum: true

  field :id, 2, type: :string
  field :display_name, 3, type: :string, json_name: "displayName"
end

defmodule Google.Cloud.Securitycenter.V2.ResourcePath do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :nodes, 1,
    repeated: true,
    type: Google.Cloud.Securitycenter.V2.ResourcePath.ResourcePathNode
end