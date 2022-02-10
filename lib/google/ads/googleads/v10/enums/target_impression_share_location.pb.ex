defmodule Google.Ads.Googleads.V10.Enums.TargetImpressionShareLocationEnum.TargetImpressionShareLocation do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :UNSPECIFIED
          | :UNKNOWN
          | :ANYWHERE_ON_PAGE
          | :TOP_OF_PAGE
          | :ABSOLUTE_TOP_OF_PAGE

  field :UNSPECIFIED, 0
  field :UNKNOWN, 1
  field :ANYWHERE_ON_PAGE, 2
  field :TOP_OF_PAGE, 3
  field :ABSOLUTE_TOP_OF_PAGE, 4
end
defmodule Google.Ads.Googleads.V10.Enums.TargetImpressionShareLocationEnum do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{}

  defstruct []
end
