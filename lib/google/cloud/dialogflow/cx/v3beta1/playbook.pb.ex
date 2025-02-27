defmodule Google.Cloud.Dialogflow.Cx.V3beta1.CreatePlaybookRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :playbook, 2, type: Google.Cloud.Dialogflow.Cx.V3beta1.Playbook, deprecated: false
end

defmodule Google.Cloud.Dialogflow.Cx.V3beta1.DeletePlaybookRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Dialogflow.Cx.V3beta1.ListPlaybooksRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
end

defmodule Google.Cloud.Dialogflow.Cx.V3beta1.ListPlaybooksResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :playbooks, 1, repeated: true, type: Google.Cloud.Dialogflow.Cx.V3beta1.Playbook
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Dialogflow.Cx.V3beta1.GetPlaybookRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Dialogflow.Cx.V3beta1.UpdatePlaybookRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :playbook, 1, type: Google.Cloud.Dialogflow.Cx.V3beta1.Playbook, deprecated: false
  field :update_mask, 2, type: Google.Protobuf.FieldMask, json_name: "updateMask"
end

defmodule Google.Cloud.Dialogflow.Cx.V3beta1.Playbook.Step do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  oneof :instruction, 0

  field :text, 1, type: :string, oneof: 0
  field :steps, 2, repeated: true, type: Google.Cloud.Dialogflow.Cx.V3beta1.Playbook.Step
end

defmodule Google.Cloud.Dialogflow.Cx.V3beta1.Playbook.Instruction do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :guidelines, 1, type: :string
  field :steps, 2, repeated: true, type: Google.Cloud.Dialogflow.Cx.V3beta1.Playbook.Step
end

defmodule Google.Cloud.Dialogflow.Cx.V3beta1.Playbook do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string
  field :display_name, 2, type: :string, json_name: "displayName", deprecated: false
  field :goal, 3, type: :string, deprecated: false

  field :input_parameter_definitions, 5,
    repeated: true,
    type: Google.Cloud.Dialogflow.Cx.V3beta1.ParameterDefinition,
    json_name: "inputParameterDefinitions",
    deprecated: false

  field :output_parameter_definitions, 6,
    repeated: true,
    type: Google.Cloud.Dialogflow.Cx.V3beta1.ParameterDefinition,
    json_name: "outputParameterDefinitions",
    deprecated: false

  field :instruction, 17, type: Google.Cloud.Dialogflow.Cx.V3beta1.Playbook.Instruction
  field :token_count, 8, type: :int64, json_name: "tokenCount", deprecated: false

  field :create_time, 9,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :update_time, 10,
    type: Google.Protobuf.Timestamp,
    json_name: "updateTime",
    deprecated: false

  field :referenced_playbooks, 11,
    repeated: true,
    type: :string,
    json_name: "referencedPlaybooks",
    deprecated: false

  field :referenced_flows, 12,
    repeated: true,
    type: :string,
    json_name: "referencedFlows",
    deprecated: false

  field :referenced_tools, 13,
    repeated: true,
    type: :string,
    json_name: "referencedTools",
    deprecated: false

  field :llm_model_settings, 14,
    type: Google.Cloud.Dialogflow.Cx.V3beta1.LlmModelSettings,
    json_name: "llmModelSettings",
    deprecated: false

  field :speech_settings, 20,
    type: Google.Cloud.Dialogflow.Cx.V3beta1.AdvancedSettings.SpeechSettings,
    json_name: "speechSettings",
    deprecated: false

  field :handlers, 16,
    repeated: true,
    type: Google.Cloud.Dialogflow.Cx.V3beta1.Handler,
    deprecated: false
end

defmodule Google.Cloud.Dialogflow.Cx.V3beta1.CreatePlaybookVersionRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false

  field :playbook_version, 2,
    type: Google.Cloud.Dialogflow.Cx.V3beta1.PlaybookVersion,
    json_name: "playbookVersion",
    deprecated: false
end

defmodule Google.Cloud.Dialogflow.Cx.V3beta1.PlaybookVersion do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string
  field :description, 2, type: :string, deprecated: false
  field :playbook, 3, type: Google.Cloud.Dialogflow.Cx.V3beta1.Playbook, deprecated: false

  field :examples, 4,
    repeated: true,
    type: Google.Cloud.Dialogflow.Cx.V3beta1.Example,
    deprecated: false

  field :update_time, 5,
    type: Google.Protobuf.Timestamp,
    json_name: "updateTime",
    deprecated: false
end

defmodule Google.Cloud.Dialogflow.Cx.V3beta1.GetPlaybookVersionRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Dialogflow.Cx.V3beta1.ListPlaybookVersionsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken", deprecated: false
end

defmodule Google.Cloud.Dialogflow.Cx.V3beta1.ListPlaybookVersionsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :playbook_versions, 1,
    repeated: true,
    type: Google.Cloud.Dialogflow.Cx.V3beta1.PlaybookVersion,
    json_name: "playbookVersions"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Dialogflow.Cx.V3beta1.DeletePlaybookVersionRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Dialogflow.Cx.V3beta1.Handler.EventHandler do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :event, 1, type: :string, deprecated: false
  field :condition, 3, type: :string, deprecated: false
  field :fulfillment, 2, type: Google.Cloud.Dialogflow.Cx.V3beta1.Fulfillment, deprecated: false
end

defmodule Google.Cloud.Dialogflow.Cx.V3beta1.Handler.LifecycleHandler do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :lifecycle_stage, 1, type: :string, json_name: "lifecycleStage", deprecated: false
  field :condition, 2, type: :string, deprecated: false
  field :fulfillment, 3, type: Google.Cloud.Dialogflow.Cx.V3beta1.Fulfillment, deprecated: false
end

defmodule Google.Cloud.Dialogflow.Cx.V3beta1.Handler do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  oneof :handler, 0

  field :event_handler, 1,
    type: Google.Cloud.Dialogflow.Cx.V3beta1.Handler.EventHandler,
    json_name: "eventHandler",
    oneof: 0

  field :lifecycle_handler, 3,
    type: Google.Cloud.Dialogflow.Cx.V3beta1.Handler.LifecycleHandler,
    json_name: "lifecycleHandler",
    oneof: 0
end

defmodule Google.Cloud.Dialogflow.Cx.V3beta1.Playbooks.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.cloud.dialogflow.cx.v3beta1.Playbooks",
    protoc_gen_elixir_version: "0.14.1"

  rpc :CreatePlaybook,
      Google.Cloud.Dialogflow.Cx.V3beta1.CreatePlaybookRequest,
      Google.Cloud.Dialogflow.Cx.V3beta1.Playbook

  rpc :DeletePlaybook,
      Google.Cloud.Dialogflow.Cx.V3beta1.DeletePlaybookRequest,
      Google.Protobuf.Empty

  rpc :ListPlaybooks,
      Google.Cloud.Dialogflow.Cx.V3beta1.ListPlaybooksRequest,
      Google.Cloud.Dialogflow.Cx.V3beta1.ListPlaybooksResponse

  rpc :GetPlaybook,
      Google.Cloud.Dialogflow.Cx.V3beta1.GetPlaybookRequest,
      Google.Cloud.Dialogflow.Cx.V3beta1.Playbook

  rpc :UpdatePlaybook,
      Google.Cloud.Dialogflow.Cx.V3beta1.UpdatePlaybookRequest,
      Google.Cloud.Dialogflow.Cx.V3beta1.Playbook

  rpc :CreatePlaybookVersion,
      Google.Cloud.Dialogflow.Cx.V3beta1.CreatePlaybookVersionRequest,
      Google.Cloud.Dialogflow.Cx.V3beta1.PlaybookVersion

  rpc :GetPlaybookVersion,
      Google.Cloud.Dialogflow.Cx.V3beta1.GetPlaybookVersionRequest,
      Google.Cloud.Dialogflow.Cx.V3beta1.PlaybookVersion

  rpc :ListPlaybookVersions,
      Google.Cloud.Dialogflow.Cx.V3beta1.ListPlaybookVersionsRequest,
      Google.Cloud.Dialogflow.Cx.V3beta1.ListPlaybookVersionsResponse

  rpc :DeletePlaybookVersion,
      Google.Cloud.Dialogflow.Cx.V3beta1.DeletePlaybookVersionRequest,
      Google.Protobuf.Empty
end

defmodule Google.Cloud.Dialogflow.Cx.V3beta1.Playbooks.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Cloud.Dialogflow.Cx.V3beta1.Playbooks.Service
end
