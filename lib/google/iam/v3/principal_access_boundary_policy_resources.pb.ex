defmodule Google.Iam.V3.PrincipalAccessBoundaryPolicyRule.Effect do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :EFFECT_UNSPECIFIED, 0
  field :ALLOW, 1
end

defmodule Google.Iam.V3.PrincipalAccessBoundaryPolicy.AnnotationsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Iam.V3.PrincipalAccessBoundaryPolicy do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :uid, 2, type: :string, deprecated: false
  field :etag, 3, type: :string, deprecated: false
  field :display_name, 4, type: :string, json_name: "displayName", deprecated: false

  field :annotations, 5,
    repeated: true,
    type: Google.Iam.V3.PrincipalAccessBoundaryPolicy.AnnotationsEntry,
    map: true,
    deprecated: false

  field :create_time, 6,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :update_time, 7,
    type: Google.Protobuf.Timestamp,
    json_name: "updateTime",
    deprecated: false

  field :details, 8, type: Google.Iam.V3.PrincipalAccessBoundaryPolicyDetails, deprecated: false
end

defmodule Google.Iam.V3.PrincipalAccessBoundaryPolicyDetails do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :rules, 1,
    repeated: true,
    type: Google.Iam.V3.PrincipalAccessBoundaryPolicyRule,
    deprecated: false

  field :enforcement_version, 4, type: :string, json_name: "enforcementVersion", deprecated: false
end

defmodule Google.Iam.V3.PrincipalAccessBoundaryPolicyRule do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :description, 1, type: :string, deprecated: false
  field :resources, 2, repeated: true, type: :string, deprecated: false

  field :effect, 3,
    type: Google.Iam.V3.PrincipalAccessBoundaryPolicyRule.Effect,
    enum: true,
    deprecated: false
end