defmodule Google.Cloud.Automl.V1beta1.TextClassificationDatasetMetadata do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          classification_type: Google.Cloud.Automl.V1beta1.ClassificationType.t()
        }

  defstruct classification_type: :CLASSIFICATION_TYPE_UNSPECIFIED

  field :classification_type, 1,
    type: Google.Cloud.Automl.V1beta1.ClassificationType,
    json_name: "classificationType",
    enum: true
end
defmodule Google.Cloud.Automl.V1beta1.TextClassificationModelMetadata do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          classification_type: Google.Cloud.Automl.V1beta1.ClassificationType.t()
        }

  defstruct classification_type: :CLASSIFICATION_TYPE_UNSPECIFIED

  field :classification_type, 3,
    type: Google.Cloud.Automl.V1beta1.ClassificationType,
    json_name: "classificationType",
    enum: true
end
defmodule Google.Cloud.Automl.V1beta1.TextExtractionDatasetMetadata do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{}

  defstruct []
end
defmodule Google.Cloud.Automl.V1beta1.TextExtractionModelMetadata do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          model_hint: String.t()
        }

  defstruct model_hint: ""

  field :model_hint, 3, type: :string, json_name: "modelHint"
end
defmodule Google.Cloud.Automl.V1beta1.TextSentimentDatasetMetadata do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          sentiment_max: integer
        }

  defstruct sentiment_max: 0

  field :sentiment_max, 1, type: :int32, json_name: "sentimentMax"
end
defmodule Google.Cloud.Automl.V1beta1.TextSentimentModelMetadata do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{}

  defstruct []
end
