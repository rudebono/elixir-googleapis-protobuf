defmodule Google.Cloud.Dialogflow.V2beta1.ToolCall.State do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :STATE_UNSPECIFIED, 0
  field :TRIGGERED, 1
  field :NEEDS_CONFIRMATION, 2
end

defmodule Google.Cloud.Dialogflow.V2beta1.ToolCall do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :source, 0

  field :tool, 1, type: :string, oneof: 0, deprecated: false
  field :tool_display_name, 9, type: :string, json_name: "toolDisplayName", deprecated: false

  field :tool_display_details, 10,
    type: :string,
    json_name: "toolDisplayDetails",
    deprecated: false

  field :action, 2, type: :string, deprecated: false

  field :input_parameters, 3,
    type: Google.Protobuf.Struct,
    json_name: "inputParameters",
    deprecated: false

  field :create_time, 4,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :answer_record, 6, type: :string, json_name: "answerRecord", deprecated: false

  field :state, 7,
    type: Google.Cloud.Dialogflow.V2beta1.ToolCall.State,
    enum: true,
    deprecated: false
end

defmodule Google.Cloud.Dialogflow.V2beta1.ToolCallResult.Error do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :message, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Dialogflow.V2beta1.ToolCallResult do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :source, 0

  oneof :result, 1

  field :tool, 1, type: :string, oneof: 0, deprecated: false
  field :action, 2, type: :string, deprecated: false
  field :error, 3, type: Google.Cloud.Dialogflow.V2beta1.ToolCallResult.Error, oneof: 1
  field :raw_content, 5, type: :bytes, json_name: "rawContent", oneof: 1
  field :content, 6, type: :string, oneof: 1

  field :create_time, 7,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :answer_record, 9, type: :string, json_name: "answerRecord", deprecated: false
end
