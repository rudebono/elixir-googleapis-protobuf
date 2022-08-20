defmodule Google.Cloud.Automl.V1.TextClassificationDatasetMetadata do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :classification_type, 1,
    type: Google.Cloud.Automl.V1.ClassificationType,
    json_name: "classificationType",
    enum: true
end

defmodule Google.Cloud.Automl.V1.TextClassificationModelMetadata do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :classification_type, 3,
    type: Google.Cloud.Automl.V1.ClassificationType,
    json_name: "classificationType",
    enum: true
end

defmodule Google.Cloud.Automl.V1.TextExtractionDatasetMetadata do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3
end

defmodule Google.Cloud.Automl.V1.TextExtractionModelMetadata do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3
end

defmodule Google.Cloud.Automl.V1.TextSentimentDatasetMetadata do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :sentiment_max, 1, type: :int32, json_name: "sentimentMax"
end

defmodule Google.Cloud.Automl.V1.TextSentimentModelMetadata do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3
end