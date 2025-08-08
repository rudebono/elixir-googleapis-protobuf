defmodule Google.Cloud.Aiplatform.V1beta1.Memory.ScopeEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Aiplatform.V1beta1.Memory do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :expiration, 0

  field :expire_time, 13,
    type: Google.Protobuf.Timestamp,
    json_name: "expireTime",
    oneof: 0,
    deprecated: false

  field :ttl, 14, type: Google.Protobuf.Duration, oneof: 0, deprecated: false
  field :name, 1, type: :string, deprecated: false
  field :display_name, 2, type: :string, json_name: "displayName", deprecated: false
  field :description, 3, type: :string, deprecated: false

  field :create_time, 4,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :update_time, 5,
    type: Google.Protobuf.Timestamp,
    json_name: "updateTime",
    deprecated: false

  field :fact, 10, type: :string, deprecated: false

  field :scope, 11,
    repeated: true,
    type: Google.Cloud.Aiplatform.V1beta1.Memory.ScopeEntry,
    map: true,
    deprecated: false
end
