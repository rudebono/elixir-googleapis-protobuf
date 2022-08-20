defmodule Google.Cloud.Bigquery.Dataexchange.Common.Category do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :CATEGORY_UNSPECIFIED, 0
  field :CATEGORY_OTHERS, 1
  field :CATEGORY_ADVERTISING_AND_MARKETING, 2
  field :CATEGORY_COMMERCE, 3
  field :CATEGORY_CLIMATE_AND_ENVIRONMENT, 4
  field :CATEGORY_DEMOGRAPHICS, 5
  field :CATEGORY_ECONOMICS, 6
  field :CATEGORY_EDUCATION, 7
  field :CATEGORY_ENERGY, 8
  field :CATEGORY_FINANCIAL, 9
  field :CATEGORY_GAMING, 10
  field :CATEGORY_GEOSPATIAL, 11
  field :CATEGORY_HEALTHCARE_AND_LIFE_SCIENCE, 12
  field :CATEGORY_MEDIA, 13
  field :CATEGORY_PUBLIC_SECTOR, 14
  field :CATEGORY_RETAIL, 15
  field :CATEGORY_SPORTS, 16
  field :CATEGORY_SCIENCE_AND_RESEARCH, 17
  field :CATEGORY_TRANSPORTATION_AND_LOGISTICS, 18
  field :CATEGORY_TRAVEL_AND_TOURISM, 19
end