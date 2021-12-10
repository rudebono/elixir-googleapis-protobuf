defmodule Google.Cloud.Vision.V1p4beta1.FaceRecognitionParams do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          celebrity_set: [String.t()]
        }

  defstruct celebrity_set: []

  field :celebrity_set, 1, repeated: true, type: :string, json_name: "celebritySet"
end
defmodule Google.Cloud.Vision.V1p4beta1.Celebrity do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          display_name: String.t(),
          description: String.t()
        }

  defstruct name: "",
            display_name: "",
            description: ""

  field :name, 1, type: :string
  field :display_name, 2, type: :string, json_name: "displayName"
  field :description, 3, type: :string
end
defmodule Google.Cloud.Vision.V1p4beta1.FaceRecognitionResult do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          celebrity: Google.Cloud.Vision.V1p4beta1.Celebrity.t() | nil,
          confidence: float | :infinity | :negative_infinity | :nan
        }

  defstruct celebrity: nil,
            confidence: 0.0

  field :celebrity, 1, type: Google.Cloud.Vision.V1p4beta1.Celebrity
  field :confidence, 2, type: :float
end
