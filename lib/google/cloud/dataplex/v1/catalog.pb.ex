defmodule Google.Cloud.Dataplex.V1.EntryView do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :ENTRY_VIEW_UNSPECIFIED, 0
  field :BASIC, 1
  field :FULL, 2
  field :CUSTOM, 3
  field :ALL, 4
end

defmodule Google.Cloud.Dataplex.V1.TransferStatus do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :TRANSFER_STATUS_UNSPECIFIED, 0
  field :TRANSFER_STATUS_MIGRATED, 1
  field :TRANSFER_STATUS_TRANSFERRED, 2
end

defmodule Google.Cloud.Dataplex.V1.MetadataJob.Type do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :TYPE_UNSPECIFIED, 0
  field :IMPORT, 1
end

defmodule Google.Cloud.Dataplex.V1.MetadataJob.ImportJobSpec.SyncMode do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :SYNC_MODE_UNSPECIFIED, 0
  field :FULL, 1
  field :INCREMENTAL, 2
end

defmodule Google.Cloud.Dataplex.V1.MetadataJob.ImportJobSpec.LogLevel do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :LOG_LEVEL_UNSPECIFIED, 0
  field :DEBUG, 1
  field :INFO, 2
end

defmodule Google.Cloud.Dataplex.V1.MetadataJob.Status.State do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :STATE_UNSPECIFIED, 0
  field :QUEUED, 1
  field :RUNNING, 2
  field :CANCELING, 3
  field :CANCELED, 4
  field :SUCCEEDED, 5
  field :FAILED, 6
  field :SUCCEEDED_WITH_ERRORS, 7
end

defmodule Google.Cloud.Dataplex.V1.AspectType.Authorization do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :alternate_use_permission, 1,
    type: :string,
    json_name: "alternateUsePermission",
    deprecated: false
end

defmodule Google.Cloud.Dataplex.V1.AspectType.MetadataTemplate.EnumValue do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :index, 1, type: :int32, deprecated: false
  field :name, 2, type: :string, deprecated: false
  field :deprecated, 3, type: :string, deprecated: false
end

defmodule Google.Cloud.Dataplex.V1.AspectType.MetadataTemplate.Constraints do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :required, 1, type: :bool, deprecated: false
end

defmodule Google.Cloud.Dataplex.V1.AspectType.MetadataTemplate.Annotations do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :deprecated, 1, type: :string, deprecated: false
  field :display_name, 2, type: :string, json_name: "displayName", deprecated: false
  field :description, 3, type: :string, deprecated: false
  field :display_order, 4, type: :int32, json_name: "displayOrder", deprecated: false
  field :string_type, 6, type: :string, json_name: "stringType", deprecated: false

  field :string_values, 7,
    repeated: true,
    type: :string,
    json_name: "stringValues",
    deprecated: false
end

defmodule Google.Cloud.Dataplex.V1.AspectType.MetadataTemplate do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :index, 1, type: :int32, deprecated: false
  field :name, 2, type: :string, deprecated: false
  field :type, 5, type: :string, deprecated: false

  field :record_fields, 6,
    repeated: true,
    type: Google.Cloud.Dataplex.V1.AspectType.MetadataTemplate,
    json_name: "recordFields",
    deprecated: false

  field :enum_values, 8,
    repeated: true,
    type: Google.Cloud.Dataplex.V1.AspectType.MetadataTemplate.EnumValue,
    json_name: "enumValues",
    deprecated: false

  field :map_items, 10,
    type: Google.Cloud.Dataplex.V1.AspectType.MetadataTemplate,
    json_name: "mapItems",
    deprecated: false

  field :array_items, 11,
    type: Google.Cloud.Dataplex.V1.AspectType.MetadataTemplate,
    json_name: "arrayItems",
    deprecated: false

  field :type_id, 12, type: :string, json_name: "typeId", deprecated: false
  field :type_ref, 13, type: :string, json_name: "typeRef", deprecated: false

  field :constraints, 50,
    type: Google.Cloud.Dataplex.V1.AspectType.MetadataTemplate.Constraints,
    deprecated: false

  field :annotations, 51,
    type: Google.Cloud.Dataplex.V1.AspectType.MetadataTemplate.Annotations,
    deprecated: false
end

defmodule Google.Cloud.Dataplex.V1.AspectType.LabelsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Dataplex.V1.AspectType do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :uid, 2, type: :string, deprecated: false

  field :create_time, 3,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :update_time, 4,
    type: Google.Protobuf.Timestamp,
    json_name: "updateTime",
    deprecated: false

  field :description, 5, type: :string, deprecated: false
  field :display_name, 6, type: :string, json_name: "displayName", deprecated: false

  field :labels, 7,
    repeated: true,
    type: Google.Cloud.Dataplex.V1.AspectType.LabelsEntry,
    map: true,
    deprecated: false

  field :etag, 8, type: :string

  field :authorization, 52,
    type: Google.Cloud.Dataplex.V1.AspectType.Authorization,
    deprecated: false

  field :metadata_template, 53,
    type: Google.Cloud.Dataplex.V1.AspectType.MetadataTemplate,
    json_name: "metadataTemplate",
    deprecated: false

  field :transfer_status, 202,
    type: Google.Cloud.Dataplex.V1.TransferStatus,
    json_name: "transferStatus",
    enum: true,
    deprecated: false
end

defmodule Google.Cloud.Dataplex.V1.EntryGroup.LabelsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Dataplex.V1.EntryGroup do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :uid, 2, type: :string, deprecated: false

  field :create_time, 3,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :update_time, 4,
    type: Google.Protobuf.Timestamp,
    json_name: "updateTime",
    deprecated: false

  field :description, 5, type: :string, deprecated: false
  field :display_name, 6, type: :string, json_name: "displayName", deprecated: false

  field :labels, 7,
    repeated: true,
    type: Google.Cloud.Dataplex.V1.EntryGroup.LabelsEntry,
    map: true,
    deprecated: false

  field :etag, 8, type: :string

  field :transfer_status, 202,
    type: Google.Cloud.Dataplex.V1.TransferStatus,
    json_name: "transferStatus",
    enum: true,
    deprecated: false
end

defmodule Google.Cloud.Dataplex.V1.EntryType.AspectInfo do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :type, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Dataplex.V1.EntryType.Authorization do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :alternate_use_permission, 1,
    type: :string,
    json_name: "alternateUsePermission",
    deprecated: false
end

defmodule Google.Cloud.Dataplex.V1.EntryType.LabelsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Dataplex.V1.EntryType do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :uid, 2, type: :string, deprecated: false

  field :create_time, 3,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :update_time, 4,
    type: Google.Protobuf.Timestamp,
    json_name: "updateTime",
    deprecated: false

  field :description, 5, type: :string, deprecated: false
  field :display_name, 6, type: :string, json_name: "displayName", deprecated: false

  field :labels, 7,
    repeated: true,
    type: Google.Cloud.Dataplex.V1.EntryType.LabelsEntry,
    map: true,
    deprecated: false

  field :etag, 8, type: :string, deprecated: false

  field :type_aliases, 9,
    repeated: true,
    type: :string,
    json_name: "typeAliases",
    deprecated: false

  field :platform, 10, type: :string, deprecated: false
  field :system, 11, type: :string, deprecated: false

  field :required_aspects, 50,
    repeated: true,
    type: Google.Cloud.Dataplex.V1.EntryType.AspectInfo,
    json_name: "requiredAspects"

  field :authorization, 51,
    type: Google.Cloud.Dataplex.V1.EntryType.Authorization,
    deprecated: false
end

defmodule Google.Cloud.Dataplex.V1.Aspect do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :aspect_type, 1, type: :string, json_name: "aspectType", deprecated: false
  field :path, 2, type: :string, deprecated: false

  field :create_time, 3,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :update_time, 4,
    type: Google.Protobuf.Timestamp,
    json_name: "updateTime",
    deprecated: false

  field :data, 8, type: Google.Protobuf.Struct, deprecated: false

  field :aspect_source, 9,
    type: Google.Cloud.Dataplex.V1.AspectSource,
    json_name: "aspectSource",
    deprecated: false
end

defmodule Google.Cloud.Dataplex.V1.AspectSource do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :create_time, 10, type: Google.Protobuf.Timestamp, json_name: "createTime"
  field :update_time, 11, type: Google.Protobuf.Timestamp, json_name: "updateTime"
  field :data_version, 12, type: :string, json_name: "dataVersion"
end

defmodule Google.Cloud.Dataplex.V1.Entry.AspectsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: Google.Cloud.Dataplex.V1.Aspect
end

defmodule Google.Cloud.Dataplex.V1.Entry do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :entry_type, 4, type: :string, json_name: "entryType", deprecated: false

  field :create_time, 5,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :update_time, 6,
    type: Google.Protobuf.Timestamp,
    json_name: "updateTime",
    deprecated: false

  field :aspects, 9,
    repeated: true,
    type: Google.Cloud.Dataplex.V1.Entry.AspectsEntry,
    map: true,
    deprecated: false

  field :parent_entry, 10, type: :string, json_name: "parentEntry", deprecated: false

  field :fully_qualified_name, 12,
    type: :string,
    json_name: "fullyQualifiedName",
    deprecated: false

  field :entry_source, 15,
    type: Google.Cloud.Dataplex.V1.EntrySource,
    json_name: "entrySource",
    deprecated: false
end

defmodule Google.Cloud.Dataplex.V1.EntrySource.Ancestor do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :type, 2, type: :string, deprecated: false
end

defmodule Google.Cloud.Dataplex.V1.EntrySource.LabelsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Dataplex.V1.EntrySource do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :resource, 1, type: :string
  field :system, 2, type: :string
  field :platform, 3, type: :string
  field :display_name, 5, type: :string, json_name: "displayName"
  field :description, 6, type: :string

  field :labels, 7,
    repeated: true,
    type: Google.Cloud.Dataplex.V1.EntrySource.LabelsEntry,
    map: true

  field :ancestors, 9,
    repeated: true,
    type: Google.Cloud.Dataplex.V1.EntrySource.Ancestor,
    deprecated: false

  field :create_time, 10, type: Google.Protobuf.Timestamp, json_name: "createTime"
  field :update_time, 11, type: Google.Protobuf.Timestamp, json_name: "updateTime"
  field :location, 12, type: :string, deprecated: false
end

defmodule Google.Cloud.Dataplex.V1.CreateEntryGroupRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :entry_group_id, 2, type: :string, json_name: "entryGroupId", deprecated: false

  field :entry_group, 3,
    type: Google.Cloud.Dataplex.V1.EntryGroup,
    json_name: "entryGroup",
    deprecated: false

  field :validate_only, 4, type: :bool, json_name: "validateOnly", deprecated: false
end

defmodule Google.Cloud.Dataplex.V1.UpdateEntryGroupRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :entry_group, 1,
    type: Google.Cloud.Dataplex.V1.EntryGroup,
    json_name: "entryGroup",
    deprecated: false

  field :update_mask, 2,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false

  field :validate_only, 3, type: :bool, json_name: "validateOnly", deprecated: false
end

defmodule Google.Cloud.Dataplex.V1.DeleteEntryGroupRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :etag, 2, type: :string, deprecated: false
end

defmodule Google.Cloud.Dataplex.V1.ListEntryGroupsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken", deprecated: false
  field :filter, 4, type: :string, deprecated: false
  field :order_by, 5, type: :string, json_name: "orderBy", deprecated: false
end

defmodule Google.Cloud.Dataplex.V1.ListEntryGroupsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :entry_groups, 1,
    repeated: true,
    type: Google.Cloud.Dataplex.V1.EntryGroup,
    json_name: "entryGroups"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"

  field :unreachable_locations, 3,
    repeated: true,
    type: :string,
    json_name: "unreachableLocations"
end

defmodule Google.Cloud.Dataplex.V1.GetEntryGroupRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Dataplex.V1.CreateEntryTypeRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :entry_type_id, 2, type: :string, json_name: "entryTypeId", deprecated: false

  field :entry_type, 3,
    type: Google.Cloud.Dataplex.V1.EntryType,
    json_name: "entryType",
    deprecated: false

  field :validate_only, 4, type: :bool, json_name: "validateOnly", deprecated: false
end

defmodule Google.Cloud.Dataplex.V1.UpdateEntryTypeRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :entry_type, 1,
    type: Google.Cloud.Dataplex.V1.EntryType,
    json_name: "entryType",
    deprecated: false

  field :update_mask, 2,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false

  field :validate_only, 3, type: :bool, json_name: "validateOnly", deprecated: false
end

defmodule Google.Cloud.Dataplex.V1.DeleteEntryTypeRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :etag, 2, type: :string, deprecated: false
end

defmodule Google.Cloud.Dataplex.V1.ListEntryTypesRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken", deprecated: false
  field :filter, 4, type: :string, deprecated: false
  field :order_by, 5, type: :string, json_name: "orderBy", deprecated: false
end

defmodule Google.Cloud.Dataplex.V1.ListEntryTypesResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :entry_types, 1,
    repeated: true,
    type: Google.Cloud.Dataplex.V1.EntryType,
    json_name: "entryTypes"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"

  field :unreachable_locations, 3,
    repeated: true,
    type: :string,
    json_name: "unreachableLocations"
end

defmodule Google.Cloud.Dataplex.V1.GetEntryTypeRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Dataplex.V1.CreateAspectTypeRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :aspect_type_id, 2, type: :string, json_name: "aspectTypeId", deprecated: false

  field :aspect_type, 3,
    type: Google.Cloud.Dataplex.V1.AspectType,
    json_name: "aspectType",
    deprecated: false

  field :validate_only, 4, type: :bool, json_name: "validateOnly", deprecated: false
end

defmodule Google.Cloud.Dataplex.V1.UpdateAspectTypeRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :aspect_type, 1,
    type: Google.Cloud.Dataplex.V1.AspectType,
    json_name: "aspectType",
    deprecated: false

  field :update_mask, 2,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false

  field :validate_only, 3, type: :bool, json_name: "validateOnly", deprecated: false
end

defmodule Google.Cloud.Dataplex.V1.DeleteAspectTypeRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :etag, 2, type: :string, deprecated: false
end

defmodule Google.Cloud.Dataplex.V1.ListAspectTypesRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken", deprecated: false
  field :filter, 4, type: :string, deprecated: false
  field :order_by, 5, type: :string, json_name: "orderBy", deprecated: false
end

defmodule Google.Cloud.Dataplex.V1.ListAspectTypesResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :aspect_types, 1,
    repeated: true,
    type: Google.Cloud.Dataplex.V1.AspectType,
    json_name: "aspectTypes"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"

  field :unreachable_locations, 3,
    repeated: true,
    type: :string,
    json_name: "unreachableLocations"
end

defmodule Google.Cloud.Dataplex.V1.GetAspectTypeRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Dataplex.V1.CreateEntryRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :entry_id, 2, type: :string, json_name: "entryId", deprecated: false
  field :entry, 3, type: Google.Cloud.Dataplex.V1.Entry, deprecated: false
end

defmodule Google.Cloud.Dataplex.V1.UpdateEntryRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :entry, 1, type: Google.Cloud.Dataplex.V1.Entry, deprecated: false

  field :update_mask, 2,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false

  field :allow_missing, 3, type: :bool, json_name: "allowMissing", deprecated: false

  field :delete_missing_aspects, 4,
    type: :bool,
    json_name: "deleteMissingAspects",
    deprecated: false

  field :aspect_keys, 5, repeated: true, type: :string, json_name: "aspectKeys", deprecated: false
end

defmodule Google.Cloud.Dataplex.V1.DeleteEntryRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Dataplex.V1.ListEntriesRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken", deprecated: false
  field :filter, 4, type: :string, deprecated: false
end

defmodule Google.Cloud.Dataplex.V1.ListEntriesResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :entries, 1, repeated: true, type: Google.Cloud.Dataplex.V1.Entry
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Dataplex.V1.GetEntryRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :view, 2, type: Google.Cloud.Dataplex.V1.EntryView, enum: true, deprecated: false

  field :aspect_types, 3,
    repeated: true,
    type: :string,
    json_name: "aspectTypes",
    deprecated: false

  field :paths, 4, repeated: true, type: :string, deprecated: false
end

defmodule Google.Cloud.Dataplex.V1.LookupEntryRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :view, 2, type: Google.Cloud.Dataplex.V1.EntryView, enum: true, deprecated: false

  field :aspect_types, 3,
    repeated: true,
    type: :string,
    json_name: "aspectTypes",
    deprecated: false

  field :paths, 4, repeated: true, type: :string, deprecated: false
  field :entry, 5, type: :string, deprecated: false
end

defmodule Google.Cloud.Dataplex.V1.SearchEntriesRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :query, 2, type: :string, deprecated: false
  field :page_size, 3, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 4, type: :string, json_name: "pageToken", deprecated: false
  field :order_by, 5, type: :string, json_name: "orderBy", deprecated: false
  field :scope, 7, type: :string, deprecated: false
end

defmodule Google.Cloud.Dataplex.V1.SearchEntriesResult.Snippets do
  @moduledoc false

  use Protobuf, deprecated: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :dataplex_entry, 1,
    type: Google.Cloud.Dataplex.V1.Entry,
    json_name: "dataplexEntry",
    deprecated: true
end

defmodule Google.Cloud.Dataplex.V1.SearchEntriesResult do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :linked_resource, 8, type: :string, json_name: "linkedResource", deprecated: true
  field :dataplex_entry, 9, type: Google.Cloud.Dataplex.V1.Entry, json_name: "dataplexEntry"

  field :snippets, 12,
    type: Google.Cloud.Dataplex.V1.SearchEntriesResult.Snippets,
    deprecated: true
end

defmodule Google.Cloud.Dataplex.V1.SearchEntriesResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :results, 1, repeated: true, type: Google.Cloud.Dataplex.V1.SearchEntriesResult
  field :total_size, 2, type: :int32, json_name: "totalSize"
  field :next_page_token, 3, type: :string, json_name: "nextPageToken"
  field :unreachable, 4, repeated: true, type: :string
end

defmodule Google.Cloud.Dataplex.V1.ImportItem do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :entry, 1, type: Google.Cloud.Dataplex.V1.Entry
  field :update_mask, 2, type: Google.Protobuf.FieldMask, json_name: "updateMask"
  field :aspect_keys, 3, repeated: true, type: :string, json_name: "aspectKeys"
end

defmodule Google.Cloud.Dataplex.V1.CreateMetadataJobRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false

  field :metadata_job, 2,
    type: Google.Cloud.Dataplex.V1.MetadataJob,
    json_name: "metadataJob",
    deprecated: false

  field :metadata_job_id, 3, type: :string, json_name: "metadataJobId", deprecated: false
  field :validate_only, 4, type: :bool, json_name: "validateOnly", deprecated: false
end

defmodule Google.Cloud.Dataplex.V1.GetMetadataJobRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Dataplex.V1.ListMetadataJobsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken", deprecated: false
  field :filter, 4, type: :string, deprecated: false
  field :order_by, 5, type: :string, json_name: "orderBy", deprecated: false
end

defmodule Google.Cloud.Dataplex.V1.ListMetadataJobsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :metadata_jobs, 1,
    repeated: true,
    type: Google.Cloud.Dataplex.V1.MetadataJob,
    json_name: "metadataJobs"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"

  field :unreachable_locations, 3,
    repeated: true,
    type: :string,
    json_name: "unreachableLocations"
end

defmodule Google.Cloud.Dataplex.V1.CancelMetadataJobRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Dataplex.V1.MetadataJob.ImportJobResult do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :deleted_entries, 1, type: :int64, json_name: "deletedEntries", deprecated: false
  field :updated_entries, 2, type: :int64, json_name: "updatedEntries", deprecated: false
  field :created_entries, 3, type: :int64, json_name: "createdEntries", deprecated: false
  field :unchanged_entries, 4, type: :int64, json_name: "unchangedEntries", deprecated: false
  field :recreated_entries, 6, type: :int64, json_name: "recreatedEntries", deprecated: false

  field :update_time, 5,
    type: Google.Protobuf.Timestamp,
    json_name: "updateTime",
    deprecated: false
end

defmodule Google.Cloud.Dataplex.V1.MetadataJob.ImportJobSpec.ImportJobScope do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :entry_groups, 1,
    repeated: true,
    type: :string,
    json_name: "entryGroups",
    deprecated: false

  field :entry_types, 2, repeated: true, type: :string, json_name: "entryTypes", deprecated: false

  field :aspect_types, 3,
    repeated: true,
    type: :string,
    json_name: "aspectTypes",
    deprecated: false
end

defmodule Google.Cloud.Dataplex.V1.MetadataJob.ImportJobSpec do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :source_storage_uri, 1, type: :string, json_name: "sourceStorageUri", deprecated: false

  field :source_create_time, 5,
    type: Google.Protobuf.Timestamp,
    json_name: "sourceCreateTime",
    deprecated: false

  field :scope, 2,
    type: Google.Cloud.Dataplex.V1.MetadataJob.ImportJobSpec.ImportJobScope,
    deprecated: false

  field :entry_sync_mode, 3,
    type: Google.Cloud.Dataplex.V1.MetadataJob.ImportJobSpec.SyncMode,
    json_name: "entrySyncMode",
    enum: true,
    deprecated: false

  field :aspect_sync_mode, 4,
    type: Google.Cloud.Dataplex.V1.MetadataJob.ImportJobSpec.SyncMode,
    json_name: "aspectSyncMode",
    enum: true,
    deprecated: false

  field :log_level, 6,
    type: Google.Cloud.Dataplex.V1.MetadataJob.ImportJobSpec.LogLevel,
    json_name: "logLevel",
    enum: true,
    deprecated: false
end

defmodule Google.Cloud.Dataplex.V1.MetadataJob.Status do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :state, 1,
    type: Google.Cloud.Dataplex.V1.MetadataJob.Status.State,
    enum: true,
    deprecated: false

  field :message, 2, type: :string, deprecated: false
  field :completion_percent, 3, type: :int32, json_name: "completionPercent", deprecated: false

  field :update_time, 4,
    type: Google.Protobuf.Timestamp,
    json_name: "updateTime",
    deprecated: false
end

defmodule Google.Cloud.Dataplex.V1.MetadataJob.LabelsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Dataplex.V1.MetadataJob do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  oneof :spec, 0

  oneof :result, 1

  field :name, 1, type: :string, deprecated: false
  field :uid, 2, type: :string, deprecated: false

  field :create_time, 3,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :update_time, 4,
    type: Google.Protobuf.Timestamp,
    json_name: "updateTime",
    deprecated: false

  field :labels, 5,
    repeated: true,
    type: Google.Cloud.Dataplex.V1.MetadataJob.LabelsEntry,
    map: true,
    deprecated: false

  field :type, 6, type: Google.Cloud.Dataplex.V1.MetadataJob.Type, enum: true, deprecated: false

  field :import_spec, 100,
    type: Google.Cloud.Dataplex.V1.MetadataJob.ImportJobSpec,
    json_name: "importSpec",
    oneof: 0

  field :import_result, 200,
    type: Google.Cloud.Dataplex.V1.MetadataJob.ImportJobResult,
    json_name: "importResult",
    oneof: 1,
    deprecated: false

  field :status, 7, type: Google.Cloud.Dataplex.V1.MetadataJob.Status, deprecated: false
end

defmodule Google.Cloud.Dataplex.V1.CatalogService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.cloud.dataplex.v1.CatalogService",
    protoc_gen_elixir_version: "0.13.0"

  rpc :CreateEntryType,
      Google.Cloud.Dataplex.V1.CreateEntryTypeRequest,
      Google.Longrunning.Operation

  rpc :UpdateEntryType,
      Google.Cloud.Dataplex.V1.UpdateEntryTypeRequest,
      Google.Longrunning.Operation

  rpc :DeleteEntryType,
      Google.Cloud.Dataplex.V1.DeleteEntryTypeRequest,
      Google.Longrunning.Operation

  rpc :ListEntryTypes,
      Google.Cloud.Dataplex.V1.ListEntryTypesRequest,
      Google.Cloud.Dataplex.V1.ListEntryTypesResponse

  rpc :GetEntryType,
      Google.Cloud.Dataplex.V1.GetEntryTypeRequest,
      Google.Cloud.Dataplex.V1.EntryType

  rpc :CreateAspectType,
      Google.Cloud.Dataplex.V1.CreateAspectTypeRequest,
      Google.Longrunning.Operation

  rpc :UpdateAspectType,
      Google.Cloud.Dataplex.V1.UpdateAspectTypeRequest,
      Google.Longrunning.Operation

  rpc :DeleteAspectType,
      Google.Cloud.Dataplex.V1.DeleteAspectTypeRequest,
      Google.Longrunning.Operation

  rpc :ListAspectTypes,
      Google.Cloud.Dataplex.V1.ListAspectTypesRequest,
      Google.Cloud.Dataplex.V1.ListAspectTypesResponse

  rpc :GetAspectType,
      Google.Cloud.Dataplex.V1.GetAspectTypeRequest,
      Google.Cloud.Dataplex.V1.AspectType

  rpc :CreateEntryGroup,
      Google.Cloud.Dataplex.V1.CreateEntryGroupRequest,
      Google.Longrunning.Operation

  rpc :UpdateEntryGroup,
      Google.Cloud.Dataplex.V1.UpdateEntryGroupRequest,
      Google.Longrunning.Operation

  rpc :DeleteEntryGroup,
      Google.Cloud.Dataplex.V1.DeleteEntryGroupRequest,
      Google.Longrunning.Operation

  rpc :ListEntryGroups,
      Google.Cloud.Dataplex.V1.ListEntryGroupsRequest,
      Google.Cloud.Dataplex.V1.ListEntryGroupsResponse

  rpc :GetEntryGroup,
      Google.Cloud.Dataplex.V1.GetEntryGroupRequest,
      Google.Cloud.Dataplex.V1.EntryGroup

  rpc :CreateEntry, Google.Cloud.Dataplex.V1.CreateEntryRequest, Google.Cloud.Dataplex.V1.Entry

  rpc :UpdateEntry, Google.Cloud.Dataplex.V1.UpdateEntryRequest, Google.Cloud.Dataplex.V1.Entry

  rpc :DeleteEntry, Google.Cloud.Dataplex.V1.DeleteEntryRequest, Google.Cloud.Dataplex.V1.Entry

  rpc :ListEntries,
      Google.Cloud.Dataplex.V1.ListEntriesRequest,
      Google.Cloud.Dataplex.V1.ListEntriesResponse

  rpc :GetEntry, Google.Cloud.Dataplex.V1.GetEntryRequest, Google.Cloud.Dataplex.V1.Entry

  rpc :LookupEntry, Google.Cloud.Dataplex.V1.LookupEntryRequest, Google.Cloud.Dataplex.V1.Entry

  rpc :SearchEntries,
      Google.Cloud.Dataplex.V1.SearchEntriesRequest,
      Google.Cloud.Dataplex.V1.SearchEntriesResponse

  rpc :CreateMetadataJob,
      Google.Cloud.Dataplex.V1.CreateMetadataJobRequest,
      Google.Longrunning.Operation

  rpc :GetMetadataJob,
      Google.Cloud.Dataplex.V1.GetMetadataJobRequest,
      Google.Cloud.Dataplex.V1.MetadataJob

  rpc :ListMetadataJobs,
      Google.Cloud.Dataplex.V1.ListMetadataJobsRequest,
      Google.Cloud.Dataplex.V1.ListMetadataJobsResponse

  rpc :CancelMetadataJob, Google.Cloud.Dataplex.V1.CancelMetadataJobRequest, Google.Protobuf.Empty
end

defmodule Google.Cloud.Dataplex.V1.CatalogService.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Cloud.Dataplex.V1.CatalogService.Service
end