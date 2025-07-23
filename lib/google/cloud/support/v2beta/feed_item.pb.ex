defmodule Google.Cloud.Support.V2beta.FeedItem do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :event_object, 0

  field :comment, 100, type: Google.Cloud.Support.V2beta.Comment, oneof: 0, deprecated: false

  field :attachment, 101,
    type: Google.Cloud.Support.V2beta.Attachment,
    oneof: 0,
    deprecated: false

  field :email_message, 102,
    type: Google.Cloud.Support.V2beta.EmailMessage,
    json_name: "emailMessage",
    oneof: 0,
    deprecated: false

  field :deleted_attachment, 103,
    type: Google.Cloud.Support.V2beta.Attachment,
    json_name: "deletedAttachment",
    oneof: 0,
    deprecated: false

  field :event_time, 1, type: Google.Protobuf.Timestamp, json_name: "eventTime", deprecated: false
end
