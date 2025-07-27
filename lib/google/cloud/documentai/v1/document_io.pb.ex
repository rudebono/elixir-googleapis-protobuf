defmodule Google.Cloud.Documentai.V1.RawDocument do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :content, 1, type: :bytes
  field :mime_type, 2, type: :string, json_name: "mimeType"
  field :display_name, 3, type: :string, json_name: "displayName"
end

defmodule Google.Cloud.Documentai.V1.GcsDocument do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :gcs_uri, 1, type: :string, json_name: "gcsUri"
  field :mime_type, 2, type: :string, json_name: "mimeType"
end

defmodule Google.Cloud.Documentai.V1.GcsDocuments do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :documents, 1, repeated: true, type: Google.Cloud.Documentai.V1.GcsDocument
end

defmodule Google.Cloud.Documentai.V1.GcsPrefix do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :gcs_uri_prefix, 1, type: :string, json_name: "gcsUriPrefix"
end

defmodule Google.Cloud.Documentai.V1.BatchDocumentsInputConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :source, 0

  field :gcs_prefix, 1,
    type: Google.Cloud.Documentai.V1.GcsPrefix,
    json_name: "gcsPrefix",
    oneof: 0

  field :gcs_documents, 2,
    type: Google.Cloud.Documentai.V1.GcsDocuments,
    json_name: "gcsDocuments",
    oneof: 0
end

defmodule Google.Cloud.Documentai.V1.DocumentOutputConfig.GcsOutputConfig.ShardingConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :pages_per_shard, 1, type: :int32, json_name: "pagesPerShard"
  field :pages_overlap, 2, type: :int32, json_name: "pagesOverlap"
end

defmodule Google.Cloud.Documentai.V1.DocumentOutputConfig.GcsOutputConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :gcs_uri, 1, type: :string, json_name: "gcsUri"
  field :field_mask, 2, type: Google.Protobuf.FieldMask, json_name: "fieldMask"

  field :sharding_config, 3,
    type: Google.Cloud.Documentai.V1.DocumentOutputConfig.GcsOutputConfig.ShardingConfig,
    json_name: "shardingConfig"
end

defmodule Google.Cloud.Documentai.V1.DocumentOutputConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :destination, 0

  field :gcs_output_config, 1,
    type: Google.Cloud.Documentai.V1.DocumentOutputConfig.GcsOutputConfig,
    json_name: "gcsOutputConfig",
    oneof: 0
end

defmodule Google.Cloud.Documentai.V1.OcrConfig.Hints do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :language_hints, 1, repeated: true, type: :string, json_name: "languageHints"
end

defmodule Google.Cloud.Documentai.V1.OcrConfig.PremiumFeatures do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :enable_selection_mark_detection, 3,
    type: :bool,
    json_name: "enableSelectionMarkDetection"

  field :compute_style_info, 4, type: :bool, json_name: "computeStyleInfo"
  field :enable_math_ocr, 5, type: :bool, json_name: "enableMathOcr"
end

defmodule Google.Cloud.Documentai.V1.OcrConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :hints, 2, type: Google.Cloud.Documentai.V1.OcrConfig.Hints
  field :enable_native_pdf_parsing, 3, type: :bool, json_name: "enableNativePdfParsing"
  field :enable_image_quality_scores, 4, type: :bool, json_name: "enableImageQualityScores"
  field :advanced_ocr_options, 5, repeated: true, type: :string, json_name: "advancedOcrOptions"
  field :enable_symbol, 6, type: :bool, json_name: "enableSymbol"
  field :compute_style_info, 8, type: :bool, json_name: "computeStyleInfo", deprecated: true

  field :disable_character_boxes_detection, 10,
    type: :bool,
    json_name: "disableCharacterBoxesDetection"

  field :premium_features, 11,
    type: Google.Cloud.Documentai.V1.OcrConfig.PremiumFeatures,
    json_name: "premiumFeatures"
end
