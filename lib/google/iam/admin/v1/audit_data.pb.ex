defmodule Google.Iam.Admin.V1.AuditData.PermissionDelta do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :added_permissions, 1, repeated: true, type: :string, json_name: "addedPermissions"
  field :removed_permissions, 2, repeated: true, type: :string, json_name: "removedPermissions"
end

defmodule Google.Iam.Admin.V1.AuditData do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :permission_delta, 1,
    type: Google.Iam.Admin.V1.AuditData.PermissionDelta,
    json_name: "permissionDelta"
end
