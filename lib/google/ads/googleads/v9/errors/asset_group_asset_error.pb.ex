defmodule Google.Ads.Googleads.V9.Errors.AssetGroupAssetErrorEnum.AssetGroupAssetError do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :UNSPECIFIED
          | :UNKNOWN
          | :DUPLICATE_RESOURCE
          | :EXPANDABLE_TAGS_NOT_ALLOWED_IN_DESCRIPTION
          | :AD_CUSTOMIZER_NOT_SUPPORTED

  field :UNSPECIFIED, 0
  field :UNKNOWN, 1
  field :DUPLICATE_RESOURCE, 2
  field :EXPANDABLE_TAGS_NOT_ALLOWED_IN_DESCRIPTION, 3
  field :AD_CUSTOMIZER_NOT_SUPPORTED, 4
end

defmodule Google.Ads.Googleads.V9.Errors.AssetGroupAssetErrorEnum do
  @moduledoc false
  use Protobuf, syntax: :proto3
  @type t :: %__MODULE__{}

  defstruct []

  def transform_module(), do: nil
end
