defmodule Google.Cloud.Securitycenter.V1beta1.Asset.SecurityCenterProperties do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t(),
          resource_type: String.t(),
          resource_parent: String.t(),
          resource_project: String.t(),
          resource_owners: [String.t()]
        }

  defstruct [
    :resource_name,
    :resource_type,
    :resource_parent,
    :resource_project,
    :resource_owners
  ]

  field :resource_name, 1, type: :string, json_name: "resourceName"
  field :resource_type, 2, type: :string, json_name: "resourceType"
  field :resource_parent, 3, type: :string, json_name: "resourceParent"
  field :resource_project, 4, type: :string, json_name: "resourceProject"
  field :resource_owners, 5, repeated: true, type: :string, json_name: "resourceOwners"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Securitycenter.V1beta1.Asset.ResourcePropertiesEntry do
  @moduledoc false
  use Protobuf, map: true, syntax: :proto3

  @type t :: %__MODULE__{
          key: String.t(),
          value: Google.Protobuf.Value.t() | nil
        }

  defstruct [:key, :value]

  field :key, 1, type: :string
  field :value, 2, type: Google.Protobuf.Value

  def transform_module(), do: nil
end

defmodule Google.Cloud.Securitycenter.V1beta1.Asset do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          security_center_properties:
            Google.Cloud.Securitycenter.V1beta1.Asset.SecurityCenterProperties.t() | nil,
          resource_properties: %{String.t() => Google.Protobuf.Value.t() | nil},
          security_marks: Google.Cloud.Securitycenter.V1beta1.SecurityMarks.t() | nil,
          create_time: Google.Protobuf.Timestamp.t() | nil,
          update_time: Google.Protobuf.Timestamp.t() | nil
        }

  defstruct [
    :name,
    :security_center_properties,
    :resource_properties,
    :security_marks,
    :create_time,
    :update_time
  ]

  field :name, 1, type: :string

  field :security_center_properties, 2,
    type: Google.Cloud.Securitycenter.V1beta1.Asset.SecurityCenterProperties,
    json_name: "securityCenterProperties"

  field :resource_properties, 7,
    repeated: true,
    type: Google.Cloud.Securitycenter.V1beta1.Asset.ResourcePropertiesEntry,
    json_name: "resourceProperties",
    map: true

  field :security_marks, 8,
    type: Google.Cloud.Securitycenter.V1beta1.SecurityMarks,
    json_name: "securityMarks"

  field :create_time, 9, type: Google.Protobuf.Timestamp, json_name: "createTime"
  field :update_time, 10, type: Google.Protobuf.Timestamp, json_name: "updateTime"

  def transform_module(), do: nil
end
