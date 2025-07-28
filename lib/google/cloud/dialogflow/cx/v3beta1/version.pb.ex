defmodule Google.Cloud.Dialogflow.Cx.V3beta1.Version.State do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :STATE_UNSPECIFIED, 0
  field :RUNNING, 1
  field :SUCCEEDED, 2
  field :FAILED, 3
end

defmodule Google.Cloud.Dialogflow.Cx.V3beta1.CreateVersionOperationMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :version, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Dialogflow.Cx.V3beta1.Version do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string
  field :display_name, 2, type: :string, json_name: "displayName", deprecated: false
  field :description, 3, type: :string

  field :nlu_settings, 4,
    type: Google.Cloud.Dialogflow.Cx.V3beta1.NluSettings,
    json_name: "nluSettings",
    deprecated: false

  field :create_time, 5,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :state, 6,
    type: Google.Cloud.Dialogflow.Cx.V3beta1.Version.State,
    enum: true,
    deprecated: false
end

defmodule Google.Cloud.Dialogflow.Cx.V3beta1.ListVersionsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
end

defmodule Google.Cloud.Dialogflow.Cx.V3beta1.ListVersionsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :versions, 1, repeated: true, type: Google.Cloud.Dialogflow.Cx.V3beta1.Version
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Dialogflow.Cx.V3beta1.GetVersionRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Dialogflow.Cx.V3beta1.CreateVersionRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :version, 2, type: Google.Cloud.Dialogflow.Cx.V3beta1.Version, deprecated: false
end

defmodule Google.Cloud.Dialogflow.Cx.V3beta1.UpdateVersionRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :version, 1, type: Google.Cloud.Dialogflow.Cx.V3beta1.Version, deprecated: false

  field :update_mask, 2,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false
end

defmodule Google.Cloud.Dialogflow.Cx.V3beta1.DeleteVersionRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Dialogflow.Cx.V3beta1.LoadVersionRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :allow_override_agent_resources, 2, type: :bool, json_name: "allowOverrideAgentResources"
end

defmodule Google.Cloud.Dialogflow.Cx.V3beta1.CompareVersionsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :base_version, 1, type: :string, json_name: "baseVersion", deprecated: false
  field :target_version, 2, type: :string, json_name: "targetVersion", deprecated: false
  field :language_code, 3, type: :string, json_name: "languageCode"
end

defmodule Google.Cloud.Dialogflow.Cx.V3beta1.CompareVersionsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :base_version_content_json, 1, type: :string, json_name: "baseVersionContentJson"
  field :target_version_content_json, 2, type: :string, json_name: "targetVersionContentJson"
  field :compare_time, 3, type: Google.Protobuf.Timestamp, json_name: "compareTime"
end

defmodule Google.Cloud.Dialogflow.Cx.V3beta1.Versions.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.cloud.dialogflow.cx.v3beta1.Versions",
    protoc_gen_elixir_version: "0.15.0"

  rpc :ListVersions,
      Google.Cloud.Dialogflow.Cx.V3beta1.ListVersionsRequest,
      Google.Cloud.Dialogflow.Cx.V3beta1.ListVersionsResponse

  rpc :GetVersion,
      Google.Cloud.Dialogflow.Cx.V3beta1.GetVersionRequest,
      Google.Cloud.Dialogflow.Cx.V3beta1.Version

  rpc :CreateVersion,
      Google.Cloud.Dialogflow.Cx.V3beta1.CreateVersionRequest,
      Google.Longrunning.Operation

  rpc :UpdateVersion,
      Google.Cloud.Dialogflow.Cx.V3beta1.UpdateVersionRequest,
      Google.Cloud.Dialogflow.Cx.V3beta1.Version

  rpc :DeleteVersion,
      Google.Cloud.Dialogflow.Cx.V3beta1.DeleteVersionRequest,
      Google.Protobuf.Empty

  rpc :LoadVersion,
      Google.Cloud.Dialogflow.Cx.V3beta1.LoadVersionRequest,
      Google.Longrunning.Operation

  rpc :CompareVersions,
      Google.Cloud.Dialogflow.Cx.V3beta1.CompareVersionsRequest,
      Google.Cloud.Dialogflow.Cx.V3beta1.CompareVersionsResponse
end

defmodule Google.Cloud.Dialogflow.Cx.V3beta1.Versions.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Cloud.Dialogflow.Cx.V3beta1.Versions.Service
end
