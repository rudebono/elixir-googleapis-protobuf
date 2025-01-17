defmodule Google.Cloud.Resourcemanager.V3.Folder.State do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :STATE_UNSPECIFIED, 0
  field :ACTIVE, 1
  field :DELETE_REQUESTED, 2
end

defmodule Google.Cloud.Resourcemanager.V3.Folder do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :parent, 2, type: :string, deprecated: false
  field :display_name, 3, type: :string, json_name: "displayName"

  field :state, 4,
    type: Google.Cloud.Resourcemanager.V3.Folder.State,
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

  field :delete_time, 7,
    type: Google.Protobuf.Timestamp,
    json_name: "deleteTime",
    deprecated: false

  field :etag, 8, type: :string, deprecated: false
end

defmodule Google.Cloud.Resourcemanager.V3.GetFolderRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Resourcemanager.V3.ListFoldersRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken", deprecated: false
  field :show_deleted, 4, type: :bool, json_name: "showDeleted", deprecated: false
end

defmodule Google.Cloud.Resourcemanager.V3.ListFoldersResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :folders, 1, repeated: true, type: Google.Cloud.Resourcemanager.V3.Folder
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Resourcemanager.V3.SearchFoldersRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :page_size, 1, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 2, type: :string, json_name: "pageToken", deprecated: false
  field :query, 3, type: :string, deprecated: false
end

defmodule Google.Cloud.Resourcemanager.V3.SearchFoldersResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :folders, 1, repeated: true, type: Google.Cloud.Resourcemanager.V3.Folder
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Resourcemanager.V3.CreateFolderRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :folder, 2, type: Google.Cloud.Resourcemanager.V3.Folder, deprecated: false
end

defmodule Google.Cloud.Resourcemanager.V3.CreateFolderMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :display_name, 1, type: :string, json_name: "displayName"
  field :parent, 2, type: :string
end

defmodule Google.Cloud.Resourcemanager.V3.UpdateFolderRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :folder, 1, type: Google.Cloud.Resourcemanager.V3.Folder, deprecated: false

  field :update_mask, 2,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false
end

defmodule Google.Cloud.Resourcemanager.V3.UpdateFolderMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3
end

defmodule Google.Cloud.Resourcemanager.V3.MoveFolderRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :destination_parent, 2, type: :string, json_name: "destinationParent", deprecated: false
end

defmodule Google.Cloud.Resourcemanager.V3.MoveFolderMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :display_name, 1, type: :string, json_name: "displayName"
  field :source_parent, 2, type: :string, json_name: "sourceParent"
  field :destination_parent, 3, type: :string, json_name: "destinationParent"
end

defmodule Google.Cloud.Resourcemanager.V3.DeleteFolderRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Resourcemanager.V3.DeleteFolderMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3
end

defmodule Google.Cloud.Resourcemanager.V3.UndeleteFolderRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Resourcemanager.V3.UndeleteFolderMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3
end

defmodule Google.Cloud.Resourcemanager.V3.Folders.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.cloud.resourcemanager.v3.Folders",
    protoc_gen_elixir_version: "0.14.0"

  rpc :GetFolder,
      Google.Cloud.Resourcemanager.V3.GetFolderRequest,
      Google.Cloud.Resourcemanager.V3.Folder

  rpc :ListFolders,
      Google.Cloud.Resourcemanager.V3.ListFoldersRequest,
      Google.Cloud.Resourcemanager.V3.ListFoldersResponse

  rpc :SearchFolders,
      Google.Cloud.Resourcemanager.V3.SearchFoldersRequest,
      Google.Cloud.Resourcemanager.V3.SearchFoldersResponse

  rpc :CreateFolder,
      Google.Cloud.Resourcemanager.V3.CreateFolderRequest,
      Google.Longrunning.Operation

  rpc :UpdateFolder,
      Google.Cloud.Resourcemanager.V3.UpdateFolderRequest,
      Google.Longrunning.Operation

  rpc :MoveFolder, Google.Cloud.Resourcemanager.V3.MoveFolderRequest, Google.Longrunning.Operation

  rpc :DeleteFolder,
      Google.Cloud.Resourcemanager.V3.DeleteFolderRequest,
      Google.Longrunning.Operation

  rpc :UndeleteFolder,
      Google.Cloud.Resourcemanager.V3.UndeleteFolderRequest,
      Google.Longrunning.Operation

  rpc :GetIamPolicy, Google.Iam.V1.GetIamPolicyRequest, Google.Iam.V1.Policy

  rpc :SetIamPolicy, Google.Iam.V1.SetIamPolicyRequest, Google.Iam.V1.Policy

  rpc :TestIamPermissions,
      Google.Iam.V1.TestIamPermissionsRequest,
      Google.Iam.V1.TestIamPermissionsResponse
end

defmodule Google.Cloud.Resourcemanager.V3.Folders.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Cloud.Resourcemanager.V3.Folders.Service
end
