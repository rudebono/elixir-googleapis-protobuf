defmodule Google.Cloud.Securitycenter.V1.CloudProvider do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :CLOUD_PROVIDER_UNSPECIFIED, 0
  field :GOOGLE_CLOUD_PLATFORM, 1
  field :AMAZON_WEB_SERVICES, 2
  field :MICROSOFT_AZURE, 3
end

defmodule Google.Cloud.Securitycenter.V1.ResourcePath.ResourcePathNodeType do
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

defmodule Google.Cloud.Securitycenter.V1.Resource do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  oneof :cloud_provider_metadata, 0

  field :name, 1, type: :string
  field :display_name, 8, type: :string, json_name: "displayName"
  field :type, 6, type: :string
  field :project, 2, type: :string
  field :project_display_name, 3, type: :string, json_name: "projectDisplayName"
  field :parent, 4, type: :string
  field :parent_display_name, 5, type: :string, json_name: "parentDisplayName"

  field :folders, 7,
    repeated: true,
    type: Google.Cloud.Securitycenter.V1.Folder,
    deprecated: false

  field :cloud_provider, 9,
    type: Google.Cloud.Securitycenter.V1.CloudProvider,
    json_name: "cloudProvider",
    enum: true

  field :organization, 10, type: :string
  field :service, 11, type: :string
  field :location, 12, type: :string

  field :aws_metadata, 16,
    type: Google.Cloud.Securitycenter.V1.AwsMetadata,
    json_name: "awsMetadata",
    oneof: 0

  field :azure_metadata, 17,
    type: Google.Cloud.Securitycenter.V1.AzureMetadata,
    json_name: "azureMetadata",
    oneof: 0

  field :resource_path, 18,
    type: Google.Cloud.Securitycenter.V1.ResourcePath,
    json_name: "resourcePath"

  field :resource_path_string, 19, type: :string, json_name: "resourcePathString"
end

defmodule Google.Cloud.Securitycenter.V1.AwsMetadata.AwsOrganization do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :id, 1, type: :string
end

defmodule Google.Cloud.Securitycenter.V1.AwsMetadata.AwsOrganizationalUnit do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :id, 1, type: :string
  field :name, 2, type: :string
end

defmodule Google.Cloud.Securitycenter.V1.AwsMetadata.AwsAccount do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :id, 1, type: :string
  field :name, 2, type: :string
end

defmodule Google.Cloud.Securitycenter.V1.AwsMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :organization, 2, type: Google.Cloud.Securitycenter.V1.AwsMetadata.AwsOrganization

  field :organizational_units, 3,
    repeated: true,
    type: Google.Cloud.Securitycenter.V1.AwsMetadata.AwsOrganizationalUnit,
    json_name: "organizationalUnits"

  field :account, 4, type: Google.Cloud.Securitycenter.V1.AwsMetadata.AwsAccount
end

defmodule Google.Cloud.Securitycenter.V1.AzureMetadata.AzureManagementGroup do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :id, 1, type: :string
  field :display_name, 2, type: :string, json_name: "displayName"
end

defmodule Google.Cloud.Securitycenter.V1.AzureMetadata.AzureSubscription do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :id, 1, type: :string
  field :display_name, 2, type: :string, json_name: "displayName"
end

defmodule Google.Cloud.Securitycenter.V1.AzureMetadata.AzureResourceGroup do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :name, 1, type: :string
end

defmodule Google.Cloud.Securitycenter.V1.AzureMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :management_groups, 4,
    repeated: true,
    type: Google.Cloud.Securitycenter.V1.AzureMetadata.AzureManagementGroup,
    json_name: "managementGroups"

  field :subscription, 5, type: Google.Cloud.Securitycenter.V1.AzureMetadata.AzureSubscription

  field :resource_group, 6,
    type: Google.Cloud.Securitycenter.V1.AzureMetadata.AzureResourceGroup,
    json_name: "resourceGroup"
end

defmodule Google.Cloud.Securitycenter.V1.ResourcePath.ResourcePathNode do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :node_type, 1,
    type: Google.Cloud.Securitycenter.V1.ResourcePath.ResourcePathNodeType,
    json_name: "nodeType",
    enum: true

  field :id, 2, type: :string
  field :display_name, 3, type: :string, json_name: "displayName"
end

defmodule Google.Cloud.Securitycenter.V1.ResourcePath do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :nodes, 1,
    repeated: true,
    type: Google.Cloud.Securitycenter.V1.ResourcePath.ResourcePathNode
end