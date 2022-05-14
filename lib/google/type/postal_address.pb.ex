defmodule Google.Type.PostalAddress do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :revision, 1, type: :int32
  field :region_code, 2, type: :string, json_name: "regionCode"
  field :language_code, 3, type: :string, json_name: "languageCode"
  field :postal_code, 4, type: :string, json_name: "postalCode"
  field :sorting_code, 5, type: :string, json_name: "sortingCode"
  field :administrative_area, 6, type: :string, json_name: "administrativeArea"
  field :locality, 7, type: :string
  field :sublocality, 8, type: :string
  field :address_lines, 9, repeated: true, type: :string, json_name: "addressLines"
  field :recipients, 10, repeated: true, type: :string
  field :organization, 11, type: :string
end
