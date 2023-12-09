defmodule Google.Ai.Generativelanguage.V1beta.CreatePermissionRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :permission, 2, type: Google.Ai.Generativelanguage.V1beta.Permission, deprecated: false
end

defmodule Google.Ai.Generativelanguage.V1beta.GetPermissionRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Ai.Generativelanguage.V1beta.ListPermissionsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken", deprecated: false
end

defmodule Google.Ai.Generativelanguage.V1beta.ListPermissionsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :permissions, 1, repeated: true, type: Google.Ai.Generativelanguage.V1beta.Permission
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Ai.Generativelanguage.V1beta.UpdatePermissionRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :permission, 1, type: Google.Ai.Generativelanguage.V1beta.Permission, deprecated: false

  field :update_mask, 2,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false
end

defmodule Google.Ai.Generativelanguage.V1beta.DeletePermissionRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Ai.Generativelanguage.V1beta.TransferOwnershipRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :email_address, 2, type: :string, json_name: "emailAddress", deprecated: false
end

defmodule Google.Ai.Generativelanguage.V1beta.TransferOwnershipResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3
end

defmodule Google.Ai.Generativelanguage.V1beta.PermissionService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.ai.generativelanguage.v1beta.PermissionService",
    protoc_gen_elixir_version: "0.12.0"

  rpc :CreatePermission,
      Google.Ai.Generativelanguage.V1beta.CreatePermissionRequest,
      Google.Ai.Generativelanguage.V1beta.Permission

  rpc :GetPermission,
      Google.Ai.Generativelanguage.V1beta.GetPermissionRequest,
      Google.Ai.Generativelanguage.V1beta.Permission

  rpc :ListPermissions,
      Google.Ai.Generativelanguage.V1beta.ListPermissionsRequest,
      Google.Ai.Generativelanguage.V1beta.ListPermissionsResponse

  rpc :UpdatePermission,
      Google.Ai.Generativelanguage.V1beta.UpdatePermissionRequest,
      Google.Ai.Generativelanguage.V1beta.Permission

  rpc :DeletePermission,
      Google.Ai.Generativelanguage.V1beta.DeletePermissionRequest,
      Google.Protobuf.Empty

  rpc :TransferOwnership,
      Google.Ai.Generativelanguage.V1beta.TransferOwnershipRequest,
      Google.Ai.Generativelanguage.V1beta.TransferOwnershipResponse
end

defmodule Google.Ai.Generativelanguage.V1beta.PermissionService.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Ai.Generativelanguage.V1beta.PermissionService.Service
end