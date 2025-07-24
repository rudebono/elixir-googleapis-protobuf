defmodule Google.Cloud.Channel.V1.MediaType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :MEDIA_TYPE_UNSPECIFIED, 0
  field :MEDIA_TYPE_IMAGE, 1
end

defmodule Google.Cloud.Channel.V1.Product do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string

  field :marketing_info, 2,
    type: Google.Cloud.Channel.V1.MarketingInfo,
    json_name: "marketingInfo"
end

defmodule Google.Cloud.Channel.V1.Sku do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string

  field :marketing_info, 2,
    type: Google.Cloud.Channel.V1.MarketingInfo,
    json_name: "marketingInfo"

  field :product, 3, type: Google.Cloud.Channel.V1.Product
end

defmodule Google.Cloud.Channel.V1.MarketingInfo do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :display_name, 1, type: :string, json_name: "displayName"
  field :description, 2, type: :string
  field :default_logo, 3, type: Google.Cloud.Channel.V1.Media, json_name: "defaultLogo"
end

defmodule Google.Cloud.Channel.V1.Media do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :title, 1, type: :string
  field :content, 2, type: :string
  field :type, 3, type: Google.Cloud.Channel.V1.MediaType, enum: true
end
