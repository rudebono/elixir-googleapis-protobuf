defmodule Google.Cloud.Vision.V1p1beta1.WebDetection.WebEntity do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :entity_id, 1, type: :string, json_name: "entityId"
  field :score, 2, type: :float
  field :description, 3, type: :string
end
defmodule Google.Cloud.Vision.V1p1beta1.WebDetection.WebImage do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :url, 1, type: :string
  field :score, 2, type: :float
end
defmodule Google.Cloud.Vision.V1p1beta1.WebDetection.WebPage do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :url, 1, type: :string
  field :score, 2, type: :float
  field :page_title, 3, type: :string, json_name: "pageTitle"

  field :full_matching_images, 4,
    repeated: true,
    type: Google.Cloud.Vision.V1p1beta1.WebDetection.WebImage,
    json_name: "fullMatchingImages"

  field :partial_matching_images, 5,
    repeated: true,
    type: Google.Cloud.Vision.V1p1beta1.WebDetection.WebImage,
    json_name: "partialMatchingImages"
end
defmodule Google.Cloud.Vision.V1p1beta1.WebDetection.WebLabel do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :label, 1, type: :string
  field :language_code, 2, type: :string, json_name: "languageCode"
end
defmodule Google.Cloud.Vision.V1p1beta1.WebDetection do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :web_entities, 1,
    repeated: true,
    type: Google.Cloud.Vision.V1p1beta1.WebDetection.WebEntity,
    json_name: "webEntities"

  field :full_matching_images, 2,
    repeated: true,
    type: Google.Cloud.Vision.V1p1beta1.WebDetection.WebImage,
    json_name: "fullMatchingImages"

  field :partial_matching_images, 3,
    repeated: true,
    type: Google.Cloud.Vision.V1p1beta1.WebDetection.WebImage,
    json_name: "partialMatchingImages"

  field :pages_with_matching_images, 4,
    repeated: true,
    type: Google.Cloud.Vision.V1p1beta1.WebDetection.WebPage,
    json_name: "pagesWithMatchingImages"

  field :visually_similar_images, 6,
    repeated: true,
    type: Google.Cloud.Vision.V1p1beta1.WebDetection.WebImage,
    json_name: "visuallySimilarImages"

  field :best_guess_labels, 8,
    repeated: true,
    type: Google.Cloud.Vision.V1p1beta1.WebDetection.WebLabel,
    json_name: "bestGuessLabels"
end
