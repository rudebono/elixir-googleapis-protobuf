defmodule Google.Cloud.Vision.V1p3beta1.WebDetection.WebEntity do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          entity_id: String.t(),
          score: float | :infinity | :negative_infinity | :nan,
          description: String.t()
        }

  defstruct [:entity_id, :score, :description]

  field :entity_id, 1, type: :string
  field :score, 2, type: :float
  field :description, 3, type: :string
end

defmodule Google.Cloud.Vision.V1p3beta1.WebDetection.WebImage do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          url: String.t(),
          score: float | :infinity | :negative_infinity | :nan
        }

  defstruct [:url, :score]

  field :url, 1, type: :string
  field :score, 2, type: :float
end

defmodule Google.Cloud.Vision.V1p3beta1.WebDetection.WebPage do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          url: String.t(),
          score: float | :infinity | :negative_infinity | :nan,
          page_title: String.t(),
          full_matching_images: [Google.Cloud.Vision.V1p3beta1.WebDetection.WebImage.t()],
          partial_matching_images: [Google.Cloud.Vision.V1p3beta1.WebDetection.WebImage.t()]
        }

  defstruct [:url, :score, :page_title, :full_matching_images, :partial_matching_images]

  field :url, 1, type: :string
  field :score, 2, type: :float
  field :page_title, 3, type: :string

  field :full_matching_images, 4,
    repeated: true,
    type: Google.Cloud.Vision.V1p3beta1.WebDetection.WebImage

  field :partial_matching_images, 5,
    repeated: true,
    type: Google.Cloud.Vision.V1p3beta1.WebDetection.WebImage
end

defmodule Google.Cloud.Vision.V1p3beta1.WebDetection.WebLabel do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          label: String.t(),
          language_code: String.t()
        }

  defstruct [:label, :language_code]

  field :label, 1, type: :string
  field :language_code, 2, type: :string
end

defmodule Google.Cloud.Vision.V1p3beta1.WebDetection do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          web_entities: [Google.Cloud.Vision.V1p3beta1.WebDetection.WebEntity.t()],
          full_matching_images: [Google.Cloud.Vision.V1p3beta1.WebDetection.WebImage.t()],
          partial_matching_images: [Google.Cloud.Vision.V1p3beta1.WebDetection.WebImage.t()],
          pages_with_matching_images: [Google.Cloud.Vision.V1p3beta1.WebDetection.WebPage.t()],
          visually_similar_images: [Google.Cloud.Vision.V1p3beta1.WebDetection.WebImage.t()],
          best_guess_labels: [Google.Cloud.Vision.V1p3beta1.WebDetection.WebLabel.t()]
        }

  defstruct [
    :web_entities,
    :full_matching_images,
    :partial_matching_images,
    :pages_with_matching_images,
    :visually_similar_images,
    :best_guess_labels
  ]

  field :web_entities, 1,
    repeated: true,
    type: Google.Cloud.Vision.V1p3beta1.WebDetection.WebEntity

  field :full_matching_images, 2,
    repeated: true,
    type: Google.Cloud.Vision.V1p3beta1.WebDetection.WebImage

  field :partial_matching_images, 3,
    repeated: true,
    type: Google.Cloud.Vision.V1p3beta1.WebDetection.WebImage

  field :pages_with_matching_images, 4,
    repeated: true,
    type: Google.Cloud.Vision.V1p3beta1.WebDetection.WebPage

  field :visually_similar_images, 6,
    repeated: true,
    type: Google.Cloud.Vision.V1p3beta1.WebDetection.WebImage

  field :best_guess_labels, 8,
    repeated: true,
    type: Google.Cloud.Vision.V1p3beta1.WebDetection.WebLabel
end
