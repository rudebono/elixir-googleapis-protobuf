defmodule Google.Ads.Googleads.V20.Enums.CriterionCategoryLocaleAvailabilityModeEnum.CriterionCategoryLocaleAvailabilityMode do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :UNSPECIFIED, 0
  field :UNKNOWN, 1
  field :ALL_LOCALES, 2
  field :COUNTRY_AND_ALL_LANGUAGES, 3
  field :LANGUAGE_AND_ALL_COUNTRIES, 4
  field :COUNTRY_AND_LANGUAGE, 5
end

defmodule Google.Ads.Googleads.V20.Enums.CriterionCategoryLocaleAvailabilityModeEnum do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3
end
