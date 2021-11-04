defmodule Google.Ads.Googleads.V9.Enums.ServedAssetFieldTypeEnum.ServedAssetFieldType do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :UNSPECIFIED
          | :UNKNOWN
          | :HEADLINE_1
          | :HEADLINE_2
          | :HEADLINE_3
          | :DESCRIPTION_1
          | :DESCRIPTION_2

  field :UNSPECIFIED, 0
  field :UNKNOWN, 1
  field :HEADLINE_1, 2
  field :HEADLINE_2, 3
  field :HEADLINE_3, 4
  field :DESCRIPTION_1, 5
  field :DESCRIPTION_2, 6
end

defmodule Google.Ads.Googleads.V9.Enums.ServedAssetFieldTypeEnum do
  @moduledoc false
  use Protobuf, syntax: :proto3
  @type t :: %__MODULE__{}

  defstruct []

  def transform_module(), do: nil
end
