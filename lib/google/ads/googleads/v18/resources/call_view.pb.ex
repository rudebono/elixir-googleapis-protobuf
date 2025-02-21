defmodule Google.Ads.Googleads.V18.Resources.CallView do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false
  field :caller_country_code, 2, type: :string, json_name: "callerCountryCode", deprecated: false
  field :caller_area_code, 3, type: :string, json_name: "callerAreaCode", deprecated: false

  field :call_duration_seconds, 4,
    type: :int64,
    json_name: "callDurationSeconds",
    deprecated: false

  field :start_call_date_time, 5, type: :string, json_name: "startCallDateTime", deprecated: false
  field :end_call_date_time, 6, type: :string, json_name: "endCallDateTime", deprecated: false

  field :call_tracking_display_location, 7,
    type:
      Google.Ads.Googleads.V18.Enums.CallTrackingDisplayLocationEnum.CallTrackingDisplayLocation,
    json_name: "callTrackingDisplayLocation",
    enum: true,
    deprecated: false

  field :type, 8,
    type: Google.Ads.Googleads.V18.Enums.CallTypeEnum.CallType,
    enum: true,
    deprecated: false

  field :call_status, 9,
    type: Google.Ads.Googleads.V18.Enums.GoogleVoiceCallStatusEnum.GoogleVoiceCallStatus,
    json_name: "callStatus",
    enum: true,
    deprecated: false
end
