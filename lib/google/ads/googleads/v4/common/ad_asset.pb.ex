defmodule Google.Ads.Googleads.V4.Common.AdTextAsset do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          text: Google.Protobuf.StringValue.t() | nil,
          pinned_field:
            Google.Ads.Googleads.V4.Enums.ServedAssetFieldTypeEnum.ServedAssetFieldType.t()
        }

  defstruct [:text, :pinned_field]

  field :text, 1, type: Google.Protobuf.StringValue

  field :pinned_field, 2,
    type: Google.Ads.Googleads.V4.Enums.ServedAssetFieldTypeEnum.ServedAssetFieldType,
    enum: true
end

defmodule Google.Ads.Googleads.V4.Common.AdImageAsset do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          asset: Google.Protobuf.StringValue.t() | nil
        }

  defstruct [:asset]

  field :asset, 1, type: Google.Protobuf.StringValue
end

defmodule Google.Ads.Googleads.V4.Common.AdVideoAsset do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          asset: Google.Protobuf.StringValue.t() | nil
        }

  defstruct [:asset]

  field :asset, 1, type: Google.Protobuf.StringValue
end

defmodule Google.Ads.Googleads.V4.Common.AdMediaBundleAsset do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          asset: Google.Protobuf.StringValue.t() | nil
        }

  defstruct [:asset]

  field :asset, 1, type: Google.Protobuf.StringValue
end
