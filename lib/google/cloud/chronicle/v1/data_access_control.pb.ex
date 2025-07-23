defmodule Google.Cloud.Chronicle.V1.CreateDataAccessLabelRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false

  field :data_access_label, 2,
    type: Google.Cloud.Chronicle.V1.DataAccessLabel,
    json_name: "dataAccessLabel",
    deprecated: false

  field :data_access_label_id, 3, type: :string, json_name: "dataAccessLabelId", deprecated: false
end

defmodule Google.Cloud.Chronicle.V1.GetDataAccessLabelRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Chronicle.V1.ListDataAccessLabelsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
  field :filter, 4, type: :string, deprecated: false
end

defmodule Google.Cloud.Chronicle.V1.ListDataAccessLabelsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :data_access_labels, 1,
    repeated: true,
    type: Google.Cloud.Chronicle.V1.DataAccessLabel,
    json_name: "dataAccessLabels"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Chronicle.V1.UpdateDataAccessLabelRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :data_access_label, 1,
    type: Google.Cloud.Chronicle.V1.DataAccessLabel,
    json_name: "dataAccessLabel",
    deprecated: false

  field :update_mask, 2, type: Google.Protobuf.FieldMask, json_name: "updateMask"
end

defmodule Google.Cloud.Chronicle.V1.DeleteDataAccessLabelRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Chronicle.V1.CreateDataAccessScopeRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false

  field :data_access_scope, 2,
    type: Google.Cloud.Chronicle.V1.DataAccessScope,
    json_name: "dataAccessScope",
    deprecated: false

  field :data_access_scope_id, 3, type: :string, json_name: "dataAccessScopeId", deprecated: false
end

defmodule Google.Cloud.Chronicle.V1.GetDataAccessScopeRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Chronicle.V1.ListDataAccessScopesRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
  field :filter, 4, type: :string, deprecated: false
end

defmodule Google.Cloud.Chronicle.V1.ListDataAccessScopesResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :data_access_scopes, 1,
    repeated: true,
    type: Google.Cloud.Chronicle.V1.DataAccessScope,
    json_name: "dataAccessScopes"

  field :global_data_access_scope_granted, 3,
    proto3_optional: true,
    type: :bool,
    json_name: "globalDataAccessScopeGranted"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Chronicle.V1.UpdateDataAccessScopeRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :data_access_scope, 1,
    type: Google.Cloud.Chronicle.V1.DataAccessScope,
    json_name: "dataAccessScope",
    deprecated: false

  field :update_mask, 2, type: Google.Protobuf.FieldMask, json_name: "updateMask"
end

defmodule Google.Cloud.Chronicle.V1.DeleteDataAccessScopeRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Chronicle.V1.DataAccessLabel do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :definition, 0

  field :udm_query, 3, type: :string, json_name: "udmQuery", oneof: 0
  field :name, 1, type: :string, deprecated: false
  field :display_name, 8, type: :string, json_name: "displayName", deprecated: false

  field :create_time, 4,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :update_time, 5,
    type: Google.Protobuf.Timestamp,
    json_name: "updateTime",
    deprecated: false

  field :author, 6, type: :string, deprecated: false
  field :last_editor, 7, type: :string, json_name: "lastEditor", deprecated: false
  field :description, 2, type: :string, deprecated: false
end

defmodule Google.Cloud.Chronicle.V1.DataAccessScope do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false

  field :allowed_data_access_labels, 2,
    repeated: true,
    type: Google.Cloud.Chronicle.V1.DataAccessLabelReference,
    json_name: "allowedDataAccessLabels",
    deprecated: false

  field :denied_data_access_labels, 3,
    repeated: true,
    type: Google.Cloud.Chronicle.V1.DataAccessLabelReference,
    json_name: "deniedDataAccessLabels",
    deprecated: false

  field :display_name, 4, type: :string, json_name: "displayName", deprecated: false

  field :create_time, 5,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :update_time, 6,
    type: Google.Protobuf.Timestamp,
    json_name: "updateTime",
    deprecated: false

  field :author, 7, type: :string, deprecated: false
  field :last_editor, 8, type: :string, json_name: "lastEditor", deprecated: false
  field :description, 9, type: :string, deprecated: false
  field :allow_all, 10, type: :bool, json_name: "allowAll", deprecated: false
end

defmodule Google.Cloud.Chronicle.V1.DataAccessLabelReference do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :label, 0

  field :data_access_label, 1, type: :string, json_name: "dataAccessLabel", oneof: 0
  field :log_type, 2, type: :string, json_name: "logType", oneof: 0
  field :asset_namespace, 3, type: :string, json_name: "assetNamespace", oneof: 0

  field :ingestion_label, 4,
    type: Google.Cloud.Chronicle.V1.IngestionLabel,
    json_name: "ingestionLabel",
    oneof: 0

  field :display_name, 5, type: :string, json_name: "displayName", deprecated: false
end

defmodule Google.Cloud.Chronicle.V1.IngestionLabel do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :ingestion_label_key, 1, type: :string, json_name: "ingestionLabelKey", deprecated: false

  field :ingestion_label_value, 2,
    type: :string,
    json_name: "ingestionLabelValue",
    deprecated: false
end

defmodule Google.Cloud.Chronicle.V1.DataAccessControlService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.cloud.chronicle.v1.DataAccessControlService",
    protoc_gen_elixir_version: "0.15.0"

  rpc :CreateDataAccessLabel,
      Google.Cloud.Chronicle.V1.CreateDataAccessLabelRequest,
      Google.Cloud.Chronicle.V1.DataAccessLabel

  rpc :GetDataAccessLabel,
      Google.Cloud.Chronicle.V1.GetDataAccessLabelRequest,
      Google.Cloud.Chronicle.V1.DataAccessLabel

  rpc :ListDataAccessLabels,
      Google.Cloud.Chronicle.V1.ListDataAccessLabelsRequest,
      Google.Cloud.Chronicle.V1.ListDataAccessLabelsResponse

  rpc :UpdateDataAccessLabel,
      Google.Cloud.Chronicle.V1.UpdateDataAccessLabelRequest,
      Google.Cloud.Chronicle.V1.DataAccessLabel

  rpc :DeleteDataAccessLabel,
      Google.Cloud.Chronicle.V1.DeleteDataAccessLabelRequest,
      Google.Protobuf.Empty

  rpc :CreateDataAccessScope,
      Google.Cloud.Chronicle.V1.CreateDataAccessScopeRequest,
      Google.Cloud.Chronicle.V1.DataAccessScope

  rpc :GetDataAccessScope,
      Google.Cloud.Chronicle.V1.GetDataAccessScopeRequest,
      Google.Cloud.Chronicle.V1.DataAccessScope

  rpc :ListDataAccessScopes,
      Google.Cloud.Chronicle.V1.ListDataAccessScopesRequest,
      Google.Cloud.Chronicle.V1.ListDataAccessScopesResponse

  rpc :UpdateDataAccessScope,
      Google.Cloud.Chronicle.V1.UpdateDataAccessScopeRequest,
      Google.Cloud.Chronicle.V1.DataAccessScope

  rpc :DeleteDataAccessScope,
      Google.Cloud.Chronicle.V1.DeleteDataAccessScopeRequest,
      Google.Protobuf.Empty
end

defmodule Google.Cloud.Chronicle.V1.DataAccessControlService.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Cloud.Chronicle.V1.DataAccessControlService.Service
end
