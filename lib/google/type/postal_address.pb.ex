defmodule Google.Type.PostalAddress do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          revision: integer,
          region_code: String.t(),
          language_code: String.t(),
          postal_code: String.t(),
          sorting_code: String.t(),
          administrative_area: String.t(),
          locality: String.t(),
          sublocality: String.t(),
          address_lines: [String.t()],
          recipients: [String.t()],
          organization: String.t()
        }

  defstruct revision: 0,
            region_code: "",
            language_code: "",
            postal_code: "",
            sorting_code: "",
            administrative_area: "",
            locality: "",
            sublocality: "",
            address_lines: [],
            recipients: [],
            organization: ""

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
