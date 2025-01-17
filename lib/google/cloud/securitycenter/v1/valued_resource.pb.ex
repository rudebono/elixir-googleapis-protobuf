defmodule Google.Cloud.Securitycenter.V1.ValuedResource.ResourceValue do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :RESOURCE_VALUE_UNSPECIFIED, 0
  field :RESOURCE_VALUE_LOW, 1
  field :RESOURCE_VALUE_MEDIUM, 2
  field :RESOURCE_VALUE_HIGH, 3
end

defmodule Google.Cloud.Securitycenter.V1.ValuedResource do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :name, 1, type: :string
  field :resource, 2, type: :string
  field :resource_type, 3, type: :string, json_name: "resourceType"
  field :display_name, 4, type: :string, json_name: "displayName"

  field :resource_value, 5,
    type: Google.Cloud.Securitycenter.V1.ValuedResource.ResourceValue,
    json_name: "resourceValue",
    enum: true

  field :exposed_score, 6, type: :double, json_name: "exposedScore"

  field :resource_value_configs_used, 7,
    repeated: true,
    type: Google.Cloud.Securitycenter.V1.ResourceValueConfigMetadata,
    json_name: "resourceValueConfigsUsed"
end

defmodule Google.Cloud.Securitycenter.V1.ResourceValueConfigMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :name, 1, type: :string
end
