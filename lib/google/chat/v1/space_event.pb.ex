defmodule Google.Chat.V1.SpaceEvent do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  oneof :payload, 0

  field :name, 1, type: :string
  field :event_time, 3, type: Google.Protobuf.Timestamp, json_name: "eventTime"
  field :event_type, 6, type: :string, json_name: "eventType"

  field :message_created_event_data, 12,
    type: Google.Chat.V1.MessageCreatedEventData,
    json_name: "messageCreatedEventData",
    oneof: 0

  field :message_updated_event_data, 13,
    type: Google.Chat.V1.MessageUpdatedEventData,
    json_name: "messageUpdatedEventData",
    oneof: 0

  field :message_deleted_event_data, 14,
    type: Google.Chat.V1.MessageDeletedEventData,
    json_name: "messageDeletedEventData",
    oneof: 0

  field :message_batch_created_event_data, 26,
    type: Google.Chat.V1.MessageBatchCreatedEventData,
    json_name: "messageBatchCreatedEventData",
    oneof: 0

  field :message_batch_updated_event_data, 27,
    type: Google.Chat.V1.MessageBatchUpdatedEventData,
    json_name: "messageBatchUpdatedEventData",
    oneof: 0

  field :message_batch_deleted_event_data, 28,
    type: Google.Chat.V1.MessageBatchDeletedEventData,
    json_name: "messageBatchDeletedEventData",
    oneof: 0

  field :space_updated_event_data, 15,
    type: Google.Chat.V1.SpaceUpdatedEventData,
    json_name: "spaceUpdatedEventData",
    oneof: 0

  field :space_batch_updated_event_data, 29,
    type: Google.Chat.V1.SpaceBatchUpdatedEventData,
    json_name: "spaceBatchUpdatedEventData",
    oneof: 0

  field :membership_created_event_data, 17,
    type: Google.Chat.V1.MembershipCreatedEventData,
    json_name: "membershipCreatedEventData",
    oneof: 0

  field :membership_updated_event_data, 18,
    type: Google.Chat.V1.MembershipUpdatedEventData,
    json_name: "membershipUpdatedEventData",
    oneof: 0

  field :membership_deleted_event_data, 219,
    type: Google.Chat.V1.MembershipDeletedEventData,
    json_name: "membershipDeletedEventData",
    oneof: 0

  field :membership_batch_created_event_data, 31,
    type: Google.Chat.V1.MembershipBatchCreatedEventData,
    json_name: "membershipBatchCreatedEventData",
    oneof: 0

  field :membership_batch_updated_event_data, 32,
    type: Google.Chat.V1.MembershipBatchUpdatedEventData,
    json_name: "membershipBatchUpdatedEventData",
    oneof: 0

  field :membership_batch_deleted_event_data, 33,
    type: Google.Chat.V1.MembershipBatchDeletedEventData,
    json_name: "membershipBatchDeletedEventData",
    oneof: 0

  field :reaction_created_event_data, 21,
    type: Google.Chat.V1.ReactionCreatedEventData,
    json_name: "reactionCreatedEventData",
    oneof: 0

  field :reaction_deleted_event_data, 22,
    type: Google.Chat.V1.ReactionDeletedEventData,
    json_name: "reactionDeletedEventData",
    oneof: 0

  field :reaction_batch_created_event_data, 34,
    type: Google.Chat.V1.ReactionBatchCreatedEventData,
    json_name: "reactionBatchCreatedEventData",
    oneof: 0

  field :reaction_batch_deleted_event_data, 35,
    type: Google.Chat.V1.ReactionBatchDeletedEventData,
    json_name: "reactionBatchDeletedEventData",
    oneof: 0
end

defmodule Google.Chat.V1.GetSpaceEventRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Chat.V1.ListSpaceEventsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 5, type: :int32, json_name: "pageSize"
  field :page_token, 6, type: :string, json_name: "pageToken"
  field :filter, 8, type: :string, deprecated: false
end

defmodule Google.Chat.V1.ListSpaceEventsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :space_events, 1,
    repeated: true,
    type: Google.Chat.V1.SpaceEvent,
    json_name: "spaceEvents"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end