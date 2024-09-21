defmodule Google.Shopping.Css.V1.CssProductInput do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :name, 1, type: :string
  field :final_name, 2, type: :string, json_name: "finalName", deprecated: false
  field :raw_provided_id, 3, type: :string, json_name: "rawProvidedId", deprecated: false
  field :content_language, 4, type: :string, json_name: "contentLanguage", deprecated: false
  field :feed_label, 5, type: :string, json_name: "feedLabel", deprecated: false
  field :freshness_time, 6, type: Google.Protobuf.Timestamp, json_name: "freshnessTime"
  field :attributes, 7, type: Google.Shopping.Css.V1.Attributes

  field :custom_attributes, 8,
    repeated: true,
    type: Google.Shopping.Type.CustomAttribute,
    json_name: "customAttributes"
end

defmodule Google.Shopping.Css.V1.InsertCssProductInputRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false

  field :css_product_input, 2,
    type: Google.Shopping.Css.V1.CssProductInput,
    json_name: "cssProductInput",
    deprecated: false

  field :feed_id, 3, type: :int64, json_name: "feedId", deprecated: false
end

defmodule Google.Shopping.Css.V1.DeleteCssProductInputRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false

  field :supplemental_feed_id, 2,
    proto3_optional: true,
    type: :int64,
    json_name: "supplementalFeedId"
end

defmodule Google.Shopping.Css.V1.CssProductInputsService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.shopping.css.v1.CssProductInputsService",
    protoc_gen_elixir_version: "0.13.0"

  rpc :InsertCssProductInput,
      Google.Shopping.Css.V1.InsertCssProductInputRequest,
      Google.Shopping.Css.V1.CssProductInput

  rpc :DeleteCssProductInput,
      Google.Shopping.Css.V1.DeleteCssProductInputRequest,
      Google.Protobuf.Empty
end

defmodule Google.Shopping.Css.V1.CssProductInputsService.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Shopping.Css.V1.CssProductInputsService.Service
end