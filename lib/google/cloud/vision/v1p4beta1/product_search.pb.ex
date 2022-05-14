defmodule Google.Cloud.Vision.V1p4beta1.ProductSearchParams do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :bounding_poly, 9,
    type: Google.Cloud.Vision.V1p4beta1.BoundingPoly,
    json_name: "boundingPoly"

  field :product_set, 6, type: :string, json_name: "productSet", deprecated: false
  field :product_categories, 7, repeated: true, type: :string, json_name: "productCategories"
  field :filter, 8, type: :string
end
defmodule Google.Cloud.Vision.V1p4beta1.ProductSearchResults.Result do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :product, 1, type: Google.Cloud.Vision.V1p4beta1.Product
  field :score, 2, type: :float
  field :image, 3, type: :string
end
defmodule Google.Cloud.Vision.V1p4beta1.ProductSearchResults.ObjectAnnotation do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :mid, 1, type: :string
  field :language_code, 2, type: :string, json_name: "languageCode"
  field :name, 3, type: :string
  field :score, 4, type: :float
end
defmodule Google.Cloud.Vision.V1p4beta1.ProductSearchResults.GroupedResult do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :bounding_poly, 1,
    type: Google.Cloud.Vision.V1p4beta1.BoundingPoly,
    json_name: "boundingPoly"

  field :results, 2,
    repeated: true,
    type: Google.Cloud.Vision.V1p4beta1.ProductSearchResults.Result

  field :object_annotations, 3,
    repeated: true,
    type: Google.Cloud.Vision.V1p4beta1.ProductSearchResults.ObjectAnnotation,
    json_name: "objectAnnotations"
end
defmodule Google.Cloud.Vision.V1p4beta1.ProductSearchResults do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :index_time, 2, type: Google.Protobuf.Timestamp, json_name: "indexTime"

  field :results, 5,
    repeated: true,
    type: Google.Cloud.Vision.V1p4beta1.ProductSearchResults.Result

  field :product_grouped_results, 6,
    repeated: true,
    type: Google.Cloud.Vision.V1p4beta1.ProductSearchResults.GroupedResult,
    json_name: "productGroupedResults"
end
