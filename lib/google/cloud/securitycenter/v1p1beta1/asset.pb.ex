defmodule Google.Cloud.Securitycenter.V1p1beta1.Asset.SecurityCenterProperties do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :resource_name, 1, type: :string, json_name: "resourceName"
  field :resource_type, 2, type: :string, json_name: "resourceType"
  field :resource_parent, 3, type: :string, json_name: "resourceParent"
  field :resource_project, 4, type: :string, json_name: "resourceProject"
  field :resource_owners, 5, repeated: true, type: :string, json_name: "resourceOwners"
  field :resource_display_name, 6, type: :string, json_name: "resourceDisplayName"
  field :resource_parent_display_name, 7, type: :string, json_name: "resourceParentDisplayName"
  field :resource_project_display_name, 8, type: :string, json_name: "resourceProjectDisplayName"
  field :folders, 10, repeated: true, type: Google.Cloud.Securitycenter.V1p1beta1.Folder
end

defmodule Google.Cloud.Securitycenter.V1p1beta1.Asset.IamPolicy do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :policy_blob, 1, type: :string, json_name: "policyBlob"
end

defmodule Google.Cloud.Securitycenter.V1p1beta1.Asset.ResourcePropertiesEntry do
  @moduledoc false
  use Protobuf, map: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: Google.Protobuf.Value
end

defmodule Google.Cloud.Securitycenter.V1p1beta1.Asset do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :name, 1, type: :string

  field :security_center_properties, 2,
    type: Google.Cloud.Securitycenter.V1p1beta1.Asset.SecurityCenterProperties,
    json_name: "securityCenterProperties"

  field :resource_properties, 7,
    repeated: true,
    type: Google.Cloud.Securitycenter.V1p1beta1.Asset.ResourcePropertiesEntry,
    json_name: "resourceProperties",
    map: true

  field :security_marks, 8,
    type: Google.Cloud.Securitycenter.V1p1beta1.SecurityMarks,
    json_name: "securityMarks"

  field :create_time, 9, type: Google.Protobuf.Timestamp, json_name: "createTime"
  field :update_time, 10, type: Google.Protobuf.Timestamp, json_name: "updateTime"

  field :iam_policy, 11,
    type: Google.Cloud.Securitycenter.V1p1beta1.Asset.IamPolicy,
    json_name: "iamPolicy"

  field :canonical_name, 13, type: :string, json_name: "canonicalName"
end