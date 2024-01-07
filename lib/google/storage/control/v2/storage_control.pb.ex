defmodule Google.Storage.Control.V2.PendingRenameInfo do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :operation, 1, type: :string, deprecated: false
end

defmodule Google.Storage.Control.V2.Folder do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :metageneration, 3, type: :int64, deprecated: false

  field :create_time, 4,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :update_time, 5,
    type: Google.Protobuf.Timestamp,
    json_name: "updateTime",
    deprecated: false

  field :pending_rename_info, 7,
    type: Google.Storage.Control.V2.PendingRenameInfo,
    json_name: "pendingRenameInfo",
    deprecated: false
end

defmodule Google.Storage.Control.V2.GetFolderRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 6, type: :string, deprecated: false

  field :if_metageneration_match, 3,
    proto3_optional: true,
    type: :int64,
    json_name: "ifMetagenerationMatch"

  field :if_metageneration_not_match, 4,
    proto3_optional: true,
    type: :int64,
    json_name: "ifMetagenerationNotMatch"

  field :request_id, 5, type: :string, json_name: "requestId", deprecated: false
end

defmodule Google.Storage.Control.V2.CreateFolderRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :folder, 2, type: Google.Storage.Control.V2.Folder, deprecated: false
  field :folder_id, 3, type: :string, json_name: "folderId", deprecated: false
  field :recursive, 4, type: :bool, deprecated: false
  field :request_id, 5, type: :string, json_name: "requestId", deprecated: false
end

defmodule Google.Storage.Control.V2.DeleteFolderRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 6, type: :string, deprecated: false

  field :if_metageneration_match, 3,
    proto3_optional: true,
    type: :int64,
    json_name: "ifMetagenerationMatch"

  field :if_metageneration_not_match, 4,
    proto3_optional: true,
    type: :int64,
    json_name: "ifMetagenerationNotMatch"

  field :request_id, 5, type: :string, json_name: "requestId", deprecated: false
end

defmodule Google.Storage.Control.V2.ListFoldersRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken", deprecated: false
  field :prefix, 4, type: :string, deprecated: false
  field :delimiter, 8, type: :string, deprecated: false
  field :lexicographic_start, 6, type: :string, json_name: "lexicographicStart", deprecated: false
  field :lexicographic_end, 7, type: :string, json_name: "lexicographicEnd", deprecated: false
  field :request_id, 9, type: :string, json_name: "requestId", deprecated: false
end

defmodule Google.Storage.Control.V2.ListFoldersResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :folders, 1, repeated: true, type: Google.Storage.Control.V2.Folder
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Storage.Control.V2.RenameFolderRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 7, type: :string, deprecated: false

  field :destination_folder_id, 8,
    type: :string,
    json_name: "destinationFolderId",
    deprecated: false

  field :if_metageneration_match, 4,
    proto3_optional: true,
    type: :int64,
    json_name: "ifMetagenerationMatch"

  field :if_metageneration_not_match, 5,
    proto3_optional: true,
    type: :int64,
    json_name: "ifMetagenerationNotMatch"

  field :request_id, 6, type: :string, json_name: "requestId", deprecated: false
end

defmodule Google.Storage.Control.V2.CommonLongRunningOperationMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :create_time, 1,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :end_time, 2, type: Google.Protobuf.Timestamp, json_name: "endTime", deprecated: false

  field :update_time, 3,
    type: Google.Protobuf.Timestamp,
    json_name: "updateTime",
    deprecated: false

  field :type, 4, type: :string, deprecated: false

  field :requested_cancellation, 5,
    type: :bool,
    json_name: "requestedCancellation",
    deprecated: false

  field :progress_percent, 6, type: :int32, json_name: "progressPercent", deprecated: false
end

defmodule Google.Storage.Control.V2.RenameFolderMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :common_metadata, 1,
    type: Google.Storage.Control.V2.CommonLongRunningOperationMetadata,
    json_name: "commonMetadata"

  field :source_folder_id, 2, type: :string, json_name: "sourceFolderId"
  field :destination_folder_id, 3, type: :string, json_name: "destinationFolderId"
end

defmodule Google.Storage.Control.V2.StorageLayout.CustomPlacementConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :data_locations, 1, repeated: true, type: :string, json_name: "dataLocations"
end

defmodule Google.Storage.Control.V2.StorageLayout.HierarchicalNamespace do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :enabled, 1, type: :bool
end

defmodule Google.Storage.Control.V2.StorageLayout do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :location, 2, type: :string, deprecated: false
  field :location_type, 3, type: :string, json_name: "locationType", deprecated: false

  field :custom_placement_config, 4,
    type: Google.Storage.Control.V2.StorageLayout.CustomPlacementConfig,
    json_name: "customPlacementConfig",
    deprecated: false

  field :hierarchical_namespace, 5,
    type: Google.Storage.Control.V2.StorageLayout.HierarchicalNamespace,
    json_name: "hierarchicalNamespace",
    deprecated: false
end

defmodule Google.Storage.Control.V2.GetStorageLayoutRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :prefix, 2, type: :string
  field :request_id, 3, type: :string, json_name: "requestId", deprecated: false
end

defmodule Google.Storage.Control.V2.StorageControl.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.storage.control.v2.StorageControl",
    protoc_gen_elixir_version: "0.12.0"

  rpc :CreateFolder,
      Google.Storage.Control.V2.CreateFolderRequest,
      Google.Storage.Control.V2.Folder

  rpc :DeleteFolder, Google.Storage.Control.V2.DeleteFolderRequest, Google.Protobuf.Empty

  rpc :GetFolder, Google.Storage.Control.V2.GetFolderRequest, Google.Storage.Control.V2.Folder

  rpc :ListFolders,
      Google.Storage.Control.V2.ListFoldersRequest,
      Google.Storage.Control.V2.ListFoldersResponse

  rpc :RenameFolder, Google.Storage.Control.V2.RenameFolderRequest, Google.Longrunning.Operation

  rpc :GetStorageLayout,
      Google.Storage.Control.V2.GetStorageLayoutRequest,
      Google.Storage.Control.V2.StorageLayout
end

defmodule Google.Storage.Control.V2.StorageControl.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Storage.Control.V2.StorageControl.Service
end