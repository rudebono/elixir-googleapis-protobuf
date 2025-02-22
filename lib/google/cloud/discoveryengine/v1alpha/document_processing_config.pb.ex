defmodule Google.Cloud.Discoveryengine.V1alpha.DocumentProcessingConfig.ChunkingConfig.LayoutBasedChunkingConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :chunk_size, 1, type: :int32, json_name: "chunkSize"
  field :include_ancestor_headings, 2, type: :bool, json_name: "includeAncestorHeadings"
end

defmodule Google.Cloud.Discoveryengine.V1alpha.DocumentProcessingConfig.ChunkingConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  oneof :chunk_mode, 0

  field :layout_based_chunking_config, 1,
    type:
      Google.Cloud.Discoveryengine.V1alpha.DocumentProcessingConfig.ChunkingConfig.LayoutBasedChunkingConfig,
    json_name: "layoutBasedChunkingConfig",
    oneof: 0
end

defmodule Google.Cloud.Discoveryengine.V1alpha.DocumentProcessingConfig.ParsingConfig.DigitalParsingConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3
end

defmodule Google.Cloud.Discoveryengine.V1alpha.DocumentProcessingConfig.ParsingConfig.OcrParsingConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :enhanced_document_elements, 1,
    repeated: true,
    type: :string,
    json_name: "enhancedDocumentElements",
    deprecated: true

  field :use_native_text, 2, type: :bool, json_name: "useNativeText"
end

defmodule Google.Cloud.Discoveryengine.V1alpha.DocumentProcessingConfig.ParsingConfig.LayoutParsingConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3
end

defmodule Google.Cloud.Discoveryengine.V1alpha.DocumentProcessingConfig.ParsingConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  oneof :type_dedicated_config, 0

  field :digital_parsing_config, 1,
    type:
      Google.Cloud.Discoveryengine.V1alpha.DocumentProcessingConfig.ParsingConfig.DigitalParsingConfig,
    json_name: "digitalParsingConfig",
    oneof: 0

  field :ocr_parsing_config, 2,
    type:
      Google.Cloud.Discoveryengine.V1alpha.DocumentProcessingConfig.ParsingConfig.OcrParsingConfig,
    json_name: "ocrParsingConfig",
    oneof: 0

  field :layout_parsing_config, 3,
    type:
      Google.Cloud.Discoveryengine.V1alpha.DocumentProcessingConfig.ParsingConfig.LayoutParsingConfig,
    json_name: "layoutParsingConfig",
    oneof: 0
end

defmodule Google.Cloud.Discoveryengine.V1alpha.DocumentProcessingConfig.ParsingConfigOverridesEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :key, 1, type: :string

  field :value, 2,
    type: Google.Cloud.Discoveryengine.V1alpha.DocumentProcessingConfig.ParsingConfig
end

defmodule Google.Cloud.Discoveryengine.V1alpha.DocumentProcessingConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string

  field :chunking_config, 3,
    type: Google.Cloud.Discoveryengine.V1alpha.DocumentProcessingConfig.ChunkingConfig,
    json_name: "chunkingConfig"

  field :default_parsing_config, 4,
    type: Google.Cloud.Discoveryengine.V1alpha.DocumentProcessingConfig.ParsingConfig,
    json_name: "defaultParsingConfig"

  field :parsing_config_overrides, 5,
    repeated: true,
    type:
      Google.Cloud.Discoveryengine.V1alpha.DocumentProcessingConfig.ParsingConfigOverridesEntry,
    json_name: "parsingConfigOverrides",
    map: true
end
