defmodule Google.Cloud.Dialogflow.Cx.V3beta1.ToolCall do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :tool, 1, type: :string, deprecated: false
  field :action, 2, type: :string, deprecated: false

  field :input_parameters, 3,
    type: Google.Protobuf.Struct,
    json_name: "inputParameters",
    deprecated: false
end

defmodule Google.Cloud.Dialogflow.Cx.V3beta1.ToolCallResult.Error do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :message, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Dialogflow.Cx.V3beta1.ToolCallResult do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  oneof :result, 0

  field :tool, 1, type: :string, deprecated: false
  field :action, 2, type: :string, deprecated: false
  field :error, 3, type: Google.Cloud.Dialogflow.Cx.V3beta1.ToolCallResult.Error, oneof: 0

  field :output_parameters, 4,
    type: Google.Protobuf.Struct,
    json_name: "outputParameters",
    oneof: 0
end
