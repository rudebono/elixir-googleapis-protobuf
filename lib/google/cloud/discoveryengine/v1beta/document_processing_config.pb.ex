defmodule Google.Cloud.Discoveryengine.V1beta.DocumentProcessingConfig.ParsingConfig.DigitalParsingConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3
end

defmodule Google.Cloud.Discoveryengine.V1beta.DocumentProcessingConfig.ParsingConfig.OcrParsingConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :enhanced_document_elements, 1,
    repeated: true,
    type: :string,
    json_name: "enhancedDocumentElements"

  field :use_native_text, 2, type: :bool, json_name: "useNativeText"
end

defmodule Google.Cloud.Discoveryengine.V1beta.DocumentProcessingConfig.ParsingConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  oneof :type_dedicated_config, 0

  field :digital_parsing_config, 1,
    type:
      Google.Cloud.Discoveryengine.V1beta.DocumentProcessingConfig.ParsingConfig.DigitalParsingConfig,
    json_name: "digitalParsingConfig",
    oneof: 0

  field :ocr_parsing_config, 2,
    type:
      Google.Cloud.Discoveryengine.V1beta.DocumentProcessingConfig.ParsingConfig.OcrParsingConfig,
    json_name: "ocrParsingConfig",
    oneof: 0
end

defmodule Google.Cloud.Discoveryengine.V1beta.DocumentProcessingConfig.ParsingConfigOverridesEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :key, 1, type: :string

  field :value, 2,
    type: Google.Cloud.Discoveryengine.V1beta.DocumentProcessingConfig.ParsingConfig
end

defmodule Google.Cloud.Discoveryengine.V1beta.DocumentProcessingConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string

  field :default_parsing_config, 4,
    type: Google.Cloud.Discoveryengine.V1beta.DocumentProcessingConfig.ParsingConfig,
    json_name: "defaultParsingConfig"

  field :parsing_config_overrides, 5,
    repeated: true,
    type:
      Google.Cloud.Discoveryengine.V1beta.DocumentProcessingConfig.ParsingConfigOverridesEntry,
    json_name: "parsingConfigOverrides",
    map: true
end