defmodule Google.Cloud.Aiplatform.V1beta1.IdMatcher do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          ids: [String.t()]
        }

  defstruct ids: []

  field :ids, 1, repeated: true, type: :string, deprecated: false
end
defmodule Google.Cloud.Aiplatform.V1beta1.FeatureSelector do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          id_matcher: Google.Cloud.Aiplatform.V1beta1.IdMatcher.t() | nil
        }

  defstruct id_matcher: nil

  field :id_matcher, 1,
    type: Google.Cloud.Aiplatform.V1beta1.IdMatcher,
    json_name: "idMatcher",
    deprecated: false
end
