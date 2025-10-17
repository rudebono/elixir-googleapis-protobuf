defmodule Google.Ads.Googleads.V22.Services.GenerateTextRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :context, 0

  field :customer_id, 1, type: :string, json_name: "customerId", deprecated: false

  field :asset_field_types, 2,
    repeated: true,
    type: Google.Ads.Googleads.V22.Enums.AssetFieldTypeEnum.AssetFieldType,
    json_name: "assetFieldTypes",
    enum: true,
    deprecated: false

  field :final_url, 5, type: :string, json_name: "finalUrl", deprecated: false
  field :freeform_prompt, 6, type: :string, json_name: "freeformPrompt", deprecated: false
  field :keywords, 7, repeated: true, type: :string, deprecated: false

  field :existing_generation_context, 3,
    type: Google.Ads.Googleads.V22.Services.AssetGenerationExistingContext,
    json_name: "existingGenerationContext",
    oneof: 0,
    deprecated: false

  field :advertising_channel_type, 4,
    type: Google.Ads.Googleads.V22.Enums.AdvertisingChannelTypeEnum.AdvertisingChannelType,
    json_name: "advertisingChannelType",
    enum: true,
    oneof: 0,
    deprecated: false
end

defmodule Google.Ads.Googleads.V22.Services.GenerateTextResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :generated_text, 1,
    repeated: true,
    type: Google.Ads.Googleads.V22.Services.GeneratedText,
    json_name: "generatedText"
end

defmodule Google.Ads.Googleads.V22.Services.GeneratedText do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :text, 1, type: :string

  field :asset_field_type, 2,
    type: Google.Ads.Googleads.V22.Enums.AssetFieldTypeEnum.AssetFieldType,
    json_name: "assetFieldType",
    enum: true
end

defmodule Google.Ads.Googleads.V22.Services.GenerateImagesRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :context, 0

  oneof :generation_type, 1

  field :customer_id, 1, type: :string, json_name: "customerId", deprecated: false

  field :asset_field_types, 4,
    repeated: true,
    type: Google.Ads.Googleads.V22.Enums.AssetFieldTypeEnum.AssetFieldType,
    json_name: "assetFieldTypes",
    enum: true,
    deprecated: false

  field :advertising_channel_type, 2,
    type: Google.Ads.Googleads.V22.Enums.AdvertisingChannelTypeEnum.AdvertisingChannelType,
    json_name: "advertisingChannelType",
    enum: true,
    oneof: 0,
    deprecated: false

  field :final_url_generation, 5,
    type: Google.Ads.Googleads.V22.Services.FinalUrlImageGenerationInput,
    json_name: "finalUrlGeneration",
    oneof: 1,
    deprecated: false

  field :freeform_generation, 6,
    type: Google.Ads.Googleads.V22.Services.FreeformImageGenerationInput,
    json_name: "freeformGeneration",
    oneof: 1,
    deprecated: false

  field :product_recontext_generation, 7,
    type: Google.Ads.Googleads.V22.Services.ProductRecontextGenerationImageInput,
    json_name: "productRecontextGeneration",
    oneof: 1,
    deprecated: false
end

defmodule Google.Ads.Googleads.V22.Services.FinalUrlImageGenerationInput do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :final_url, 1, type: :string, json_name: "finalUrl", deprecated: false
end

defmodule Google.Ads.Googleads.V22.Services.FreeformImageGenerationInput do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :freeform_prompt, 1, type: :string, json_name: "freeformPrompt", deprecated: false
end

defmodule Google.Ads.Googleads.V22.Services.ProductRecontextGenerationImageInput do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :prompt, 1, type: :string, deprecated: false

  field :source_images, 2,
    repeated: true,
    type: Google.Ads.Googleads.V22.Services.SourceImage,
    json_name: "sourceImages",
    deprecated: false
end

defmodule Google.Ads.Googleads.V22.Services.GenerateImagesResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :generated_images, 1,
    repeated: true,
    type: Google.Ads.Googleads.V22.Services.GeneratedImage,
    json_name: "generatedImages"
end

defmodule Google.Ads.Googleads.V22.Services.SourceImage do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :image, 0

  field :image_data, 1, type: :bytes, json_name: "imageData", oneof: 0, deprecated: false
end

defmodule Google.Ads.Googleads.V22.Services.GeneratedImage do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :image_temporary_url, 1, type: :string, json_name: "imageTemporaryUrl"

  field :asset_field_type, 2,
    type: Google.Ads.Googleads.V22.Enums.AssetFieldTypeEnum.AssetFieldType,
    json_name: "assetFieldType",
    enum: true
end

defmodule Google.Ads.Googleads.V22.Services.AssetGenerationExistingContext do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :existing_context, 0

  field :existing_asset_group, 1,
    type: :string,
    json_name: "existingAssetGroup",
    oneof: 0,
    deprecated: false

  field :existing_ad_group_ad, 2,
    type: :string,
    json_name: "existingAdGroupAd",
    oneof: 0,
    deprecated: false
end

defmodule Google.Ads.Googleads.V22.Services.AssetGenerationService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.ads.googleads.v22.services.AssetGenerationService",
    protoc_gen_elixir_version: "0.15.0"

  rpc :GenerateText,
      Google.Ads.Googleads.V22.Services.GenerateTextRequest,
      Google.Ads.Googleads.V22.Services.GenerateTextResponse

  rpc :GenerateImages,
      Google.Ads.Googleads.V22.Services.GenerateImagesRequest,
      Google.Ads.Googleads.V22.Services.GenerateImagesResponse
end

defmodule Google.Ads.Googleads.V22.Services.AssetGenerationService.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Ads.Googleads.V22.Services.AssetGenerationService.Service
end
