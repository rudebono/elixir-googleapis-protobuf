defmodule Google.Actions.Sdk.V2.Settings.Category do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :CATEGORY_UNSPECIFIED, 0
  field :BUSINESS_AND_FINANCE, 2
  field :EDUCATION_AND_REFERENCE, 3
  field :FOOD_AND_DRINK, 4
  field :GAMES_AND_TRIVIA, 5
  field :HEALTH_AND_FITNESS, 6
  field :KIDS_AND_FAMILY, 20
  field :LIFESTYLE, 7
  field :LOCAL, 8
  field :MOVIES_AND_TV, 9
  field :MUSIC_AND_AUDIO, 10
  field :NEWS, 1
  field :NOVELTY_AND_HUMOR, 11
  field :PRODUCTIVITY, 12
  field :SHOPPING, 13
  field :SOCIAL, 14
  field :SPORTS, 15
  field :TRAVEL_AND_TRANSPORTATION, 16
  field :UTILITIES, 17
  field :WEATHER, 18
  field :HOME_CONTROL, 19
end

defmodule Google.Actions.Sdk.V2.Settings do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :project_id, 1, type: :string, json_name: "projectId"
  field :default_locale, 2, type: :string, json_name: "defaultLocale"
  field :enabled_regions, 3, repeated: true, type: :string, json_name: "enabledRegions"
  field :disabled_regions, 4, repeated: true, type: :string, json_name: "disabledRegions"
  field :category, 5, type: Google.Actions.Sdk.V2.Settings.Category, enum: true
  field :uses_transactions_api, 6, type: :bool, json_name: "usesTransactionsApi"
  field :uses_digital_purchase_api, 7, type: :bool, json_name: "usesDigitalPurchaseApi"
  field :uses_interactive_canvas, 8, type: :bool, json_name: "usesInteractiveCanvas"
  field :uses_home_storage, 17, type: :bool, json_name: "usesHomeStorage"
  field :designed_for_family, 9, type: :bool, json_name: "designedForFamily"

  field :contains_alcohol_or_tobacco_content, 11,
    type: :bool,
    json_name: "containsAlcoholOrTobaccoContent"

  field :keeps_mic_open, 12, type: :bool, json_name: "keepsMicOpen"

  field :surface_requirements, 13,
    type: Google.Actions.Sdk.V2.SurfaceRequirements,
    json_name: "surfaceRequirements"

  field :testing_instructions, 14, type: :string, json_name: "testingInstructions"

  field :localized_settings, 15,
    type: Google.Actions.Sdk.V2.LocalizedSettings,
    json_name: "localizedSettings"

  field :account_linking, 16,
    type: Google.Actions.Sdk.V2.AccountLinking,
    json_name: "accountLinking"

  field :selected_android_apps, 20,
    repeated: true,
    type: :string,
    json_name: "selectedAndroidApps"
end
