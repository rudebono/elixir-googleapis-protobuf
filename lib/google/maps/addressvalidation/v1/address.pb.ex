defmodule Google.Maps.Addressvalidation.V1.AddressComponent.ConfirmationLevel do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :CONFIRMATION_LEVEL_UNSPECIFIED, 0
  field :CONFIRMED, 1
  field :UNCONFIRMED_BUT_PLAUSIBLE, 2
  field :UNCONFIRMED_AND_SUSPICIOUS, 3
end

defmodule Google.Maps.Addressvalidation.V1.Address do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :formatted_address, 2, type: :string, json_name: "formattedAddress"
  field :postal_address, 3, type: Google.Type.PostalAddress, json_name: "postalAddress"

  field :address_components, 4,
    repeated: true,
    type: Google.Maps.Addressvalidation.V1.AddressComponent,
    json_name: "addressComponents",
    deprecated: false

  field :missing_component_types, 5,
    repeated: true,
    type: :string,
    json_name: "missingComponentTypes"

  field :unconfirmed_component_types, 6,
    repeated: true,
    type: :string,
    json_name: "unconfirmedComponentTypes"

  field :unresolved_tokens, 7, repeated: true, type: :string, json_name: "unresolvedTokens"
end

defmodule Google.Maps.Addressvalidation.V1.AddressComponent do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :component_name, 1,
    type: Google.Maps.Addressvalidation.V1.ComponentName,
    json_name: "componentName"

  field :component_type, 2, type: :string, json_name: "componentType"

  field :confirmation_level, 3,
    type: Google.Maps.Addressvalidation.V1.AddressComponent.ConfirmationLevel,
    json_name: "confirmationLevel",
    enum: true

  field :inferred, 4, type: :bool
  field :spell_corrected, 5, type: :bool, json_name: "spellCorrected"
  field :replaced, 6, type: :bool
  field :unexpected, 7, type: :bool
end

defmodule Google.Maps.Addressvalidation.V1.ComponentName do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :text, 1, type: :string
  field :language_code, 2, type: :string, json_name: "languageCode"
end