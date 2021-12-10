defmodule Google.Iam.Admin.V1.AuditData.PermissionDelta do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          added_permissions: [String.t()],
          removed_permissions: [String.t()]
        }

  defstruct added_permissions: [],
            removed_permissions: []

  field :added_permissions, 1, repeated: true, type: :string, json_name: "addedPermissions"
  field :removed_permissions, 2, repeated: true, type: :string, json_name: "removedPermissions"
end
defmodule Google.Iam.Admin.V1.AuditData do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          permission_delta: Google.Iam.Admin.V1.AuditData.PermissionDelta.t() | nil
        }

  defstruct permission_delta: nil

  field :permission_delta, 1,
    type: Google.Iam.Admin.V1.AuditData.PermissionDelta,
    json_name: "permissionDelta"
end
