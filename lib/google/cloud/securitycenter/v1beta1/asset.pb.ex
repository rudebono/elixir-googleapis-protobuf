defmodule Google.Cloud.Securitycenter.V1beta1.Asset.SecurityCenterProperties do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false
  field :resource_type, 2, type: :string, json_name: "resourceType"
  field :resource_parent, 3, type: :string, json_name: "resourceParent"
  field :resource_project, 4, type: :string, json_name: "resourceProject"
  field :resource_owners, 5, repeated: true, type: :string, json_name: "resourceOwners"
end

defmodule Google.Cloud.Securitycenter.V1beta1.Asset.ResourcePropertiesEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: Google.Protobuf.Value
end

defmodule Google.Cloud.Securitycenter.V1beta1.Asset do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

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
end
