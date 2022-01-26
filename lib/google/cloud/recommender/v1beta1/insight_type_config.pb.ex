defmodule Google.Cloud.Recommender.V1beta1.InsightTypeConfig.AnnotationsEntry do
  @moduledoc false
  use Protobuf, map: true, syntax: :proto3

  @type t :: %__MODULE__{
          key: String.t(),
          value: String.t()
        }

  defstruct key: "",
            value: ""

  field :key, 1, type: :string
  field :value, 2, type: :string
end
defmodule Google.Cloud.Recommender.V1beta1.InsightTypeConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          insight_type_generation_config:
            Google.Cloud.Recommender.V1beta1.InsightTypeGenerationConfig.t() | nil,
          etag: String.t(),
          update_time: Google.Protobuf.Timestamp.t() | nil,
          revision_id: String.t(),
          annotations: %{String.t() => String.t()},
          display_name: String.t()
        }

  defstruct name: "",
            insight_type_generation_config: nil,
            etag: "",
            update_time: nil,
            revision_id: "",
            annotations: %{},
            display_name: ""

  field :name, 1, type: :string

  field :insight_type_generation_config, 2,
    type: Google.Cloud.Recommender.V1beta1.InsightTypeGenerationConfig,
    json_name: "insightTypeGenerationConfig"

  field :etag, 3, type: :string
  field :update_time, 4, type: Google.Protobuf.Timestamp, json_name: "updateTime"
  field :revision_id, 5, type: :string, json_name: "revisionId", deprecated: false

  field :annotations, 6,
    repeated: true,
    type: Google.Cloud.Recommender.V1beta1.InsightTypeConfig.AnnotationsEntry,
    map: true

  field :display_name, 7, type: :string, json_name: "displayName"
end
defmodule Google.Cloud.Recommender.V1beta1.InsightTypeGenerationConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          params: Google.Protobuf.Struct.t() | nil
        }

  defstruct params: nil

  field :params, 1, type: Google.Protobuf.Struct
end
