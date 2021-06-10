defmodule Google.Ads.Googleads.V8.Resources.CallView do
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
            Google.Ads.Googleads.V8.Enums.CallTrackingDisplayLocationEnum.CallTrackingDisplayLocation.t(),
          type: Google.Ads.Googleads.V8.Enums.CallTypeEnum.CallType.t(),
          call_status:
            Google.Ads.Googleads.V8.Enums.GoogleVoiceCallStatusEnum.GoogleVoiceCallStatus.t()
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

  field :resource_name, 1, type: :string
  field :caller_country_code, 2, type: :string
  field :caller_area_code, 3, type: :string
  field :call_duration_seconds, 4, type: :int64
  field :start_call_date_time, 5, type: :string
  field :end_call_date_time, 6, type: :string

  field :call_tracking_display_location, 7,
    type:
      Google.Ads.Googleads.V8.Enums.CallTrackingDisplayLocationEnum.CallTrackingDisplayLocation,
    enum: true

  field :type, 8, type: Google.Ads.Googleads.V8.Enums.CallTypeEnum.CallType, enum: true

  field :call_status, 9,
    type: Google.Ads.Googleads.V8.Enums.GoogleVoiceCallStatusEnum.GoogleVoiceCallStatus,
    enum: true
end
