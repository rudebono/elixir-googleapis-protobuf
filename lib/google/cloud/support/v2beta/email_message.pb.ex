defmodule Google.Cloud.Support.V2beta.EmailMessage do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false

  field :create_time, 2,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :actor, 3, type: Google.Cloud.Support.V2beta.Actor, deprecated: false
  field :subject, 4, type: :string, deprecated: false

  field :recipient_email_addresses, 5,
    repeated: true,
    type: :string,
    json_name: "recipientEmailAddresses",
    deprecated: false

  field :cc_email_addresses, 6,
    repeated: true,
    type: :string,
    json_name: "ccEmailAddresses",
    deprecated: false

  field :body_content, 8,
    type: Google.Cloud.Support.V2beta.TextContent,
    json_name: "bodyContent",
    deprecated: false
end
