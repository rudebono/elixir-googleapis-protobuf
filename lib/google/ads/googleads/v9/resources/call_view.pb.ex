defmodule Google.Ads.Googleads.V9.Resources.CallView do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t(),
          caller_country_code: String.t(),
          caller_area_code: String.t(),
          call_duration_seconds: integer,
          start_call_date_time: String.t(),
          end_call_date_time: String.t(),
          call_tracking_display_location:
            Google.Ads.Googleads.V9.Enums.CallTrackingDisplayLocationEnum.CallTrackingDisplayLocation.t(),
          type: Google.Ads.Googleads.V9.Enums.CallTypeEnum.CallType.t(),
          call_status:
            Google.Ads.Googleads.V9.Enums.GoogleVoiceCallStatusEnum.GoogleVoiceCallStatus.t()
        }

  defstruct resource_name: "",
            caller_country_code: "",
            caller_area_code: "",
            call_duration_seconds: 0,
            start_call_date_time: "",
            end_call_date_time: "",
            call_tracking_display_location: :UNSPECIFIED,
            type: :UNSPECIFIED,
            call_status: :UNSPECIFIED

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
      Google.Ads.Googleads.V9.Enums.CallTrackingDisplayLocationEnum.CallTrackingDisplayLocation,
    json_name: "callTrackingDisplayLocation",
    enum: true,
    deprecated: false

  field :type, 8,
    type: Google.Ads.Googleads.V9.Enums.CallTypeEnum.CallType,
    enum: true,
    deprecated: false

  field :call_status, 9,
    type: Google.Ads.Googleads.V9.Enums.GoogleVoiceCallStatusEnum.GoogleVoiceCallStatus,
    json_name: "callStatus",
    enum: true,
    deprecated: false
end
