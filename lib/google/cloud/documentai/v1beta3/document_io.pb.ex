defmodule Google.Cloud.Documentai.V1beta3.RawDocument do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :content, 1, type: :bytes
  field :mime_type, 2, type: :string, json_name: "mimeType"
end

defmodule Google.Cloud.Documentai.V1beta3.GcsDocument do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :gcs_uri, 1, type: :string, json_name: "gcsUri"
  field :mime_type, 2, type: :string, json_name: "mimeType"
end

defmodule Google.Cloud.Documentai.V1beta3.GcsDocuments do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :documents, 1, repeated: true, type: Google.Cloud.Documentai.V1beta3.GcsDocument
end

defmodule Google.Cloud.Documentai.V1beta3.GcsPrefix do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :gcs_uri_prefix, 1, type: :string, json_name: "gcsUriPrefix"
end

defmodule Google.Cloud.Documentai.V1beta3.BatchDocumentsInputConfig do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  oneof :source, 0

  field :gcs_prefix, 1,
    type: Google.Cloud.Documentai.V1beta3.GcsPrefix,
    json_name: "gcsPrefix",
    oneof: 0

  field :gcs_documents, 2,
    type: Google.Cloud.Documentai.V1beta3.GcsDocuments,
    json_name: "gcsDocuments",
    oneof: 0
end

defmodule Google.Cloud.Documentai.V1beta3.DocumentOutputConfig.GcsOutputConfig.ShardingConfig do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :pages_per_shard, 1, type: :int32, json_name: "pagesPerShard"
  field :pages_overlap, 2, type: :int32, json_name: "pagesOverlap"
end

defmodule Google.Cloud.Documentai.V1beta3.DocumentOutputConfig.GcsOutputConfig do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :gcs_uri, 1, type: :string, json_name: "gcsUri"
  field :field_mask, 2, type: Google.Protobuf.FieldMask, json_name: "fieldMask"

  field :sharding_config, 3,
    type: Google.Cloud.Documentai.V1beta3.DocumentOutputConfig.GcsOutputConfig.ShardingConfig,
    json_name: "shardingConfig"
end

defmodule Google.Cloud.Documentai.V1beta3.DocumentOutputConfig do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  oneof :destination, 0

  field :gcs_output_config, 1,
    type: Google.Cloud.Documentai.V1beta3.DocumentOutputConfig.GcsOutputConfig,
    json_name: "gcsOutputConfig",
    oneof: 0
end

defmodule Google.Cloud.Documentai.V1beta3.OcrConfig.Hints do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :language_hints, 1, repeated: true, type: :string, json_name: "languageHints"
end

defmodule Google.Cloud.Documentai.V1beta3.OcrConfig do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :hints, 2, type: Google.Cloud.Documentai.V1beta3.OcrConfig.Hints
  field :enable_native_pdf_parsing, 3, type: :bool, json_name: "enableNativePdfParsing"
  field :enable_image_quality_scores, 4, type: :bool, json_name: "enableImageQualityScores"
  field :advanced_ocr_options, 5, repeated: true, type: :string, json_name: "advancedOcrOptions"
  field :enable_symbol, 6, type: :bool, json_name: "enableSymbol"
end