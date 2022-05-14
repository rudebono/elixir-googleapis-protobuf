defmodule Google.Cloud.Retail.V2alpha.Product.Type do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :TYPE_UNSPECIFIED, 0
  field :PRIMARY, 1
  field :VARIANT, 2
  field :COLLECTION, 3
end
defmodule Google.Cloud.Retail.V2alpha.Product.Availability do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :AVAILABILITY_UNSPECIFIED, 0
  field :IN_STOCK, 1
  field :OUT_OF_STOCK, 2
  field :PREORDER, 3
  field :BACKORDER, 4
end
defmodule Google.Cloud.Retail.V2alpha.Product.AttributesEntry do
  @moduledoc false
  use Protobuf, map: true, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: Google.Cloud.Retail.V2alpha.CustomAttribute
end
defmodule Google.Cloud.Retail.V2alpha.Product do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  oneof :expiration, 0

  field :expire_time, 16, type: Google.Protobuf.Timestamp, json_name: "expireTime", oneof: 0
  field :ttl, 17, type: Google.Protobuf.Duration, oneof: 0, deprecated: false
  field :name, 1, type: :string, deprecated: false
  field :id, 2, type: :string, deprecated: false
  field :type, 3, type: Google.Cloud.Retail.V2alpha.Product.Type, enum: true, deprecated: false
  field :primary_product_id, 4, type: :string, json_name: "primaryProductId"
  field :collection_member_ids, 5, repeated: true, type: :string, json_name: "collectionMemberIds"
  field :gtin, 6, type: :string
  field :categories, 7, repeated: true, type: :string
  field :title, 8, type: :string, deprecated: false
  field :brands, 9, repeated: true, type: :string
  field :description, 10, type: :string
  field :language_code, 11, type: :string, json_name: "languageCode"

  field :attributes, 12,
    repeated: true,
    type: Google.Cloud.Retail.V2alpha.Product.AttributesEntry,
    map: true

  field :tags, 13, repeated: true, type: :string
  field :price_info, 14, type: Google.Cloud.Retail.V2alpha.PriceInfo, json_name: "priceInfo"
  field :rating, 15, type: Google.Cloud.Retail.V2alpha.Rating
  field :available_time, 18, type: Google.Protobuf.Timestamp, json_name: "availableTime"
  field :availability, 19, type: Google.Cloud.Retail.V2alpha.Product.Availability, enum: true
  field :available_quantity, 20, type: Google.Protobuf.Int32Value, json_name: "availableQuantity"

  field :fulfillment_info, 21,
    repeated: true,
    type: Google.Cloud.Retail.V2alpha.FulfillmentInfo,
    json_name: "fulfillmentInfo"

  field :uri, 22, type: :string
  field :images, 23, repeated: true, type: Google.Cloud.Retail.V2alpha.Image
  field :audience, 24, type: Google.Cloud.Retail.V2alpha.Audience
  field :color_info, 25, type: Google.Cloud.Retail.V2alpha.ColorInfo, json_name: "colorInfo"
  field :sizes, 26, repeated: true, type: :string
  field :materials, 27, repeated: true, type: :string
  field :patterns, 28, repeated: true, type: :string
  field :conditions, 29, repeated: true, type: :string
  field :promotions, 34, repeated: true, type: Google.Cloud.Retail.V2alpha.Promotion
  field :publish_time, 33, type: Google.Protobuf.Timestamp, json_name: "publishTime"
  field :retrievable_fields, 30, type: Google.Protobuf.FieldMask, json_name: "retrievableFields"

  field :variants, 31,
    repeated: true,
    type: Google.Cloud.Retail.V2alpha.Product,
    deprecated: false
end
