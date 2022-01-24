defmodule Google.Cloud.Dialogflow.V2.GcsSources do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          uris: [String.t()]
        }

  defstruct uris: []

  field :uris, 2, repeated: true, type: :string, deprecated: false
end
defmodule Google.Cloud.Dialogflow.V2.GcsDestination do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          uri: String.t()
        }

  defstruct uri: ""

  field :uri, 1, type: :string
end
