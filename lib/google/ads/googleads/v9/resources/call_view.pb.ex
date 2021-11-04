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

  defstruct [
    :resource_name,
    :caller_country_code,
    :caller_area_code,
    :call_duration_seconds,
    :start_call_date_time,
    :end_call_date_time,
    :call_tracking_display_location,
    :type,
    :call_status
  ]

  field :resource_name, 1, type: :string, json_name: "resourceName"
  field :caller_country_code, 2, type: :string, json_name: "callerCountryCode"
  field :caller_area_code, 3, type: :string, json_name: "callerAreaCode"
  field :call_duration_seconds, 4, type: :int64, json_name: "callDurationSeconds"
  field :start_call_date_time, 5, type: :string, json_name: "startCallDateTime"
  field :end_call_date_time, 6, type: :string, json_name: "endCallDateTime"

  field :call_tracking_display_location, 7,
    type:
      Google.Ads.Googleads.V9.Enums.CallTrackingDisplayLocationEnum.CallTrackingDisplayLocation,
    enum: true,
    json_name: "callTrackingDisplayLocation"

  field :type, 8, type: Google.Ads.Googleads.V9.Enums.CallTypeEnum.CallType, enum: true

  field :call_status, 9,
    type: Google.Ads.Googleads.V9.Enums.GoogleVoiceCallStatusEnum.GoogleVoiceCallStatus,
    enum: true,
    json_name: "callStatus"

  def transform_module(), do: nil
end
