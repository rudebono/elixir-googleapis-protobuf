defmodule Google.Shopping.Merchant.Productstudio.V1alpha.GenerateProductImageBackgroundRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false

  field :output_config, 2,
    type: Google.Shopping.Merchant.Productstudio.V1alpha.OutputImageConfig,
    json_name: "outputConfig",
    deprecated: false

  field :input_image, 3,
    type: Google.Shopping.Merchant.Productstudio.V1alpha.InputImage,
    json_name: "inputImage",
    deprecated: false

  field :config, 4,
    type: Google.Shopping.Merchant.Productstudio.V1alpha.GenerateImageBackgroundConfig,
    deprecated: false
end

defmodule Google.Shopping.Merchant.Productstudio.V1alpha.GenerateProductImageBackgroundResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :generated_image, 1,
    type: Google.Shopping.Merchant.Productstudio.V1alpha.GeneratedImage,
    json_name: "generatedImage"
end

defmodule Google.Shopping.Merchant.Productstudio.V1alpha.RemoveProductImageBackgroundRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false

  field :output_config, 2,
    type: Google.Shopping.Merchant.Productstudio.V1alpha.OutputImageConfig,
    json_name: "outputConfig",
    deprecated: false

  field :input_image, 3,
    type: Google.Shopping.Merchant.Productstudio.V1alpha.InputImage,
    json_name: "inputImage",
    deprecated: false

  field :config, 4,
    type: Google.Shopping.Merchant.Productstudio.V1alpha.RemoveImageBackgroundConfig,
    deprecated: false
end

defmodule Google.Shopping.Merchant.Productstudio.V1alpha.RemoveProductImageBackgroundResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :generated_image, 1,
    type: Google.Shopping.Merchant.Productstudio.V1alpha.GeneratedImage,
    json_name: "generatedImage"
end

defmodule Google.Shopping.Merchant.Productstudio.V1alpha.UpscaleProductImageRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false

  field :output_config, 2,
    type: Google.Shopping.Merchant.Productstudio.V1alpha.OutputImageConfig,
    json_name: "outputConfig",
    deprecated: false

  field :input_image, 3,
    type: Google.Shopping.Merchant.Productstudio.V1alpha.InputImage,
    json_name: "inputImage",
    deprecated: false
end

defmodule Google.Shopping.Merchant.Productstudio.V1alpha.UpscaleProductImageResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :generated_image, 1,
    type: Google.Shopping.Merchant.Productstudio.V1alpha.GeneratedImage,
    json_name: "generatedImage"
end

defmodule Google.Shopping.Merchant.Productstudio.V1alpha.GeneratedImage do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :image, 0

  field :uri, 2, type: :string, oneof: 0
  field :image_bytes, 3, type: :bytes, json_name: "imageBytes", oneof: 0
  field :name, 1, type: :string, deprecated: false
  field :generation_time, 4, type: Google.Protobuf.Timestamp, json_name: "generationTime"
end

defmodule Google.Shopping.Merchant.Productstudio.V1alpha.OutputImageConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :return_image_uri, 1, type: :bool, json_name: "returnImageUri", deprecated: false
end

defmodule Google.Shopping.Merchant.Productstudio.V1alpha.GenerateImageBackgroundConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :product_description, 1, type: :string, json_name: "productDescription", deprecated: false

  field :background_description, 2,
    type: :string,
    json_name: "backgroundDescription",
    deprecated: false
end

defmodule Google.Shopping.Merchant.Productstudio.V1alpha.RemoveImageBackgroundConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :background_color, 1,
    type: Google.Shopping.Merchant.Productstudio.V1alpha.RgbColor,
    json_name: "backgroundColor",
    deprecated: false
end

defmodule Google.Shopping.Merchant.Productstudio.V1alpha.RgbColor do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :red, 1, type: :int32, deprecated: false
  field :green, 2, type: :int32, deprecated: false
  field :blue, 3, type: :int32, deprecated: false
end

defmodule Google.Shopping.Merchant.Productstudio.V1alpha.ImageService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.shopping.merchant.productstudio.v1alpha.ImageService",
    protoc_gen_elixir_version: "0.15.0"

  rpc :GenerateProductImageBackground,
      Google.Shopping.Merchant.Productstudio.V1alpha.GenerateProductImageBackgroundRequest,
      Google.Shopping.Merchant.Productstudio.V1alpha.GenerateProductImageBackgroundResponse

  rpc :RemoveProductImageBackground,
      Google.Shopping.Merchant.Productstudio.V1alpha.RemoveProductImageBackgroundRequest,
      Google.Shopping.Merchant.Productstudio.V1alpha.RemoveProductImageBackgroundResponse

  rpc :UpscaleProductImage,
      Google.Shopping.Merchant.Productstudio.V1alpha.UpscaleProductImageRequest,
      Google.Shopping.Merchant.Productstudio.V1alpha.UpscaleProductImageResponse
end

defmodule Google.Shopping.Merchant.Productstudio.V1alpha.ImageService.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Shopping.Merchant.Productstudio.V1alpha.ImageService.Service
end
