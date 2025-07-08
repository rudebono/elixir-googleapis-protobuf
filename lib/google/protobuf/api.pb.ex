defmodule Google.Protobuf.Api do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string
  field :methods, 2, repeated: true, type: Google.Protobuf.Method
  field :options, 3, repeated: true, type: Google.Protobuf.Option
  field :version, 4, type: :string
  field :source_context, 5, type: Google.Protobuf.SourceContext, json_name: "sourceContext"
  field :mixins, 6, repeated: true, type: Google.Protobuf.Mixin
  field :syntax, 7, type: Google.Protobuf.Syntax, enum: true
  field :edition, 8, type: :string
end

defmodule Google.Protobuf.Method do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string
  field :request_type_url, 2, type: :string, json_name: "requestTypeUrl"
  field :request_streaming, 3, type: :bool, json_name: "requestStreaming"
  field :response_type_url, 4, type: :string, json_name: "responseTypeUrl"
  field :response_streaming, 5, type: :bool, json_name: "responseStreaming"
  field :options, 6, repeated: true, type: Google.Protobuf.Option
  field :syntax, 7, type: Google.Protobuf.Syntax, enum: true
  field :edition, 8, type: :string
end

defmodule Google.Protobuf.Mixin do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string
  field :root, 2, type: :string
end
