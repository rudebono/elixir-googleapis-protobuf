defmodule Google.Cloud.Retail.V2alpha.Product.Type do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :TYPE_UNSPECIFIED | :PRIMARY | :VARIANT | :COLLECTION

  field :TYPE_UNSPECIFIED, 0

  field :PRIMARY, 1

  field :VARIANT, 2

  field :COLLECTION, 3
end

defmodule Google.Cloud.Retail.V2alpha.Product.Availability do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer | :AVAILABILITY_UNSPECIFIED | :IN_STOCK | :OUT_OF_STOCK | :PREORDER | :BACKORDER

  field :AVAILABILITY_UNSPECIFIED, 0

  field :IN_STOCK, 1

  field :OUT_OF_STOCK, 2

  field :PREORDER, 3

  field :BACKORDER, 4
end

defmodule Google.Cloud.Retail.V2alpha.Product.AttributesEntry do
  @moduledoc false
  use Protobuf, map: true, syntax: :proto3

  @type t :: %__MODULE__{
          key: String.t(),
          value: Google.Cloud.Retail.V2alpha.CustomAttribute.t() | nil
        }

  defstruct [:key, :value]

  field :key, 1, type: :string
  field :value, 2, type: Google.Cloud.Retail.V2alpha.CustomAttribute
end

defmodule Google.Cloud.Retail.V2alpha.Product do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          id: String.t(),
          type: Google.Cloud.Retail.V2alpha.Product.Type.t(),
          primary_product_id: String.t(),
          categories: [String.t()],
          title: String.t(),
          description: String.t(),
          attributes: %{String.t() => Google.Cloud.Retail.V2alpha.CustomAttribute.t() | nil},
          tags: [String.t()],
          price_info: Google.Cloud.Retail.V2alpha.PriceInfo.t() | nil,
          available_time: Google.Protobuf.Timestamp.t() | nil,
          availability: Google.Cloud.Retail.V2alpha.Product.Availability.t(),
          available_quantity: Google.Protobuf.Int32Value.t() | nil,
          uri: String.t(),
          images: [Google.Cloud.Retail.V2alpha.Image.t()]
        }

  defstruct [
    :name,
    :id,
    :type,
    :primary_product_id,
    :categories,
    :title,
    :description,
    :attributes,
    :tags,
    :price_info,
    :available_time,
    :availability,
    :available_quantity,
    :uri,
    :images
  ]

  field :name, 1, type: :string
  field :id, 2, type: :string
  field :type, 3, type: Google.Cloud.Retail.V2alpha.Product.Type, enum: true
  field :primary_product_id, 4, type: :string
  field :categories, 7, repeated: true, type: :string
  field :title, 8, type: :string
  field :description, 10, type: :string

  field :attributes, 12,
    repeated: true,
    type: Google.Cloud.Retail.V2alpha.Product.AttributesEntry,
    map: true

  field :tags, 13, repeated: true, type: :string
  field :price_info, 14, type: Google.Cloud.Retail.V2alpha.PriceInfo
  field :available_time, 18, type: Google.Protobuf.Timestamp
  field :availability, 19, type: Google.Cloud.Retail.V2alpha.Product.Availability, enum: true
  field :available_quantity, 20, type: Google.Protobuf.Int32Value
  field :uri, 22, type: :string
  field :images, 23, repeated: true, type: Google.Cloud.Retail.V2alpha.Image
end
