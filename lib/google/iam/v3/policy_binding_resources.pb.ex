defmodule Google.Iam.V3.PolicyBinding.PolicyKind do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :POLICY_KIND_UNSPECIFIED, 0
  field :PRINCIPAL_ACCESS_BOUNDARY, 1
end

defmodule Google.Iam.V3.PolicyBinding.Target do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  oneof :target, 0

  field :principal_set, 1, type: :string, json_name: "principalSet", oneof: 0, deprecated: false
end

defmodule Google.Iam.V3.PolicyBinding.AnnotationsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Iam.V3.PolicyBinding do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :uid, 2, type: :string, deprecated: false
  field :etag, 3, type: :string, deprecated: false
  field :display_name, 4, type: :string, json_name: "displayName", deprecated: false

  field :annotations, 5,
    repeated: true,
    type: Google.Iam.V3.PolicyBinding.AnnotationsEntry,
    map: true,
    deprecated: false

  field :target, 6, type: Google.Iam.V3.PolicyBinding.Target, deprecated: false

  field :policy_kind, 11,
    type: Google.Iam.V3.PolicyBinding.PolicyKind,
    json_name: "policyKind",
    enum: true,
    deprecated: false

  field :policy, 7, type: :string, deprecated: false
  field :policy_uid, 12, type: :string, json_name: "policyUid", deprecated: false
  field :condition, 8, type: Google.Type.Expr, deprecated: false

  field :create_time, 9,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :update_time, 10,
    type: Google.Protobuf.Timestamp,
    json_name: "updateTime",
    deprecated: false
end
