defmodule Google.Cloud.Discoveryengine.V1beta.Conversation.State do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :STATE_UNSPECIFIED, 0
  field :IN_PROGRESS, 1
  field :COMPLETED, 2
end

defmodule Google.Cloud.Discoveryengine.V1beta.Conversation do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :state, 2, type: Google.Cloud.Discoveryengine.V1beta.Conversation.State, enum: true
  field :user_pseudo_id, 3, type: :string, json_name: "userPseudoId"

  field :messages, 4,
    repeated: true,
    type: Google.Cloud.Discoveryengine.V1beta.ConversationMessage

  field :start_time, 5, type: Google.Protobuf.Timestamp, json_name: "startTime", deprecated: false
  field :end_time, 6, type: Google.Protobuf.Timestamp, json_name: "endTime", deprecated: false
end

defmodule Google.Cloud.Discoveryengine.V1beta.Reply.Reference do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :uri, 1, type: :string
  field :anchor_text, 2, type: :string, json_name: "anchorText"
  field :start, 3, type: :int32
  field :end, 4, type: :int32
end

defmodule Google.Cloud.Discoveryengine.V1beta.Reply do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :reply, 1, type: :string
  field :references, 2, repeated: true, type: Google.Cloud.Discoveryengine.V1beta.Reply.Reference
end

defmodule Google.Cloud.Discoveryengine.V1beta.ConversationContext do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :context_documents, 1, repeated: true, type: :string, json_name: "contextDocuments"
  field :active_document, 2, type: :string, json_name: "activeDocument"
end

defmodule Google.Cloud.Discoveryengine.V1beta.TextInput do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :input, 1, type: :string
  field :context, 2, type: Google.Cloud.Discoveryengine.V1beta.ConversationContext
end

defmodule Google.Cloud.Discoveryengine.V1beta.ConversationMessage do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  oneof :message, 0

  field :user_input, 1,
    type: Google.Cloud.Discoveryengine.V1beta.TextInput,
    json_name: "userInput",
    oneof: 0

  field :reply, 2, type: Google.Cloud.Discoveryengine.V1beta.Reply, oneof: 0

  field :create_time, 3,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false
end