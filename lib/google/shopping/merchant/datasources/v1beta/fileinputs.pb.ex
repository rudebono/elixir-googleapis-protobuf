defmodule Google.Shopping.Merchant.Datasources.V1beta.FileInput.FileInputType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :FILE_INPUT_TYPE_UNSPECIFIED, 0
  field :UPLOAD, 1
  field :FETCH, 2
  field :GOOGLE_SHEETS, 3
end

defmodule Google.Shopping.Merchant.Datasources.V1beta.FileInput.FetchSettings.Frequency do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :FREQUENCY_UNSPECIFIED, 0
  field :FREQUENCY_DAILY, 1
  field :FREQUENCY_WEEKLY, 2
  field :FREQUENCY_MONTHLY, 3
end

defmodule Google.Shopping.Merchant.Datasources.V1beta.FileInput.FetchSettings do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :enabled, 1, type: :bool, deprecated: false
  field :day_of_month, 2, type: :int32, json_name: "dayOfMonth", deprecated: false
  field :time_of_day, 3, type: Google.Type.TimeOfDay, json_name: "timeOfDay", deprecated: false

  field :day_of_week, 4,
    type: Google.Type.DayOfWeek,
    json_name: "dayOfWeek",
    enum: true,
    deprecated: false

  field :time_zone, 5, type: :string, json_name: "timeZone", deprecated: false

  field :frequency, 6,
    type: Google.Shopping.Merchant.Datasources.V1beta.FileInput.FetchSettings.Frequency,
    enum: true,
    deprecated: false

  field :fetch_uri, 7, type: :string, json_name: "fetchUri", deprecated: false
  field :username, 8, type: :string, deprecated: false
  field :password, 9, type: :string, deprecated: false
end

defmodule Google.Shopping.Merchant.Datasources.V1beta.FileInput do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :fetch_settings, 1,
    type: Google.Shopping.Merchant.Datasources.V1beta.FileInput.FetchSettings,
    json_name: "fetchSettings",
    deprecated: false

  field :file_name, 2, type: :string, json_name: "fileName", deprecated: false

  field :file_input_type, 3,
    type: Google.Shopping.Merchant.Datasources.V1beta.FileInput.FileInputType,
    json_name: "fileInputType",
    enum: true,
    deprecated: false
end
