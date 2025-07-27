defmodule Google.Storage.Control.V2.IntelligenceConfig.EditionConfig do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :EDITION_CONFIG_UNSPECIFIED, 0
  field :INHERIT, 1
  field :DISABLED, 2
  field :STANDARD, 3
  field :TRIAL, 5
end

defmodule Google.Storage.Control.V2.IntelligenceConfig.EffectiveIntelligenceConfig.EffectiveEdition do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :EFFECTIVE_EDITION_UNSPECIFIED, 0
  field :NONE, 1
  field :STANDARD, 2
end

defmodule Google.Storage.Control.V2.PendingRenameInfo do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :operation, 1, type: :string, deprecated: false
end

defmodule Google.Storage.Control.V2.Folder do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

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

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

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

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :folder, 2, type: Google.Storage.Control.V2.Folder, deprecated: false
  field :folder_id, 3, type: :string, json_name: "folderId", deprecated: false
  field :recursive, 4, type: :bool, deprecated: false
  field :request_id, 5, type: :string, json_name: "requestId", deprecated: false
end

defmodule Google.Storage.Control.V2.DeleteFolderRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

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

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

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

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :folders, 1, repeated: true, type: Google.Storage.Control.V2.Folder
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Storage.Control.V2.RenameFolderRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

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

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

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

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :common_metadata, 1,
    type: Google.Storage.Control.V2.CommonLongRunningOperationMetadata,
    json_name: "commonMetadata"

  field :source_folder_id, 2, type: :string, json_name: "sourceFolderId"
  field :destination_folder_id, 3, type: :string, json_name: "destinationFolderId"
end

defmodule Google.Storage.Control.V2.StorageLayout.CustomPlacementConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :data_locations, 1, repeated: true, type: :string, json_name: "dataLocations"
end

defmodule Google.Storage.Control.V2.StorageLayout.HierarchicalNamespace do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :enabled, 1, type: :bool
end

defmodule Google.Storage.Control.V2.StorageLayout do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

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

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :prefix, 2, type: :string
  field :request_id, 3, type: :string, json_name: "requestId", deprecated: false
end

defmodule Google.Storage.Control.V2.ManagedFolder do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

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
end

defmodule Google.Storage.Control.V2.GetManagedFolderRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

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

defmodule Google.Storage.Control.V2.CreateManagedFolderRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false

  field :managed_folder, 2,
    type: Google.Storage.Control.V2.ManagedFolder,
    json_name: "managedFolder",
    deprecated: false

  field :managed_folder_id, 3, type: :string, json_name: "managedFolderId", deprecated: false
  field :request_id, 4, type: :string, json_name: "requestId", deprecated: false
end

defmodule Google.Storage.Control.V2.DeleteManagedFolderRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 7, type: :string, deprecated: false

  field :if_metageneration_match, 3,
    proto3_optional: true,
    type: :int64,
    json_name: "ifMetagenerationMatch"

  field :if_metageneration_not_match, 4,
    proto3_optional: true,
    type: :int64,
    json_name: "ifMetagenerationNotMatch"

  field :allow_non_empty, 5, type: :bool, json_name: "allowNonEmpty"
  field :request_id, 6, type: :string, json_name: "requestId", deprecated: false
end

defmodule Google.Storage.Control.V2.ListManagedFoldersRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken", deprecated: false
  field :prefix, 4, type: :string, deprecated: false
  field :request_id, 5, type: :string, json_name: "requestId", deprecated: false
end

defmodule Google.Storage.Control.V2.ListManagedFoldersResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :managed_folders, 1,
    repeated: true,
    type: Google.Storage.Control.V2.ManagedFolder,
    json_name: "managedFolders"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Storage.Control.V2.CreateAnywhereCacheMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :common_metadata, 1,
    type: Google.Storage.Control.V2.CommonLongRunningOperationMetadata,
    json_name: "commonMetadata"

  field :anywhere_cache_id, 2, proto3_optional: true, type: :string, json_name: "anywhereCacheId"
  field :zone, 6, proto3_optional: true, type: :string
  field :ttl, 3, proto3_optional: true, type: Google.Protobuf.Duration
  field :admission_policy, 5, proto3_optional: true, type: :string, json_name: "admissionPolicy"
end

defmodule Google.Storage.Control.V2.UpdateAnywhereCacheMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :common_metadata, 1,
    type: Google.Storage.Control.V2.CommonLongRunningOperationMetadata,
    json_name: "commonMetadata"

  field :anywhere_cache_id, 2, proto3_optional: true, type: :string, json_name: "anywhereCacheId"
  field :zone, 5, proto3_optional: true, type: :string
  field :ttl, 3, proto3_optional: true, type: Google.Protobuf.Duration
  field :admission_policy, 4, proto3_optional: true, type: :string, json_name: "admissionPolicy"
end

defmodule Google.Storage.Control.V2.AnywhereCache do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :zone, 10, type: :string, deprecated: false
  field :ttl, 3, type: Google.Protobuf.Duration
  field :admission_policy, 9, type: :string, json_name: "admissionPolicy"
  field :state, 5, type: :string, deprecated: false

  field :create_time, 6,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :update_time, 7,
    type: Google.Protobuf.Timestamp,
    json_name: "updateTime",
    deprecated: false

  field :pending_update, 8, type: :bool, json_name: "pendingUpdate", deprecated: false
end

defmodule Google.Storage.Control.V2.CreateAnywhereCacheRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false

  field :anywhere_cache, 3,
    type: Google.Storage.Control.V2.AnywhereCache,
    json_name: "anywhereCache",
    deprecated: false

  field :request_id, 4, type: :string, json_name: "requestId", deprecated: false
end

defmodule Google.Storage.Control.V2.UpdateAnywhereCacheRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :anywhere_cache, 1,
    type: Google.Storage.Control.V2.AnywhereCache,
    json_name: "anywhereCache",
    deprecated: false

  field :update_mask, 2,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false

  field :request_id, 3, type: :string, json_name: "requestId", deprecated: false
end

defmodule Google.Storage.Control.V2.DisableAnywhereCacheRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :request_id, 2, type: :string, json_name: "requestId", deprecated: false
end

defmodule Google.Storage.Control.V2.PauseAnywhereCacheRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :request_id, 2, type: :string, json_name: "requestId", deprecated: false
end

defmodule Google.Storage.Control.V2.ResumeAnywhereCacheRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :request_id, 2, type: :string, json_name: "requestId", deprecated: false
end

defmodule Google.Storage.Control.V2.GetAnywhereCacheRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :request_id, 2, type: :string, json_name: "requestId", deprecated: false
end

defmodule Google.Storage.Control.V2.ListAnywhereCachesRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
  field :request_id, 4, type: :string, json_name: "requestId", deprecated: false
end

defmodule Google.Storage.Control.V2.ListAnywhereCachesResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :anywhere_caches, 1,
    repeated: true,
    type: Google.Storage.Control.V2.AnywhereCache,
    json_name: "anywhereCaches"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Storage.Control.V2.IntelligenceConfig.Filter.CloudStorageLocations do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :locations, 1, repeated: true, type: :string, deprecated: false
end

defmodule Google.Storage.Control.V2.IntelligenceConfig.Filter.CloudStorageBuckets do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :bucket_id_regexes, 1,
    repeated: true,
    type: :string,
    json_name: "bucketIdRegexes",
    deprecated: false
end

defmodule Google.Storage.Control.V2.IntelligenceConfig.Filter do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :cloud_storage_locations, 0

  oneof :cloud_storage_buckets, 1

  field :included_cloud_storage_locations, 1,
    type: Google.Storage.Control.V2.IntelligenceConfig.Filter.CloudStorageLocations,
    json_name: "includedCloudStorageLocations",
    oneof: 0

  field :excluded_cloud_storage_locations, 2,
    type: Google.Storage.Control.V2.IntelligenceConfig.Filter.CloudStorageLocations,
    json_name: "excludedCloudStorageLocations",
    oneof: 0

  field :included_cloud_storage_buckets, 3,
    type: Google.Storage.Control.V2.IntelligenceConfig.Filter.CloudStorageBuckets,
    json_name: "includedCloudStorageBuckets",
    oneof: 1

  field :excluded_cloud_storage_buckets, 4,
    type: Google.Storage.Control.V2.IntelligenceConfig.Filter.CloudStorageBuckets,
    json_name: "excludedCloudStorageBuckets",
    oneof: 1
end

defmodule Google.Storage.Control.V2.IntelligenceConfig.EffectiveIntelligenceConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :effective_edition, 1,
    type:
      Google.Storage.Control.V2.IntelligenceConfig.EffectiveIntelligenceConfig.EffectiveEdition,
    json_name: "effectiveEdition",
    enum: true,
    deprecated: false

  field :intelligence_config, 2, type: :string, json_name: "intelligenceConfig", deprecated: false
end

defmodule Google.Storage.Control.V2.IntelligenceConfig.TrialConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :expire_time, 3,
    type: Google.Protobuf.Timestamp,
    json_name: "expireTime",
    deprecated: false
end

defmodule Google.Storage.Control.V2.IntelligenceConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false

  field :edition_config, 2,
    type: Google.Storage.Control.V2.IntelligenceConfig.EditionConfig,
    json_name: "editionConfig",
    enum: true,
    deprecated: false

  field :update_time, 3,
    type: Google.Protobuf.Timestamp,
    json_name: "updateTime",
    deprecated: false

  field :filter, 4, type: Google.Storage.Control.V2.IntelligenceConfig.Filter, deprecated: false

  field :effective_intelligence_config, 5,
    type: Google.Storage.Control.V2.IntelligenceConfig.EffectiveIntelligenceConfig,
    json_name: "effectiveIntelligenceConfig",
    deprecated: false

  field :trial_config, 7,
    type: Google.Storage.Control.V2.IntelligenceConfig.TrialConfig,
    json_name: "trialConfig"
end

defmodule Google.Storage.Control.V2.UpdateOrganizationIntelligenceConfigRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :intelligence_config, 1,
    type: Google.Storage.Control.V2.IntelligenceConfig,
    json_name: "intelligenceConfig",
    deprecated: false

  field :update_mask, 2,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false

  field :request_id, 3, type: :string, json_name: "requestId", deprecated: false
end

defmodule Google.Storage.Control.V2.UpdateFolderIntelligenceConfigRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :intelligence_config, 1,
    type: Google.Storage.Control.V2.IntelligenceConfig,
    json_name: "intelligenceConfig",
    deprecated: false

  field :update_mask, 2,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false

  field :request_id, 3, type: :string, json_name: "requestId", deprecated: false
end

defmodule Google.Storage.Control.V2.UpdateProjectIntelligenceConfigRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :intelligence_config, 1,
    type: Google.Storage.Control.V2.IntelligenceConfig,
    json_name: "intelligenceConfig",
    deprecated: false

  field :update_mask, 2,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false

  field :request_id, 3, type: :string, json_name: "requestId", deprecated: false
end

defmodule Google.Storage.Control.V2.GetOrganizationIntelligenceConfigRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Storage.Control.V2.GetFolderIntelligenceConfigRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Storage.Control.V2.GetProjectIntelligenceConfigRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Storage.Control.V2.StorageControl.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.storage.control.v2.StorageControl",
    protoc_gen_elixir_version: "0.15.0"

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

  rpc :CreateManagedFolder,
      Google.Storage.Control.V2.CreateManagedFolderRequest,
      Google.Storage.Control.V2.ManagedFolder

  rpc :DeleteManagedFolder,
      Google.Storage.Control.V2.DeleteManagedFolderRequest,
      Google.Protobuf.Empty

  rpc :GetManagedFolder,
      Google.Storage.Control.V2.GetManagedFolderRequest,
      Google.Storage.Control.V2.ManagedFolder

  rpc :ListManagedFolders,
      Google.Storage.Control.V2.ListManagedFoldersRequest,
      Google.Storage.Control.V2.ListManagedFoldersResponse

  rpc :CreateAnywhereCache,
      Google.Storage.Control.V2.CreateAnywhereCacheRequest,
      Google.Longrunning.Operation

  rpc :UpdateAnywhereCache,
      Google.Storage.Control.V2.UpdateAnywhereCacheRequest,
      Google.Longrunning.Operation

  rpc :DisableAnywhereCache,
      Google.Storage.Control.V2.DisableAnywhereCacheRequest,
      Google.Storage.Control.V2.AnywhereCache

  rpc :PauseAnywhereCache,
      Google.Storage.Control.V2.PauseAnywhereCacheRequest,
      Google.Storage.Control.V2.AnywhereCache

  rpc :ResumeAnywhereCache,
      Google.Storage.Control.V2.ResumeAnywhereCacheRequest,
      Google.Storage.Control.V2.AnywhereCache

  rpc :GetAnywhereCache,
      Google.Storage.Control.V2.GetAnywhereCacheRequest,
      Google.Storage.Control.V2.AnywhereCache

  rpc :ListAnywhereCaches,
      Google.Storage.Control.V2.ListAnywhereCachesRequest,
      Google.Storage.Control.V2.ListAnywhereCachesResponse

  rpc :GetProjectIntelligenceConfig,
      Google.Storage.Control.V2.GetProjectIntelligenceConfigRequest,
      Google.Storage.Control.V2.IntelligenceConfig

  rpc :UpdateProjectIntelligenceConfig,
      Google.Storage.Control.V2.UpdateProjectIntelligenceConfigRequest,
      Google.Storage.Control.V2.IntelligenceConfig

  rpc :GetFolderIntelligenceConfig,
      Google.Storage.Control.V2.GetFolderIntelligenceConfigRequest,
      Google.Storage.Control.V2.IntelligenceConfig

  rpc :UpdateFolderIntelligenceConfig,
      Google.Storage.Control.V2.UpdateFolderIntelligenceConfigRequest,
      Google.Storage.Control.V2.IntelligenceConfig

  rpc :GetOrganizationIntelligenceConfig,
      Google.Storage.Control.V2.GetOrganizationIntelligenceConfigRequest,
      Google.Storage.Control.V2.IntelligenceConfig

  rpc :UpdateOrganizationIntelligenceConfig,
      Google.Storage.Control.V2.UpdateOrganizationIntelligenceConfigRequest,
      Google.Storage.Control.V2.IntelligenceConfig
end

defmodule Google.Storage.Control.V2.StorageControl.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Storage.Control.V2.StorageControl.Service
end
