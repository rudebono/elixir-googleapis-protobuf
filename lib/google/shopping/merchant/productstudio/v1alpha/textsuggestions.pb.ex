defmodule Google.Shopping.Merchant.Productstudio.V1alpha.GenerateProductTextSuggestionsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false

  field :product_info, 2,
    type: Google.Shopping.Merchant.Productstudio.V1alpha.ProductInfo,
    json_name: "productInfo",
    deprecated: false

  field :output_spec, 3,
    proto3_optional: true,
    type: Google.Shopping.Merchant.Productstudio.V1alpha.OutputSpec,
    json_name: "outputSpec",
    deprecated: false

  field :title_examples, 4,
    repeated: true,
    type: Google.Shopping.Merchant.Productstudio.V1alpha.TitleExample,
    json_name: "titleExamples",
    deprecated: false
end

defmodule Google.Shopping.Merchant.Productstudio.V1alpha.GenerateProductTextSuggestionsResponse.AttributesEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Shopping.Merchant.Productstudio.V1alpha.GenerateProductTextSuggestionsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :title, 1,
    proto3_optional: true,
    type: Google.Shopping.Merchant.Productstudio.V1alpha.ProductTextGenerationSuggestion

  field :description, 2,
    proto3_optional: true,
    type: Google.Shopping.Merchant.Productstudio.V1alpha.ProductTextGenerationSuggestion

  field :attributes, 3,
    repeated: true,
    type:
      Google.Shopping.Merchant.Productstudio.V1alpha.GenerateProductTextSuggestionsResponse.AttributesEntry,
    map: true

  field :metadata, 4,
    proto3_optional: true,
    type: Google.Shopping.Merchant.Productstudio.V1alpha.ProductTextGenerationMetadata
end

defmodule Google.Shopping.Merchant.Productstudio.V1alpha.TitleExample.ProductInfoEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Shopping.Merchant.Productstudio.V1alpha.TitleExample.FinalProductInfoEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Shopping.Merchant.Productstudio.V1alpha.TitleExample do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :product_info, 1,
    repeated: true,
    type: Google.Shopping.Merchant.Productstudio.V1alpha.TitleExample.ProductInfoEntry,
    json_name: "productInfo",
    map: true,
    deprecated: false

  field :category, 2, proto3_optional: true, type: :string, deprecated: false

  field :title_format, 3,
    proto3_optional: true,
    type: :string,
    json_name: "titleFormat",
    deprecated: false

  field :final_product_info, 4,
    repeated: true,
    type: Google.Shopping.Merchant.Productstudio.V1alpha.TitleExample.FinalProductInfoEntry,
    json_name: "finalProductInfo",
    map: true,
    deprecated: false
end

defmodule Google.Shopping.Merchant.Productstudio.V1alpha.ProductTextGenerationMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :metadata, 1, type: Google.Protobuf.Struct
end

defmodule Google.Shopping.Merchant.Productstudio.V1alpha.Image do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  oneof :image, 0

  field :uri, 1, type: :string, oneof: 0
  field :data, 2, type: :bytes, oneof: 0
end

defmodule Google.Shopping.Merchant.Productstudio.V1alpha.ProductInfo.ProductAttributesEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Shopping.Merchant.Productstudio.V1alpha.ProductInfo do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :product_attributes, 1,
    repeated: true,
    type: Google.Shopping.Merchant.Productstudio.V1alpha.ProductInfo.ProductAttributesEntry,
    json_name: "productAttributes",
    map: true,
    deprecated: false

  field :product_image, 2,
    proto3_optional: true,
    type: Google.Shopping.Merchant.Productstudio.V1alpha.Image,
    json_name: "productImage",
    deprecated: false
end

defmodule Google.Shopping.Merchant.Productstudio.V1alpha.OutputSpec do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :workflow_id, 1,
    proto3_optional: true,
    type: :string,
    json_name: "workflowId",
    deprecated: false

  field :tone, 2, proto3_optional: true, type: :string, deprecated: false

  field :editorial_changes, 3,
    proto3_optional: true,
    type: :string,
    json_name: "editorialChanges",
    deprecated: false

  field :target_language, 4,
    proto3_optional: true,
    type: :string,
    json_name: "targetLanguage",
    deprecated: false

  field :attribute_order, 5,
    repeated: true,
    type: :string,
    json_name: "attributeOrder",
    deprecated: false

  field :attribute_separator, 6,
    proto3_optional: true,
    type: :string,
    json_name: "attributeSeparator",
    deprecated: false
end

defmodule Google.Shopping.Merchant.Productstudio.V1alpha.ProductTextGenerationSuggestion do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :text, 1, proto3_optional: true, type: :string
  field :score, 2, proto3_optional: true, type: :float
  field :change_summary, 3, proto3_optional: true, type: :string, json_name: "changeSummary"
end

defmodule Google.Shopping.Merchant.Productstudio.V1alpha.TextSuggestionsService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.shopping.merchant.productstudio.v1alpha.TextSuggestionsService",
    protoc_gen_elixir_version: "0.14.1"

  rpc :GenerateProductTextSuggestions,
      Google.Shopping.Merchant.Productstudio.V1alpha.GenerateProductTextSuggestionsRequest,
      Google.Shopping.Merchant.Productstudio.V1alpha.GenerateProductTextSuggestionsResponse
end

defmodule Google.Shopping.Merchant.Productstudio.V1alpha.TextSuggestionsService.Stub do
  @moduledoc false

  use GRPC.Stub,
    service: Google.Shopping.Merchant.Productstudio.V1alpha.TextSuggestionsService.Service
end
