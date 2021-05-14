defmodule Google.Cloud.Channel.V1.MediaType do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :MEDIA_TYPE_UNSPECIFIED | :MEDIA_TYPE_IMAGE

  field :MEDIA_TYPE_UNSPECIFIED, 0

  field :MEDIA_TYPE_IMAGE, 1
end

defmodule Google.Cloud.Channel.V1.Product do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          marketing_info: Google.Cloud.Channel.V1.MarketingInfo.t() | nil
        }

  defstruct [:name, :marketing_info]

  field :name, 1, type: :string
  field :marketing_info, 2, type: Google.Cloud.Channel.V1.MarketingInfo
end

defmodule Google.Cloud.Channel.V1.Sku do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          marketing_info: Google.Cloud.Channel.V1.MarketingInfo.t() | nil,
          product: Google.Cloud.Channel.V1.Product.t() | nil
        }

  defstruct [:name, :marketing_info, :product]

  field :name, 1, type: :string
  field :marketing_info, 2, type: Google.Cloud.Channel.V1.MarketingInfo
  field :product, 3, type: Google.Cloud.Channel.V1.Product
end

defmodule Google.Cloud.Channel.V1.MarketingInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          display_name: String.t(),
          description: String.t(),
          default_logo: Google.Cloud.Channel.V1.Media.t() | nil
        }

  defstruct [:display_name, :description, :default_logo]

  field :display_name, 1, type: :string
  field :description, 2, type: :string
  field :default_logo, 3, type: Google.Cloud.Channel.V1.Media
end

defmodule Google.Cloud.Channel.V1.Media do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          title: String.t(),
          content: String.t(),
          type: Google.Cloud.Channel.V1.MediaType.t()
        }

  defstruct [:title, :content, :type]

  field :title, 1, type: :string
  field :content, 2, type: :string
  field :type, 3, type: Google.Cloud.Channel.V1.MediaType, enum: true
end
