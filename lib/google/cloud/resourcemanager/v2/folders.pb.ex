defmodule Google.Cloud.Resourcemanager.V2.Folder.LifecycleState do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :LIFECYCLE_STATE_UNSPECIFIED, 0
  field :ACTIVE, 1
  field :DELETE_REQUESTED, 2
end

defmodule Google.Cloud.Resourcemanager.V2.FolderOperation.OperationType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :OPERATION_TYPE_UNSPECIFIED, 0
  field :CREATE, 1
  field :MOVE, 2
end

defmodule Google.Cloud.Resourcemanager.V2.Folder do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :parent, 2, type: :string, deprecated: false
  field :display_name, 3, type: :string, json_name: "displayName"

  field :lifecycle_state, 4,
    type: Google.Cloud.Resourcemanager.V2.Folder.LifecycleState,
    json_name: "lifecycleState",
    enum: true,
    deprecated: false

  field :create_time, 5,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :update_time, 6,
    type: Google.Protobuf.Timestamp,
    json_name: "updateTime",
    deprecated: false
end

defmodule Google.Cloud.Resourcemanager.V2.ListFoldersRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken", deprecated: false
  field :show_deleted, 4, type: :bool, json_name: "showDeleted", deprecated: false
end

defmodule Google.Cloud.Resourcemanager.V2.ListFoldersResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :folders, 1, repeated: true, type: Google.Cloud.Resourcemanager.V2.Folder
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Resourcemanager.V2.SearchFoldersRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :page_size, 1, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 2, type: :string, json_name: "pageToken", deprecated: false
  field :query, 3, type: :string
end

defmodule Google.Cloud.Resourcemanager.V2.SearchFoldersResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :folders, 1, repeated: true, type: Google.Cloud.Resourcemanager.V2.Folder
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Resourcemanager.V2.GetFolderRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Resourcemanager.V2.CreateFolderRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :folder, 2, type: Google.Cloud.Resourcemanager.V2.Folder, deprecated: false
end

defmodule Google.Cloud.Resourcemanager.V2.MoveFolderRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :destination_parent, 2, type: :string, json_name: "destinationParent", deprecated: false
end

defmodule Google.Cloud.Resourcemanager.V2.UpdateFolderRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :folder, 1, type: Google.Cloud.Resourcemanager.V2.Folder, deprecated: false

  field :update_mask, 2,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false
end

defmodule Google.Cloud.Resourcemanager.V2.DeleteFolderRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :recursive_delete, 2, type: :bool, json_name: "recursiveDelete"
end

defmodule Google.Cloud.Resourcemanager.V2.UndeleteFolderRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Resourcemanager.V2.FolderOperation do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :display_name, 1, type: :string, json_name: "displayName"

  field :operation_type, 2,
    type: Google.Cloud.Resourcemanager.V2.FolderOperation.OperationType,
    json_name: "operationType",
    enum: true

  field :source_parent, 3, type: :string, json_name: "sourceParent"
  field :destination_parent, 4, type: :string, json_name: "destinationParent"
end

defmodule Google.Cloud.Resourcemanager.V2.Folders.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.cloud.resourcemanager.v2.Folders",
    protoc_gen_elixir_version: "0.15.0"

  rpc :ListFolders,
      Google.Cloud.Resourcemanager.V2.ListFoldersRequest,
      Google.Cloud.Resourcemanager.V2.ListFoldersResponse

  rpc :SearchFolders,
      Google.Cloud.Resourcemanager.V2.SearchFoldersRequest,
      Google.Cloud.Resourcemanager.V2.SearchFoldersResponse

  rpc :GetFolder,
      Google.Cloud.Resourcemanager.V2.GetFolderRequest,
      Google.Cloud.Resourcemanager.V2.Folder

  rpc :CreateFolder,
      Google.Cloud.Resourcemanager.V2.CreateFolderRequest,
      Google.Longrunning.Operation

  rpc :UpdateFolder,
      Google.Cloud.Resourcemanager.V2.UpdateFolderRequest,
      Google.Cloud.Resourcemanager.V2.Folder

  rpc :MoveFolder, Google.Cloud.Resourcemanager.V2.MoveFolderRequest, Google.Longrunning.Operation

  rpc :DeleteFolder,
      Google.Cloud.Resourcemanager.V2.DeleteFolderRequest,
      Google.Cloud.Resourcemanager.V2.Folder

  rpc :UndeleteFolder,
      Google.Cloud.Resourcemanager.V2.UndeleteFolderRequest,
      Google.Cloud.Resourcemanager.V2.Folder

  rpc :GetIamPolicy, Google.Iam.V1.GetIamPolicyRequest, Google.Iam.V1.Policy

  rpc :SetIamPolicy, Google.Iam.V1.SetIamPolicyRequest, Google.Iam.V1.Policy

  rpc :TestIamPermissions,
      Google.Iam.V1.TestIamPermissionsRequest,
      Google.Iam.V1.TestIamPermissionsResponse
end

defmodule Google.Cloud.Resourcemanager.V2.Folders.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Cloud.Resourcemanager.V2.Folders.Service
end
