defmodule Google.Cloud.Contentwarehouse.V1.UpdateType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :UPDATE_TYPE_UNSPECIFIED, 0
  field :UPDATE_TYPE_REPLACE, 1
  field :UPDATE_TYPE_MERGE, 2
  field :UPDATE_TYPE_INSERT_PROPERTIES_BY_NAMES, 3
  field :UPDATE_TYPE_REPLACE_PROPERTIES_BY_NAMES, 4
  field :UPDATE_TYPE_DELETE_PROPERTIES_BY_NAMES, 5
  field :UPDATE_TYPE_MERGE_AND_REPLACE_OR_INSERT_PROPERTIES_BY_NAMES, 6
end

defmodule Google.Cloud.Contentwarehouse.V1.DatabaseType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :DB_UNKNOWN, 0
  field :DB_INFRA_SPANNER, 1
  field :DB_CLOUD_SQL_POSTGRES, 2
end

defmodule Google.Cloud.Contentwarehouse.V1.AccessControlMode do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :ACL_MODE_UNKNOWN, 0
  field :ACL_MODE_UNIVERSAL_ACCESS, 1
  field :ACL_MODE_DOCUMENT_LEVEL_ACCESS_CONTROL_BYOID, 2
  field :ACL_MODE_DOCUMENT_LEVEL_ACCESS_CONTROL_GCI, 3
end

defmodule Google.Cloud.Contentwarehouse.V1.DocumentCreatorDefaultRole do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :DOCUMENT_CREATOR_DEFAULT_ROLE_UNSPECIFIED, 0
  field :DOCUMENT_ADMIN, 1
  field :DOCUMENT_EDITOR, 2
  field :DOCUMENT_VIEWER, 3
end

defmodule Google.Cloud.Contentwarehouse.V1.RequestMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :user_info, 1, type: Google.Cloud.Contentwarehouse.V1.UserInfo, json_name: "userInfo"
end

defmodule Google.Cloud.Contentwarehouse.V1.ResponseMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :request_id, 1, type: :string, json_name: "requestId"
end

defmodule Google.Cloud.Contentwarehouse.V1.UserInfo do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :id, 1, type: :string
  field :group_ids, 2, repeated: true, type: :string, json_name: "groupIds"
end

defmodule Google.Cloud.Contentwarehouse.V1.UpdateOptions do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :update_type, 1,
    type: Google.Cloud.Contentwarehouse.V1.UpdateType,
    json_name: "updateType",
    enum: true

  field :update_mask, 2, type: Google.Protobuf.FieldMask, json_name: "updateMask"

  field :merge_fields_options, 3,
    type: Google.Cloud.Contentwarehouse.V1.MergeFieldsOptions,
    json_name: "mergeFieldsOptions"
end

defmodule Google.Cloud.Contentwarehouse.V1.MergeFieldsOptions do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :replace_message_fields, 1,
    proto3_optional: true,
    type: :bool,
    json_name: "replaceMessageFields"

  field :replace_repeated_fields, 2,
    proto3_optional: true,
    type: :bool,
    json_name: "replaceRepeatedFields"
end