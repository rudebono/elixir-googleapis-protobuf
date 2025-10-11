defmodule Google.Cloud.Dialogflow.Cx.V3beta1.CreateExampleRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :example, 2, type: Google.Cloud.Dialogflow.Cx.V3beta1.Example, deprecated: false
end

defmodule Google.Cloud.Dialogflow.Cx.V3beta1.DeleteExampleRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Dialogflow.Cx.V3beta1.ListExamplesRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken", deprecated: false
  field :language_code, 4, type: :string, json_name: "languageCode", deprecated: false
end

defmodule Google.Cloud.Dialogflow.Cx.V3beta1.ListExamplesResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :examples, 1, repeated: true, type: Google.Cloud.Dialogflow.Cx.V3beta1.Example
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Dialogflow.Cx.V3beta1.GetExampleRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Dialogflow.Cx.V3beta1.UpdateExampleRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :example, 1, type: Google.Cloud.Dialogflow.Cx.V3beta1.Example, deprecated: false

  field :update_mask, 2,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false
end

defmodule Google.Cloud.Dialogflow.Cx.V3beta1.Example do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string

  field :playbook_input, 3,
    type: Google.Cloud.Dialogflow.Cx.V3beta1.PlaybookInput,
    json_name: "playbookInput",
    deprecated: false

  field :playbook_output, 4,
    type: Google.Cloud.Dialogflow.Cx.V3beta1.PlaybookOutput,
    json_name: "playbookOutput",
    deprecated: false

  field :actions, 2,
    repeated: true,
    type: Google.Cloud.Dialogflow.Cx.V3beta1.Action,
    deprecated: false

  field :display_name, 6, type: :string, json_name: "displayName", deprecated: false
  field :description, 8, type: :string, deprecated: false
  field :token_count, 9, type: :int64, json_name: "tokenCount", deprecated: false

  field :create_time, 10,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :update_time, 11,
    type: Google.Protobuf.Timestamp,
    json_name: "updateTime",
    deprecated: false

  field :conversation_state, 12,
    type: Google.Cloud.Dialogflow.Cx.V3beta1.OutputState,
    json_name: "conversationState",
    enum: true,
    deprecated: false

  field :language_code, 13, type: :string, json_name: "languageCode", deprecated: false
end

defmodule Google.Cloud.Dialogflow.Cx.V3beta1.Examples.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.cloud.dialogflow.cx.v3beta1.Examples",
    protoc_gen_elixir_version: "0.15.0"

  rpc :CreateExample,
      Google.Cloud.Dialogflow.Cx.V3beta1.CreateExampleRequest,
      Google.Cloud.Dialogflow.Cx.V3beta1.Example

  rpc :DeleteExample,
      Google.Cloud.Dialogflow.Cx.V3beta1.DeleteExampleRequest,
      Google.Protobuf.Empty

  rpc :ListExamples,
      Google.Cloud.Dialogflow.Cx.V3beta1.ListExamplesRequest,
      Google.Cloud.Dialogflow.Cx.V3beta1.ListExamplesResponse

  rpc :GetExample,
      Google.Cloud.Dialogflow.Cx.V3beta1.GetExampleRequest,
      Google.Cloud.Dialogflow.Cx.V3beta1.Example

  rpc :UpdateExample,
      Google.Cloud.Dialogflow.Cx.V3beta1.UpdateExampleRequest,
      Google.Cloud.Dialogflow.Cx.V3beta1.Example
end

defmodule Google.Cloud.Dialogflow.Cx.V3beta1.Examples.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Cloud.Dialogflow.Cx.V3beta1.Examples.Service
end
