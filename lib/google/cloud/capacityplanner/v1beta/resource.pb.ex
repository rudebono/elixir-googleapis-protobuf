defmodule Google.Cloud.Capacityplanner.V1beta.Unit do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :UNIT_UNSPECIFIED, 0
  field :UNIT_COUNT, 1
  field :KB, 2
  field :GB, 3
  field :TB, 4
  field :MIB, 17
  field :GIB, 5
  field :TIB, 6
  field :QPS, 7
  field :MB, 8
  field :PIB, 9
  field :TBPS, 10
  field :GBPS_BITS, 11
  field :GIB_BITS, 12
  field :MBPS_BITS, 13
  field :MBPS_BYTES, 14
  field :TBPS_BITS, 15
  field :TBPS_BYTES, 16
  field :KOPS, 18
end

defmodule Google.Cloud.Capacityplanner.V1beta.ResourceContainer.Type do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :TYPE_UNSPECIFIED, 0
  field :PROJECT, 1
  field :FOLDER, 2
  field :ORG, 3
end

defmodule Google.Cloud.Capacityplanner.V1beta.ResourceContainer do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :type, 1, type: Google.Cloud.Capacityplanner.V1beta.ResourceContainer.Type, enum: true
  field :id, 2, type: :string, deprecated: false
end

defmodule Google.Cloud.Capacityplanner.V1beta.ResourceIdKey do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :demand_fields, 0

  field :resource_code, 2, type: :string, json_name: "resourceCode", oneof: 0, deprecated: false

  field :resource_id, 1,
    type: Google.Cloud.Capacityplanner.V1beta.ResourceIdentifier,
    json_name: "resourceId",
    deprecated: false
end

defmodule Google.Cloud.Capacityplanner.V1beta.ResourceIdentifier do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :service_name, 1, type: :string, json_name: "serviceName"
  field :resource_name, 2, type: :string, json_name: "resourceName"

  field :resource_attributes, 3,
    repeated: true,
    type: Google.Cloud.Capacityplanner.V1beta.ResourceAttribute,
    json_name: "resourceAttributes"
end

defmodule Google.Cloud.Capacityplanner.V1beta.ResourceAttribute do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: Google.Cloud.Capacityplanner.V1beta.ResourceValue
end

defmodule Google.Cloud.Capacityplanner.V1beta.ResourceValue do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :unit, 1, type: Google.Cloud.Capacityplanner.V1beta.Unit, enum: true
  field :value, 2, type: Google.Cloud.Capacityplanner.V1beta.Value
end

defmodule Google.Cloud.Capacityplanner.V1beta.Value do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :value, 0

  field :int64_value, 1, type: :int64, json_name: "int64Value", oneof: 0
  field :string_value, 2, type: :string, json_name: "stringValue", oneof: 0
  field :double_value, 3, type: :double, json_name: "doubleValue", oneof: 0
  field :bool_value, 4, type: :bool, json_name: "boolValue", oneof: 0
end
