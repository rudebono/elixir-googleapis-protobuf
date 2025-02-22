defmodule Google.Cloud.Securitycenter.V2.ResourceValue do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :RESOURCE_VALUE_UNSPECIFIED, 0
  field :HIGH, 1
  field :MEDIUM, 2
  field :LOW, 3
  field :NONE, 4
end

defmodule Google.Cloud.Securitycenter.V2.ResourceValueConfig.SensitiveDataProtectionMapping do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :high_sensitivity_mapping, 1,
    type: Google.Cloud.Securitycenter.V2.ResourceValue,
    json_name: "highSensitivityMapping",
    enum: true

  field :medium_sensitivity_mapping, 2,
    type: Google.Cloud.Securitycenter.V2.ResourceValue,
    json_name: "mediumSensitivityMapping",
    enum: true
end

defmodule Google.Cloud.Securitycenter.V2.ResourceValueConfig.ResourceLabelsSelectorEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Securitycenter.V2.ResourceValueConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false

  field :resource_value, 2,
    type: Google.Cloud.Securitycenter.V2.ResourceValue,
    json_name: "resourceValue",
    enum: true

  field :tag_values, 3, repeated: true, type: :string, json_name: "tagValues"
  field :resource_type, 4, type: :string, json_name: "resourceType"
  field :scope, 5, type: :string

  field :resource_labels_selector, 6,
    repeated: true,
    type: Google.Cloud.Securitycenter.V2.ResourceValueConfig.ResourceLabelsSelectorEntry,
    json_name: "resourceLabelsSelector",
    map: true

  field :description, 7, type: :string

  field :create_time, 8,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :update_time, 9,
    type: Google.Protobuf.Timestamp,
    json_name: "updateTime",
    deprecated: false

  field :cloud_provider, 10,
    type: Google.Cloud.Securitycenter.V2.CloudProvider,
    json_name: "cloudProvider",
    enum: true

  field :sensitive_data_protection_mapping, 11,
    type: Google.Cloud.Securitycenter.V2.ResourceValueConfig.SensitiveDataProtectionMapping,
    json_name: "sensitiveDataProtectionMapping"
end
