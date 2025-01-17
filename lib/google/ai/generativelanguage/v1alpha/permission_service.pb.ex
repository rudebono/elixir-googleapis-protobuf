defmodule Google.Ai.Generativelanguage.V1alpha.CreatePermissionRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :permission, 2, type: Google.Ai.Generativelanguage.V1alpha.Permission, deprecated: false
end

defmodule Google.Ai.Generativelanguage.V1alpha.GetPermissionRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Ai.Generativelanguage.V1alpha.ListPermissionsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken", deprecated: false
end

defmodule Google.Ai.Generativelanguage.V1alpha.ListPermissionsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :permissions, 1, repeated: true, type: Google.Ai.Generativelanguage.V1alpha.Permission
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Ai.Generativelanguage.V1alpha.UpdatePermissionRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :permission, 1, type: Google.Ai.Generativelanguage.V1alpha.Permission, deprecated: false

  field :update_mask, 2,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false
end

defmodule Google.Ai.Generativelanguage.V1alpha.DeletePermissionRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Ai.Generativelanguage.V1alpha.TransferOwnershipRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :email_address, 2, type: :string, json_name: "emailAddress", deprecated: false
end

defmodule Google.Ai.Generativelanguage.V1alpha.TransferOwnershipResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3
end

defmodule Google.Ai.Generativelanguage.V1alpha.PermissionService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.ai.generativelanguage.v1alpha.PermissionService",
    protoc_gen_elixir_version: "0.14.0"

  rpc :CreatePermission,
      Google.Ai.Generativelanguage.V1alpha.CreatePermissionRequest,
      Google.Ai.Generativelanguage.V1alpha.Permission

  rpc :GetPermission,
      Google.Ai.Generativelanguage.V1alpha.GetPermissionRequest,
      Google.Ai.Generativelanguage.V1alpha.Permission

  rpc :ListPermissions,
      Google.Ai.Generativelanguage.V1alpha.ListPermissionsRequest,
      Google.Ai.Generativelanguage.V1alpha.ListPermissionsResponse

  rpc :UpdatePermission,
      Google.Ai.Generativelanguage.V1alpha.UpdatePermissionRequest,
      Google.Ai.Generativelanguage.V1alpha.Permission

  rpc :DeletePermission,
      Google.Ai.Generativelanguage.V1alpha.DeletePermissionRequest,
      Google.Protobuf.Empty

  rpc :TransferOwnership,
      Google.Ai.Generativelanguage.V1alpha.TransferOwnershipRequest,
      Google.Ai.Generativelanguage.V1alpha.TransferOwnershipResponse
end

defmodule Google.Ai.Generativelanguage.V1alpha.PermissionService.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Ai.Generativelanguage.V1alpha.PermissionService.Service
end
