defmodule Google.Ads.Googleads.V6.Enums.DsaPageFeedCriterionFieldEnum.DsaPageFeedCriterionField do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :UNSPECIFIED | :UNKNOWN | :PAGE_URL | :LABEL

  field :UNSPECIFIED, 0

  field :UNKNOWN, 1

  field :PAGE_URL, 2

  field :LABEL, 3
end

defmodule Google.Ads.Googleads.V6.Enums.DsaPageFeedCriterionFieldEnum do
  @moduledoc false
  use Protobuf, syntax: :proto3
  @type t :: %__MODULE__{}

  defstruct []
end
