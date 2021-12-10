defmodule Google.Cloud.Securitycenter.V1p1beta1.Asset.SecurityCenterProperties do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t(),
          resource_type: String.t(),
          resource_parent: String.t(),
          resource_project: String.t(),
          resource_owners: [String.t()],
          resource_display_name: String.t(),
          resource_parent_display_name: String.t(),
          resource_project_display_name: String.t(),
          folders: [Google.Cloud.Securitycenter.V1p1beta1.Folder.t()]
        }

  defstruct resource_name: "",
            resource_type: "",
            resource_parent: "",
            resource_project: "",
            resource_owners: [],
            resource_display_name: "",
            resource_parent_display_name: "",
            resource_project_display_name: "",
            folders: []

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
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          policy_blob: String.t()
        }

  defstruct policy_blob: ""

  field :policy_blob, 1, type: :string, json_name: "policyBlob"
end
defmodule Google.Cloud.Securitycenter.V1p1beta1.Asset.ResourcePropertiesEntry do
  @moduledoc false
  use Protobuf, map: true, syntax: :proto3

  @type t :: %__MODULE__{
          key: String.t(),
          value: Google.Protobuf.Value.t() | nil
        }

  defstruct key: "",
            value: nil

  field :key, 1, type: :string
  field :value, 2, type: Google.Protobuf.Value
end
defmodule Google.Cloud.Securitycenter.V1p1beta1.Asset do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          security_center_properties:
            Google.Cloud.Securitycenter.V1p1beta1.Asset.SecurityCenterProperties.t() | nil,
          resource_properties: %{String.t() => Google.Protobuf.Value.t() | nil},
          security_marks: Google.Cloud.Securitycenter.V1p1beta1.SecurityMarks.t() | nil,
          create_time: Google.Protobuf.Timestamp.t() | nil,
          update_time: Google.Protobuf.Timestamp.t() | nil,
          iam_policy: Google.Cloud.Securitycenter.V1p1beta1.Asset.IamPolicy.t() | nil,
          canonical_name: String.t()
        }

  defstruct name: "",
            security_center_properties: nil,
            resource_properties: %{},
            security_marks: nil,
            create_time: nil,
            update_time: nil,
            iam_policy: nil,
            canonical_name: ""

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
