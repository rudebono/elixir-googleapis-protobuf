defmodule Google.Actions.Sdk.V2.Settings.Category do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :CATEGORY_UNSPECIFIED
          | :BUSINESS_AND_FINANCE
          | :EDUCATION_AND_REFERENCE
          | :FOOD_AND_DRINK
          | :GAMES_AND_TRIVIA
          | :HEALTH_AND_FITNESS
          | :KIDS_AND_FAMILY
          | :LIFESTYLE
          | :LOCAL
          | :MOVIES_AND_TV
          | :MUSIC_AND_AUDIO
          | :NEWS
          | :NOVELTY_AND_HUMOR
          | :PRODUCTIVITY
          | :SHOPPING
          | :SOCIAL
          | :SPORTS
          | :TRAVEL_AND_TRANSPORTATION
          | :UTILITIES
          | :WEATHER
          | :HOME_CONTROL

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
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          project_id: String.t(),
          default_locale: String.t(),
          enabled_regions: [String.t()],
          disabled_regions: [String.t()],
          category: Google.Actions.Sdk.V2.Settings.Category.t(),
          uses_transactions_api: boolean,
          uses_digital_purchase_api: boolean,
          uses_interactive_canvas: boolean,
          uses_home_storage: boolean,
          designed_for_family: boolean,
          contains_alcohol_or_tobacco_content: boolean,
          keeps_mic_open: boolean,
          surface_requirements: Google.Actions.Sdk.V2.SurfaceRequirements.t() | nil,
          testing_instructions: String.t(),
          localized_settings: Google.Actions.Sdk.V2.LocalizedSettings.t() | nil,
          account_linking: Google.Actions.Sdk.V2.AccountLinking.t() | nil,
          selected_android_apps: [String.t()]
        }

  defstruct project_id: "",
            default_locale: "",
            enabled_regions: [],
            disabled_regions: [],
            category: :CATEGORY_UNSPECIFIED,
            uses_transactions_api: false,
            uses_digital_purchase_api: false,
            uses_interactive_canvas: false,
            uses_home_storage: false,
            designed_for_family: false,
            contains_alcohol_or_tobacco_content: false,
            keeps_mic_open: false,
            surface_requirements: nil,
            testing_instructions: "",
            localized_settings: nil,
            account_linking: nil,
            selected_android_apps: []

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
