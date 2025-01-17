defmodule Google.Apps.Script.Type.Calendar.CalendarAddOnManifest.EventAccess do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :UNSPECIFIED, 0
  field :METADATA, 1
  field :READ, 3
  field :WRITE, 4
  field :READ_WRITE, 5
end

defmodule Google.Apps.Script.Type.Calendar.CalendarAddOnManifest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :homepage_trigger, 6,
    type: Google.Apps.Script.Type.HomepageExtensionPoint,
    json_name: "homepageTrigger"

  field :conference_solution, 3,
    repeated: true,
    type: Google.Apps.Script.Type.Calendar.ConferenceSolution,
    json_name: "conferenceSolution"

  field :create_settings_url_function, 5, type: :string, json_name: "createSettingsUrlFunction"

  field :event_open_trigger, 10,
    type: Google.Apps.Script.Type.Calendar.CalendarExtensionPoint,
    json_name: "eventOpenTrigger"

  field :event_update_trigger, 11,
    type: Google.Apps.Script.Type.Calendar.CalendarExtensionPoint,
    json_name: "eventUpdateTrigger"

  field :current_event_access, 12,
    type: Google.Apps.Script.Type.Calendar.CalendarAddOnManifest.EventAccess,
    json_name: "currentEventAccess",
    enum: true
end

defmodule Google.Apps.Script.Type.Calendar.ConferenceSolution do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :on_create_function, 1, type: :string, json_name: "onCreateFunction", deprecated: false
  field :id, 4, type: :string, deprecated: false
  field :name, 5, type: :string, deprecated: false
  field :logo_url, 6, type: :string, json_name: "logoUrl", deprecated: false
end

defmodule Google.Apps.Script.Type.Calendar.CalendarExtensionPoint do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :run_function, 1, type: :string, json_name: "runFunction", deprecated: false
end
