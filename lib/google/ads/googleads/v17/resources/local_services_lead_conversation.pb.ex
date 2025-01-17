defmodule Google.Ads.Googleads.V17.Resources.LocalServicesLeadConversation do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false
  field :id, 2, type: :int64, deprecated: false

  field :conversation_channel, 3,
    type: Google.Ads.Googleads.V17.Enums.LocalServicesLeadConversationTypeEnum.ConversationType,
    json_name: "conversationChannel",
    enum: true,
    deprecated: false

  field :participant_type, 4,
    type: Google.Ads.Googleads.V17.Enums.LocalServicesParticipantTypeEnum.ParticipantType,
    json_name: "participantType",
    enum: true,
    deprecated: false

  field :lead, 5, type: :string, deprecated: false
  field :event_date_time, 6, type: :string, json_name: "eventDateTime", deprecated: false

  field :phone_call_details, 7,
    proto3_optional: true,
    type: Google.Ads.Googleads.V17.Resources.PhoneCallDetails,
    json_name: "phoneCallDetails",
    deprecated: false

  field :message_details, 8,
    proto3_optional: true,
    type: Google.Ads.Googleads.V17.Resources.MessageDetails,
    json_name: "messageDetails",
    deprecated: false
end

defmodule Google.Ads.Googleads.V17.Resources.PhoneCallDetails do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :call_duration_millis, 1, type: :int64, json_name: "callDurationMillis", deprecated: false
  field :call_recording_url, 2, type: :string, json_name: "callRecordingUrl", deprecated: false
end

defmodule Google.Ads.Googleads.V17.Resources.MessageDetails do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :text, 1, type: :string, deprecated: false

  field :attachment_urls, 2,
    repeated: true,
    type: :string,
    json_name: "attachmentUrls",
    deprecated: false
end
