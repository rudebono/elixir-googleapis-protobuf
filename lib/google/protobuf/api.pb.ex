defmodule Google.Protobuf.Api do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          methods: [Google.Protobuf.Method.t()],
          options: [Google.Protobuf.Option.t()],
          version: String.t(),
          source_context: Google.Protobuf.SourceContext.t() | nil,
          mixins: [Google.Protobuf.Mixin.t()],
          syntax: Google.Protobuf.Syntax.t()
        }

  defstruct [:name, :methods, :options, :version, :source_context, :mixins, :syntax]

  field :name, 1, type: :string
  field :methods, 2, repeated: true, type: Google.Protobuf.Method
  field :options, 3, repeated: true, type: Google.Protobuf.Option
  field :version, 4, type: :string
  field :source_context, 5, type: Google.Protobuf.SourceContext, json_name: "sourceContext"
  field :mixins, 6, repeated: true, type: Google.Protobuf.Mixin
  field :syntax, 7, type: Google.Protobuf.Syntax, enum: true

  def transform_module(), do: nil
end

defmodule Google.Protobuf.Method do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          request_type_url: String.t(),
          request_streaming: boolean,
          response_type_url: String.t(),
          response_streaming: boolean,
          options: [Google.Protobuf.Option.t()],
          syntax: Google.Protobuf.Syntax.t()
        }

  defstruct [
    :name,
    :request_type_url,
    :request_streaming,
    :response_type_url,
    :response_streaming,
    :options,
    :syntax
  ]

  field :name, 1, type: :string
  field :request_type_url, 2, type: :string, json_name: "requestTypeUrl"
  field :request_streaming, 3, type: :bool, json_name: "requestStreaming"
  field :response_type_url, 4, type: :string, json_name: "responseTypeUrl"
  field :response_streaming, 5, type: :bool, json_name: "responseStreaming"
  field :options, 6, repeated: true, type: Google.Protobuf.Option
  field :syntax, 7, type: Google.Protobuf.Syntax, enum: true

  def transform_module(), do: nil
end

defmodule Google.Protobuf.Mixin do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          root: String.t()
        }

  defstruct [:name, :root]

  field :name, 1, type: :string
  field :root, 2, type: :string

  def transform_module(), do: nil
end
